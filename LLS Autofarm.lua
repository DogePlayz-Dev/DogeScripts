--Main source for Lift Legends Simulator

while wait() do
    if _G.FarmEnabled == true then
            game:GetService("ReplicatedStorage").Network.Port1:FireServer("Click")
            
            --Sell Checking
            local Energy = string.split(game.Players.LocalPlayer.PlayerGui.Main.LeftFrame.EnergyFrame.AmountLabel.Text, "/")
            local MinEnergy = tonumber(Energy[1])
            local MaxEnergy = tonumber(Energy[2])
            
            if MinEnergy == MaxEnergy then
                if _G.SellEnabled == true then
                game:GetService("ReplicatedStorage").Network.Port1:FireServer("SellEnergy")
                end
            end
    end
end
