_G.isRolling = false
function sellunit()
  if _G.autosellRare == true then
    game.StarterGui:SetCore("SendNotification", {
    Title = "Auto-sell Status",
    Text = "Auto-sell Rare is enabled",
    Duration = 5,
    })
  wait(0.1)
    local args = {[1] = "Toggle", [2] = "Rare"}
  game:GetService("ReplicatedStorage"):WaitForChild("Networking"):WaitForChild("Settings"):WaitForChild("SettingsEvent"):FireServer(unpack(args))
  end
  if _G.autosellEpic == true then
    game.StarterGui:SetCore("SendNotification", {
    Title = "Auto-sell Status",
    Text = "Auto-sell Epic is enabled",
    Duration = 5,
    })
  wait(0.1)
    local args = {[1] = "Toggle", [2] = "Epic"}
  game:GetService("ReplicatedStorage"):WaitForChild("Networking"):WaitForChild("Settings"):WaitForChild("SettingsEvent"):FireServer(unpack(args))
  end
  if _G.autosellLegend == true then
    game.StarterGui:SetCore("SendNotification", {
    Title = "Auto-sell Status",
    Text = "Auto-sell Legend is enabled",
    Duration = 5,
    })
  wait(0.1)
    local args = {[1] = "Toggle", [2] = "Legendary"}
  game:GetService("ReplicatedStorage"):WaitForChild("Networking"):WaitForChild("Settings"):WaitForChild("SettingsEvent"):FireServer(unpack(args))
  end
  if _G.autosellRare == false and _G.autosellRare == false and _G.autosellLegend == false then
    game.StarterGui:SetCore("SendNotification", {
    Title = "Auto-sell Status",
    Text = "Auto-sell is disable",
    Duration = 5,
    })
  end
end
sellunit()
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
    game.StarterGui:SetCore("SendNotification", {
    Title = "Auto-roll Status",
    Text = "Auto-roll is enabled",
    Duration = 5,
    })
    print("Auto-roll đã bật")
    roll()
  else
    game.StarterGui:SetCore("SendNotification", {
    Title = "Auto-roll Status",
    Text = "Auto-roll is disable",
    Duration = 5,
    })
    print("Auto-roll đã tắt")
  end
end
local screenGui = Instance.new("ScreenGui")
local toggleButton = Instance.new("TextButton")
local isToggled = false -- Biến để theo dõi trạng thái của nút
screenGui.Parent = game.CoreGui
toggleButton.Parent = screenGui
toggleButton.Text = "Auto-roll"
toggleButton.Size = UDim2.new(0, 50, 0, 30)
toggleButton.Position = UDim2.new(0.5, -100, 0.9, -25)
-- Màu ban đầu (trạng thái tắt)
toggleButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0) -- Đỏ
toggleButton.MouseButton1Click:Connect(function()
  isToggled = not isToggled -- Đổi trạng thái khi nút được ấn
if isToggled then
  -- Nếu trạng thái bật
  toggleButton.Text = "Auto-roll On"
  toggleButton.BackgroundColor3 = Color3.fromRGB(0, 255, 0) -- Xanh lục
else
  -- Nếu trạng thái tắt
  toggleButton.Text = "Auto-roll Off"
  toggleButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0) -- Đỏ
 end
end)
