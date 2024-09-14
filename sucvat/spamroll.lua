_G.isRolling = false
function roll()
  while _G.isRolling do
    if _G.autorollx10 == true then
      local args = {[1] = "SummonTen",[2] = "Special"}
      game:GetService("ReplicatedStorage"):WaitForChild("Networking"):WaitForChild("Units"):WaitForChild("SummonEvent"):FireServer(unpack(args))
      wait(0.3)
    else
      local args = {[1] = "SummonOne",[2] = "Special"}
      game:GetService("ReplicatedStorage"):WaitForChild("Networking"):WaitForChild("Units"):WaitForChild("SummonEvent"):FireServer(unpack(args))
      wait(0.3)
    end
  end
end
function toggleRoll()
  _G.isRolling = not _G.isRolling
  if _G.isRolling then
    print("Auto-roll đã bật")
    roll()
  else
    print("Auto-roll đã tắt")
  end
end
local screenGui = Instance.new("ScreenGui")
local toggleButton = Instance.new("TextButton")
screenGui.Parent = game.CoreGui
toggleButton.Parent = screenGui
toggleButton.Text = "Toggle Roll"
toggleButton.Size = UDim2.new(0, 200, 0, 50)
toggleButton.Position = UDim2.new(0.5, -100, 0.9, -25)
toggleButton.MouseButton1Click:Connect(function()
  toggleRoll()
end)
