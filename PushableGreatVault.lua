-- Author: Nerino1
-- Create Date : 04/06/2021
-- Version 1.0

local f=CreateFrame("frame");
f:RegisterEvent("PLAYER_LOGIN");

local function eventhandler(self,event)
	if event == "PLAYER_LOGIN" then
		if UnitLevel("player") <= 59 then
			do return end
		end
		DEFAULT_CHAT_FRAME:AddMessage("PushableGreatVault: Loaded");
		PushableGreatVault()
	end
end

function PushableGreatVault()
	UIPanelWindows["WeeklyRewardsFrame"] = {area = "left", pushable = 2};
	-- UIPanelWindows["WeeklyRewardsFrame"] = {allowOtherPanels = 1};

end

f:SetScript("OnEvent",eventhandler);
