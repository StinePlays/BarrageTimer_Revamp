import "Turbine";
import "Turbine.Gameplay";
import "Turbine.UI";
import "Turbine.UI.Lotro";
import "moebius92.ActiveSkills";
import "moebius92.Handlers";
import "moebius92.BarrageTimer.OptionsWindow";

BarrageTimerWindow = class(Turbine.UI.Window);

function BarrageTimerWindow:Constructor()
	Turbine.UI.Window.Constructor(self);

	-- get the player class and race
	player = Turbine.Gameplay.LocalPlayer.GetInstance();
	playerClass = player:GetClass(); 
	self.options = nil;
	
	-- quit if the class is not a hunter                        
	if(playerClass ~= Turbine.Gameplay.Class.Hunter) then
		Turbine.Shell.WriteLine("This plugin will only work for hunters.");
		return;
	end

	self.hide = false;
	self.visible = false;
	self.dragging = false;
	self.move = false;
	self.size = 20;	

	self.settings = BarrageTimerWindowLoadSettings();

	settings.secondBarColor = Turbine.UI.Color.White;
	settings.opacityBarOne = 0.5;

	self:SetPosition(self.settings.x, self.settings.y);
	self:SetSize(self.size * 2, self.size * 5);
	self:SetBackColor(Turbine.UI.Color(0.0, 0.0, 0.0, 0.0));
	self:SetMouseVisible(self.move);
	self:SetWantsKeyEvents(true);
	self:SetVisible(true);

	self.bars = { };
	for i = 1, 2, 1 do
		self.bars[i] = { };
		for j = 1, 3, 1 do
			self.bars[i][j] = Turbine.UI.Control();
			self.bars[i][j]:SetPosition((i - 1) * self.size, 0);
			self.bars[i][j]:SetSize(self.size, self.size * 5);
			if i == 1 then
				-- self.bars[i][j]:SetBackColor(Turbine.UI.Color(0.5, 0.25 * (3 - j), 0.25 * (3 - j), 1.00));
				self.bars[i][j]:SetBackColor(Turbine.UI.Color(settings.opacityBarOne, 0.25 * (3 - j), 0.25 * (3 - j), 1.00));
			else
				self.bars[i][j]:SetBackColor(Turbine.UI.Color(0.5, 1.00, 0.25 * (3 - j), 0.25 * (3 - j)));
			end
			self.bars[i][j]:SetParent(self);
			self.bars[i][j]:SetMouseVisible(false);
		end
	end

	self.timers = { };
	self.timers[1] = { };
	self.timers[2] = { };

	self.player = Turbine.Gameplay.LocalPlayer.GetInstance();
	self.name = self.player:GetName();
	self.activeSkill = moebius92.ActiveSkills.ActiveSkill("0x7003646E");
	self.activeSkill.ResetTimeChanged = function(sender, reset) self:SkillUse(); end;
	moebius92.Handlers.AddChatHandler(function(m) self:ChatMessage(m) end, Turbine.ChatType.PlayerCombat, self.name);

	-- create a single context menu
	menu = Turbine.UI.ContextMenu(self);
	self:SetupMenu();

	self:Redraw();

end

function BarrageTimerWindow:SetupMenu()
	self.options = Turbine.UI.MenuItem("Options");
	menuItems = menu:GetItems();
	menuItems:Add(self.options);

	-- open the option window when clicked
	menuItems:Get(1).Click = function(sender, args)
		options = OptionsWindow:Constructor(self);
	end
end

function BarrageTimerWindow:SkillUse()
	self.useTime = self.activeSkill:GetResetTime() - self.activeSkill:GetCooldown();
end

function BarrageTimerWindow:ChatMessage(m)
	local j = 2;
	m = string.gsub(m, "<[^>]*>", "");
	if string.find(m, " Barrage of Light 3 ") ~= nil then
	elseif string.find(m, " Barrage of Light 2 ") ~= nil then
	elseif string.find(m, " Barrage of Light ") ~= nil then
		j = 1;
	elseif string.find(m, " Barrage of Fire 3 ") ~= nil then
	elseif string.find(m, " Barrage of Fire 2 ") ~= nil then
	elseif string.find(m, " Barrage of Fire ") ~= nil then
		j = 1;
	elseif string.find(m, " Barrage 3 ") ~= nil then
	elseif string.find(m, " Barrage 2 ") ~= nil then
	elseif string.find(m, " Barrage ") ~= nil then
		j = 1;
	else
		return;
	end

	table.insert(self.timers[j], self.useTime + 5.1);
	self:Redraw();
	self:SetWantsUpdates(true);
end

function BarrageTimerWindow:Redraw()
	local time = Turbine.Engine.GetGameTime();

	if self.move then
		for i = 1, 2, 1 do
			self.bars[i][1]:SetVisible(false);
			self.bars[i][2]:SetVisible(false);
			self.bars[i][3]:SetVisible(true);
			self.bars[i][3]:SetTop(0);
			self.bars[i][3]:SetHeight(self.size * 5);
		end
	else
		for i = 1, 2, 1 do
			local last = self.size * 5;
			for j = 1, 3, 1 do
				if self.timers[i][j] == nil then
					self.bars[i][j]:SetVisible(false);
				else
					local h = (self.size * 5) - math.floor((self.timers[i][j] - time) * 20);
					self.bars[i][j]:SetVisible(true);
					self.bars[i][j]:SetTop(h);
					self.bars[i][j]:SetHeight(last - h);
					last = h;
				end
			end
		end
	end
end

function BarrageTimerWindow:Update()
	local time = Turbine.Engine.GetGameTime();

	for i = 1, 2, 1 do
		if #self.timers[i] > 0 and self.timers[i][1] < time then
			table.remove(self.timers[i], 1);
		end
	end

	if #self.timers[1] == 0 and #self.timers[2] == 0 then
		self:SetWantsUpdates(false);
	end

	self:Redraw();
end

function BarrageTimerWindow:SetVisible(v)
	if v ~= nil then
		self.visible = v;
	end

	Turbine.UI.Window.SetVisible(self, self.visible and not self.hide);
end

function BarrageTimerWindow:IsVisible()
	return self.visible;
end

function BarrageTimerWindow:MouseDown(args)
	if args.Button == Turbine.UI.MouseButton.Left and self.move then
		self.dragStartX = args.X;
		self.dragStartY = args.Y;
		self.dragging = true;
	end
	if args.Button == Turbine.UI.MouseButton.Right then
		menu:ShowMenu();
	end
end

function BarrageTimerWindow:MouseMove(args)
	if self.dragging then
		local x, y = self:GetPosition();
		x = x + (args.X - self.dragStartX);
		y = y + (args.Y - self.dragStartY);
		self.settings.x = x;
		self.settings.y = y;
		self:SetPosition(x, y);
	end
end

function BarrageTimerWindow:MouseUp(args)
	if args.Button == Turbine.UI.MouseButton.Left then
		self:SaveSettings();
		self.dragging = false;
	end
end

function BarrageTimerWindow:KeyDown(args)
	if args.Action == 0x1000007B then
		if self.move then
			self.move = false;
			self:Redraw();
			if self.dragging then
				self:SaveSettings();
				self.dragging = false;
			end
		else
			self.move = true;
			self:Redraw();
		end
		self:SetMouseVisible(self.move);
	elseif args.Action == 0x100000B3 then
		self.hide = not self.hide;
		self:SetVisible();
	end
end

function BarrageTimerWindow:SaveSettings()
	Turbine.PluginData.Save(Turbine.DataScope.Character, "BarrageTimer", self.settings);
end

function BarrageTimerWindowLoadSettings()
	settings = Turbine.PluginData.Load(Turbine.DataScope.Character, "BarrageTimer");
	if type(settings) == "string" then
		settings = loadstring("return " .. settings .. ";")();
	end

	if type(settings) ~= "table" then
		settings = { };
	end

	if not settings.x then
		settings.x = 0;
	end

	if not settings.y then
		settings.y = 0;
	end

	if not settings.firstBarColor then
		settings.firstBarColor = Turbine.UI.Color.White;
	end

	return settings;
end
	
function plugin:Load(args)
	self.window = BarrageTimerWindow(self:GetVersion());
end
