import "Turbine";
import "Turbine.UI";
import "Turbine.UI.Lotro";
import "Thurallor.Common.UI.ColorPicker";

OptionsWindow = class(Turbine.UI.Lotro.Window);
OptionsPanel = class(Turbine.UI.Control);

function OptionsWindow:Constructor(parent)
	Turbine.UI.Lotro.Window.Constructor( self );

      -- set size of window	
	self.width = 220;
	self.height = 150;
	self.windowWidth, self.windowHeight = Turbine.UI.Display:GetSize();

	self:SetPosition(self.windowWidth /2 - self.width/2,self.windowHeight/2 - self.height/2);	
	self:SetSize( self.width, self.height );
	self:SetBlendMode(Turbine.UI.BlendMode.Undefined);
	self:SetBackColor( Turbine.UI.Color(0.0,0,0,0) );
	self:SetText( "Options" );
	self:SetOpacity( 1 );
	
	self.panel = OptionsPanel(parent);
	self.panel:SetPosition(0,40);
	self.panel:SetParent(self);
   
	self:SetVisible(true); 
   
   self.loaded = true;	
end

function OptionsPanel:Constructor(parent)
    Turbine.UI.Control.Constructor(self);
     
    -- set size of window	
    self.width = 220;
    self.height = 150;
    self.windowWidth, self.windowHeight = Turbine.UI.Display:GetSize();
     
    -- create link to parent window
    self.mainWindow = parent;
    
    -- set the default window settings
    self:SetSize( self.width, self.height );
    
    -- add the option items    
    self:AddGeneralItems();

    self:SetVisible(true);
    self.loaded = true;	
 end

 function OptionsWindow:GetLoaded()
    return self.loaded;
 end

 -- function to add items to the general tab
function OptionsPanel:AddGeneralItems()

    --[[ Color selection]]
    -- label for the first bar color selection
    self.FirstBarColorLabel = Turbine.UI.Label();
    self.FirstBarColorLabel:SetSize(200,20);
    self.FirstBarColorLabel:SetPosition(20,0);
    self.FirstBarColorLabel:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleLeft);
    self.FirstBarColorLabel:SetParent(self);
    self.FirstBarColorLabel:SetText("First bar color");
    self.FirstBarColorLabel:SetVisible(true);
   
    -- 'box' for the back color selection
    self.FirstBarColorBox = Turbine.UI.Label();
    self.FirstBarColorBox:SetSize(50,20);
    self.FirstBarColorBox:SetPosition(150,0);
    self.FirstBarColorBox:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleLeft);
    self.FirstBarColorBox:SetParent(self);
    self.FirstBarColorBox:SetBackColor(Turbine.UI.Color(settings.firstBarColor.A, settings.firstBarColor.R, settings.firstBarColor.G, settings.firstBarColor.B));
    self.FirstBarColorBox:SetVisible(true);

    self.SecondBarColorLabel = Turbine.UI.Label();
    self.SecondBarColorLabel:SetSize(200,20);
    self.SecondBarColorLabel:SetPosition(20,30);
    self.SecondBarColorLabel:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleLeft);
    self.SecondBarColorLabel:SetParent(self);
    self.SecondBarColorLabel:SetText("Second bar color");
    self.SecondBarColorLabel:SetVisible(true);

    self.SecondBarColorBox = Turbine.UI.Label();
    self.SecondBarColorBox:SetSize(50,20);
    self.SecondBarColorBox:SetPosition(150,30);
    self.SecondBarColorBox:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleLeft);
    self.SecondBarColorBox:SetParent(self);
    self.SecondBarColorBox:SetBackColor(Turbine.UI.Color(settings.secondBarColor.A, settings.secondBarColor.R, settings.secondBarColor.G, settings.secondBarColor.B));
    self.SecondBarColorBox:SetVisible(true);    

    --[[ Event handlers ]]
    self.FirstBarColorBox.MouseUp = function(sender, args)
        colorPickerFirstBar = Thurallor.UI.ColorPicker(self.FirstBarColorBox:GetBackColor());
    
        colorPickerFirstBar.ColorChanged = function(picker)
            local color = picker:GetColor();
            self.FirstBarColorBox:SetBackColor(color);
        end

        colorPickerFirstBar.Accepted = function(picker)
            local color = picker:GetColor();
            settings.firstBarColor = color;
            self.FirstBarColorBox:SetBackColor(color);
            self.mainWindow:SaveSettings();
            self.mainWindow.SetupBars();
        end
    end    

    self.SecondBarColorBox.MouseUp = function(sender, args)
        colorPickerSecondBar = Thurallor.UI.ColorPicker(self.SecondBarColorBox:GetBackColor());
    
        colorPickerSecondBar.ColorChanged = function(picker)
            local color = picker:GetColor();
            self.SecondBarColorBox:SetBackColor(color);
        end

        colorPickerSecondBar.Accepted = function(picker)
            local color = picker:GetColor();
            settings.secondBarColor = color;
            self.SecondBarColorBox:SetBackColor(color);
            self.mainWindow:SaveSettings();
            self.mainWindow.SetupBars();
        end
    end 
end







