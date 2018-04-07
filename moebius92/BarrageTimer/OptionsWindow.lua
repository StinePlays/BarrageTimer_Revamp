import "Turbine.UI";
import "Turbine.UI.Lotro";

OptionsWindow = class(Turbine.UI.Lotro.Window);
OptionsPanel = class(Turbine.UI.Control);

function OptionsWindow:Constructor(parent)
	Turbine.UI.Lotro.Window.Constructor( self );

      -- set size of window	
	self.width = 500;
	self.height = 500;
	self.windowWidth, self.windowHeight = Turbine.UI.Display:GetSize();

	self:SetPosition(self.windowWidth /2 - self.width/2,self.windowHeight/2 - self.height/2);	
	self:SetSize( self.width, self.height );
	self:SetBlendMode(Turbine.UI.BlendMode.Undefined);
	self:SetBackColor( Turbine.UI.Color(0.0,0,0,0) );
	self:SetText( optionsTitleString );
	self:SetOpacity( 1 );
	
	self.panel = OptionsPanel(parent);
	self.panel:SetPosition(0,40);
	self.panel:SetParent(self);
   	
	-- have the main window close the options
   self.VisibleChanged = function(sender,args)
      if(self:IsVisible() == false) then
         if(parent ~= nil) then
            parent:CloseOptions();
         end
      end
   end
   
	self:SetVisible(true); 
   
   self.loaded = true;	
end

function OptionsPanel:Constructor(parent)
    Turbine.UI.Control.Constructor(self);
  
    --  add a check to see if we load completely
    -- self.loaded = false;
     
    -- set size of window	
     self.width = 500;
     self.height = 500;
     self.windowWidth, self.windowHeight = Turbine.UI.Display:GetSize();
     
     -- create link to parent window
     self.mainWindow = parent;
    
     -- set the default window settings
     --self:SetPosition(self.windowWidth /2 - self.width/2,self.windowHeight/2 - self.height/2);	
     self:SetSize( self.width, self.height );
     --self:SetBlendMode(Turbine.UI.BlendMode.Undefined);
     --self:SetBackColor( Turbine.UI.Color(0.0,0,0,0) );
     --self:SetText( optionsTitleString );
     --self:SetOpacity( 1 );
     
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
    -- label for the color selection
   self.BackColorLabel = Turbine.UI.Label();
   self.BackColorLabel:SetSize(300,20);
   self.BackColorLabel:SetPosition(20,172);
   self.BackColorLabel:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleLeft);
   self.BackColorLabel:SetParent(self);
   self.BackColorLabel:SetText("First Color");
   self.BackColorLabel:SetVisible(true);
   
   -- 'box' for the back color selection
   self.BackColorBox = Turbine.UI.Label();
   self.BackColorBox:SetSize(50,20);
   self.BackColorBox:SetPosition(420,170);
   self.BackColorBox:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleLeft);
   self.BackColorBox:SetParent(self);
   self.BackColorBox:SetBackColor(settings.firstColor);
   self.BackColorBox:SetVisible(true);

end