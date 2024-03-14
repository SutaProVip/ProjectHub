if game.PlaceId == 7449423635 then
        if _G.Team == Pirates then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam","Pirates")
        elseif _G.Team == Marines then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam","Marines")
        end
end
        
-- Create a ScreenGui to hold the black screen
local screenGui = Instance.new("ScreenGui")
screenGui.Parent = game.Players.LocalPlayer.PlayerGui

-- Create an ImageLabel to cover the screen
local imageLabel = Instance.new("ImageLabel")
imageLabel.Size = UDim2.new(1, 0, 1, 0)
imageLabel.Position = UDim2.new(0, 0, 0, 0)
imageLabel.BackgroundColor3 = Color3.new(0, 0, 0) -- Set the background color to black
imageLabel.Parent = screenGui
task.spawn(function()
        require(game.ReplicatedStorage.Notification).new("<Color=Red> Welcome To Boost Fps <Color=/>"):Display()
end)
task.spawn(function()
        require(game.ReplicatedStorage.Notification).new("<Color=Yellow> Boost Fps For Farm Được Code Bởi @ultimate.umi <Color=/>"):Display()
end)
task.spawn(function()
        for i,v in next, workspace:GetDescendants() do
            pcall(function()
                v.Transparency = 1
            end)
        end
        for i,v in next, getnilinstances() do
            pcall(function()
                v.Transparency = 1
                for i1,v1 in next, v:GetDescendants() do
                    v1.Transparency = 1
                end
            end)
        end
        a = workspace
        a.DescendantAdded:Connect(function(v)
            pcall(function()
                v.Transparency = 1
            end)
        end)
end)
task.spawn(function()
        game:GetService("RunService"):Set3dRenderingEnabled(false)
end)
