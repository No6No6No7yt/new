local AutoParryHelper = {}
local Players = game:GetService("Players")
local localPlayer = Players.LocalPlayer

function AutoParryHelper.FindTargetBall()
    for _, ball in pairs(workspace:WaitForChild("Balls"):GetChildren()) do
        if ball:IsA("BasePart") and ball:GetAttribute("realBall") then
            return ball
        end
    end
end

function AutoParryHelper.IsPlayerTarget(ball)
    return ball:GetAttribute("target") == localPlayer.Name
end

return AutoParryHelper
