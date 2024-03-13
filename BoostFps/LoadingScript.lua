spawn(function()
        require(game.ReplicatedStorage.Notification).new("<Color=Red> Boost Fps For Farm Được Code Bởi @ultimate.umi <Color=/>"):Display()
end)
task.spawn(function()
        require(game.ReplicatedStorage.Notification).new("<Color=Yellow> Welcome To Script Boost Fps <Color=/>"):Display()
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
