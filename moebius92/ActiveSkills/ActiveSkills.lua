import "Turbine";
import "moebius92.Handlers";
import "moebius92.SkillData";

local modeK = { __mode = "k" };

local tskills = Turbine.Gameplay.LocalPlayer:GetInstance():GetTrainedSkills();

local shortcutIndex = { };

local function addShortcutIndex(shortcut)
	if shortcutIndex[shortcut] == nil then
		shortcutIndex[shortcut] = { };
		shortcutIndex[shortcut].m92ActiveSkills = { };
		setmetatable(shortcutIndex[shortcut].m92ActiveSkills, modeK);
	end
end

local trbActiveSkills = { };

local m92TrainedSkills = { };
setmetatable(m92TrainedSkills, modeK);

local m92ActiveSkills = { };
setmetatable(m92ActiveSkills, modeK);

for i = 1, tskills:GetCount(), 1 do
	local askill = tskills:GetItem(i);
	local shortcut = askill:GetSkillInfo():GetShortcutData();

	if shortcut ~= nil then
		addShortcutIndex(shortcut);
		shortcutIndex[shortcut].trbActiveSkill = askill;

		trbActiveSkills[askill] = { };
		trbActiveSkills[askill].shortcut = shortcut;
		trbActiveSkills[askill].handles = { };
	end
end

local function serializeState(state)
	local t = { };
	local f = { };

	if state == nil then
		for shortcut, v in pairs(shortcutIndex) do
			if v.trbActiveSkill ~= nil then
				table.insert(t, shortcut);
			end
		end
	else
		for shortcut, v in pairs(state) do
			if v then
				table.insert(t, shortcut);
			else
				table.insert(f, shortcut);
			end
		end
	end

	table.sort(t);
	table.sort(f);

	return table.concat(t, ",") .. "/" .. table.concat(f, ",");
end

local prevState = serializeState(nil);

local function callMember(object, func, arg)
	if func ~= nil then
		if type(func) == "table" then
			local mt = getmetatable(func);

			if mt.__call ~= nil then
				func(object, arg);
			else
				for _, f in ipairs(func) do
					f(object, arg);
				end
			end
		elseif type(func) == "function" then
			func(object, arg);
		end
	end
end

local changedCooldownShortcuts = { };
local changedUsableShortcuts = { };

local tickUpdate = false;
tickWindow = Turbine.UI.Window();
function tickWindow:Update()
	if tickUpdate then
		local globalState = serializeState(nil);

		for object, members in pairs(m92TrainedSkills) do
			repeat
				local t = { };

				if members.shortcuts == nil then
					if globalState == prevState then
						break;
					end

					for shortcut, v in pairs(shortcutIndex) do
						if v.trbActiveSkill ~= nil then
							t[shortcut] = true;
						end
					end
				else
					local localState = serializeState(members.shortcuts);

					if localState == members.prevState then
						break;
					end
					members.prevState = localState;

					for shortcut, state in pairs(members.shortcuts) do
						t[shortcut] = state;
					end
				end

				callMember(object, object.SkillsChanged, t);
			until true;
		end

		prevState = globalState;
		tickUpdate = false;
	end

	for shortcut, old in pairs(changedCooldownShortcuts) do
		local cur = shortcutIndex[shortcut].trbActiveSkill:GetCooldown();

		if cur ~= old then
			changedCooldownShortcuts[shortcut] = cur;
			for object, members in pairs(shortcutIndex[shortcut].m92ActiveSkills) do
				callMember(object, members.CooldownChanged, cur);
			end
		end
	end

	for shortcut, old in pairs(changedUsableShortcuts) do
		local cur = shortcutIndex[shortcut].trbActiveSkill:IsUsable();

		if cur ~= old then
			changedUsableShortcuts[shortcut] = cur;
			for object, members in pairs(shortcutIndex[shortcut].m92ActiveSkills) do
				callMember(object, members.UsableChanged, cur);
			end
		end
	end
end

tickWindow:SetVisible(false);
tickWindow:SetWantsUpdates(true);

local m92ActiveSkillEvents = { ["ResetTimeChanged"] = true, ["ActiveChanged"] = true, ["UsableChanged"] = true, ["CooldownChanged"] = true };

local function trbResetTimeChanged(self, args)
	local shortcut = trbActiveSkills[self].shortcut;
	local resetTime = self:GetResetTime();

	for object, members in pairs(shortcutIndex[shortcut].m92ActiveSkills) do
		callMember(object, members.ResetTimeChanged, resetTime);
	end
end

local function setShortcutEvents(shortcut)
	for event in pairs(m92ActiveSkillEvents) do
		m92ActiveSkillEvents[event] = false;
	end

	for _, members in pairs(shortcutIndex[shortcut].m92ActiveSkills) do
		for event in pairs(m92ActiveSkillEvents) do
			if members[event] ~= nil then
				m92ActiveSkillEvents[event] = true;
			end
		end
	end

	local askill = shortcutIndex[shortcut].trbActiveSkill;
	if askill ~= nil then
		if m92ActiveSkillEvents.ResetTimeChanged then
			if trbActiveSkills[askill].handles.ResetTimeChanged == nil then
				trbActiveSkills[askill].handles.ResetTimeChanged = moebius92.Handlers.AddEventHandler(askill, "ResetTimeChanged", trbResetTimeChanged);
			end
		else
			if trbActiveSkills[askill].handles.ResetTimeChanged ~= nil then
				moebius92.Handlers.RemoveEventHandler(askill, "ResetTimeChanged", trbActiveSkills[askill].handles.ResetTimeChanged);
				trbActiveSkills[askill].handles.ResetTimeChanged = nil;
			end
		end

		if m92ActiveSkillEvents.UsableChanged then
			changedUsableShortcuts[shortcut] = askill:IsUsable();
		else
			changedUsableShortcuts[shortcut] = nil;
		end

		if m92ActiveSkillEvents.CooldownChanged then
			changedCooldownShortcuts[shortcut] = askill:GetCooldown();
		else
			changedCooldownShortcuts[shortcut] = nil;
		end
	else
		changedUsableShortcuts[shortcut] = nil;
		changedCooldownShortcuts[shortcut] = nil;
	end
end

moebius92.Handlers.AddEventHandler(tskills, "SkillAdded",
	function (sender, args)
		local shortcut = args.Skill:GetSkillInfo():GetShortcutData();

		if shortcut ~= nil then
			addShortcutIndex(shortcut);
			shortcutIndex[shortcut].trbActiveSkill = args.Skill;

			trbActiveSkills[args.Skill] = { };
			trbActiveSkills[args.Skill].shortcut = shortcut;
			trbActiveSkills[args.Skill].handles = { };

			for object, members in pairs(m92TrainedSkills) do
				repeat
					if members.shortcuts == nil then
					elseif members.shortcuts[shortcut] ~= nil then
						members.shortcuts[shortcut] = true;
					else
						break;
					end

					callMember(object, object.SkillAdded, shortcut);
				until true;
			end

			for object, members in pairs(shortcutIndex[shortcut].m92ActiveSkills) do
				callMember(object, members.ActiveChanged, true);
			end

			setShortcutEvents(shortcut);
			tickUpdate = true;
		end
	end
);

moebius92.Handlers.AddEventHandler(tskills, "SkillRemoved", 
	function (sender, args)
		if trbActiveSkills[args.Skill] ~= nil then
			local shortcut = trbActiveSkills[args.Skill].shortcut;

			for object, members in pairs(shortcutIndex[shortcut].m92ActiveSkills) do
				callMember(object, members.ActiveChanged, false);
			end

			for event, handle in pairs(trbActiveSkills[args.Skill].handles) do
				moebius92.Handlers.RemoveEventHandler(args.Skill, event, handle);
			end

			for object, members in pairs(m92TrainedSkills) do
				repeat
					if members.shortcuts == nil then
					elseif members.shortcuts[shortcut] ~= nil then
						members.shortcuts[shortcut] = false;
					else
						break;
					end

					callMember(object, object.SkillRemoved, shortcut);
				until true;
			end

			shortcutIndex[shortcut].trbActiveSkill = nil;

			trbActiveSkills[args.Skill] = nil;

			setShortcutEvents(shortcut);
			tickUpdate = true;
		end
	end
);

function GetTrainedSkills()
	local t = { };
	for shortcut, members in pairs(shortcutIndex) do
		if members.trbActiveSkill ~= nil then
			t[shortcut] = members.trbActiveSkill;
		end
	end

	return t;
end

TrainedSkills = class();
-- Events: SkillAdded, SkillRemoved, SkillsChanged

function TrainedSkills:Constructor()
	m92TrainedSkills[self] = { };
	m92TrainedSkills[self].shortcuts = { };
	m92TrainedSkills[self].prevState = "";
end

function TrainedSkills:GetShortcuts()
	local t = { };

	if m92TrainedSkills[self].shortcuts == nil then
		for shortcut, v in pairs(shortcutIndex) do
			if v.trbActiveSkill ~= nil then
				t[shortcut] = true;
			end
		end
	else
		for shortcut, active in pairs(m92TrainedSkills[self].shortcuts) do
			t[shortcut] = active;
		end
	end

	return t;
end

function TrainedSkills:SetShortcuts(shortcuts)
	if shortcuts == nil then
		m92TrainedSkills[self].shortcuts = nil;
	else
		m92TrainedSkills[self].shortcuts = { };
		for _, shortcut in ipairs(shortcuts) do
			m92TrainedSkills[self].shortcuts[shortcut] = (shortcutIndex[shortcut] ~= nil and shortcutIndex[shortcut].trbActiveSkill ~= nil);
		end
	end

	m92TrainedSkills[self].prevState = serializeState(m92TrainedSkills[self].shortcuts);
end

ActiveSkill = class();

local function m92ActiveSkillIndex(t, k)
	if m92ActiveSkillEvents[k] ~= nil then
		return m92ActiveSkills[t][k];
	end
	return ActiveSkill[k];
end;
local function m92ActiveSkillNewindex(t, k, v)
	if m92ActiveSkillEvents[k] ~= nil then
		m92ActiveSkills[t][k] = v;
		setShortcutEvents(m92ActiveSkills[t].shortcut);
	else
		rawset(t, k, v);
	end
end;

function ActiveSkill:Constructor(shortcut)
	m92ActiveSkills[self] = { };
	m92ActiveSkills[self].shortcut = shortcut;

	addShortcutIndex(shortcut);
	shortcutIndex[shortcut].m92ActiveSkills[self] = m92ActiveSkills[self];

	m92ActiveSkills[self].gcUserdata = newproxy(true);
	local mt = getmetatable(m92ActiveSkills[self].gcUserdata);
	mt.__gc = function()
		setShortcutEvents(shortcut);
	end;

	mt = getmetatable(self);
	mt.__index = m92ActiveSkillIndex;
	mt.__newindex = m92ActiveSkillNewindex;
end

function ActiveSkill:GetShortcut()
	return m92ActiveSkills[self].shortcut;
end

function ActiveSkill:GetBaseCooldown()
	local shortcut = m92ActiveSkills[self].shortcut;
	if shortcutIndex[shortcut] == nil or shortcutIndex[shortcut].trbActiveSkill == nil then
		return nil;
	end
	return shortcutIndex[shortcut].trbActiveSkill:GetBaseCooldown();
end

function ActiveSkill:GetCooldown()
	local shortcut = m92ActiveSkills[self].shortcut;
	if shortcutIndex[shortcut] == nil or shortcutIndex[shortcut].trbActiveSkill == nil then
		return nil;
	end
	return shortcutIndex[shortcut].trbActiveSkill:GetCooldown();
end

function ActiveSkill:GetResetTime()
	local shortcut = m92ActiveSkills[self].shortcut;
	if shortcutIndex[shortcut] == nil or shortcutIndex[shortcut].trbActiveSkill == nil then
		return nil;
	end
	return shortcutIndex[shortcut].trbActiveSkill:GetResetTime();
end

function ActiveSkill:GetSkillInfo()
	local shortcut = m92ActiveSkills[self].shortcut;
	if shortcutIndex[shortcut] == nil or shortcutIndex[shortcut].trbActiveSkill == nil then
		return nil;
	end
	return shortcutIndex[shortcut].trbActiveSkill:GetSkillInfo();
end

function ActiveSkill:IsUsable()
	local shortcut = m92ActiveSkills[self].shortcut;
	if shortcutIndex[shortcut] == nil or shortcutIndex[shortcut].trbActiveSkill == nil then
		return nil;
	end
	return shortcutIndex[shortcut].trbActiveSkill:IsUsable();
end

function ActiveSkill:IsActive()
	local shortcut = m92ActiveSkills[self].shortcut;
	if shortcutIndex[shortcut] == nil or shortcutIndex[shortcut].trbActiveSkill == nil then
		return false;
	end
	return true;
end