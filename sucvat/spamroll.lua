_G.isRolling = false
function redeemcode()
  local args = {[1] = "Interact", [2] = {[1] = "StarterUnitDialogue", [2] = 1, [3] = "Okay!"}}
game:GetService("ReplicatedStorage"):WaitForChild("Networking"):WaitForChild("State"):WaitForChild("DialogueEvent"):FireServer(unpack(args))
wait(0.1)
local args = {[1] = "UpdateStatus", [2] = 2}
game:GetService("ReplicatedStorage"):WaitForChild("Networking"):WaitForChild("MatchStatusEvent"):FireServer(unpack(args))
wait(0.0001)
local args = {[1] = "Interact",[2] = {[1] = "StarterUnitDialogue",[2] = 2,[3] = "Yeah!"}}
game:GetService("ReplicatedStorage"):WaitForChild("Networking"):WaitForChild("State"):WaitForChild("DialogueEvent"):FireServer(unpack(args))
wait(0.00001)
local args = {[1] = "Select",[2] = "Luffo"}
game:GetService("ReplicatedStorage"):WaitForChild("Networking"):WaitForChild("Units"):WaitForChild("UnitSelectionEvent"):FireServer(unpack(args))
wait(0.0001)
  local args = {[1] = "Toggle", [2] = "SkipSummonAnimation"}
game:GetService("ReplicatedStorage"):WaitForChild("Networking"):WaitForChild("Settings"):WaitForChild("SettingsEvent"):FireServer(unpack(args))
wait(0.0001)
local args = {[1] = "10MVISITS"}
game:GetService("ReplicatedStorage"):WaitForChild("Networking"):WaitForChild("CodesEvent"):FireServer(unpack(args))
wait(0.00001)
local args = {[1] = "25MVISITS"}
game:GetService("ReplicatedStorage"):WaitForChild("Networking"):WaitForChild("CodesEvent"):FireServer(unpack(args))
wait(0.00001)
local args = {[1] = "400KLIKES"}
game:GetService("ReplicatedStorage"):WaitForChild("Networking"):WaitForChild("CodesEvent"):FireServer(unpack(args))
wait(0.00001)
local args = {[1] = "300KLIKES"}
game:GetService("ReplicatedStorage"):WaitForChild("Networking"):WaitForChild("CodesEvent"):FireServer(unpack(args))
wait(0.00001)
local args = {[1] = "200KLIKES"}
game:GetService("ReplicatedStorage"):WaitForChild("Networking"):WaitForChild("CodesEvent"):FireServer(unpack(args))
wait(0.00001)
local args = {[1] = "100KLIKES"}
game:GetService("ReplicatedStorage"):WaitForChild("Networking"):WaitForChild("CodesEvent"):FireServer(unpack(args))
wait(0.00001)
local args = {[1] = "10KLIKES"}
game:GetService("ReplicatedStorage"):WaitForChild("Networking"):WaitForChild("CodesEvent"):FireServer(unpack(args))
wait(0.00001)
local args = {[1] = "RELEASE"}
game:GetService("ReplicatedStorage"):WaitForChild("Networking"):WaitForChild("CodesEvent"):FireServer(unpack(args))
wait(0.00001)
local args = {[1] = "DELAY"}
game:GetService("ReplicatedStorage"):WaitForChild("Networking"):WaitForChild("CodesEvent"):FireServer(unpack(args))
wait(0.00001)
local args = {[1] = "300KPLAYERS"}
game:GetService("ReplicatedStorage"):WaitForChild("Networking"):WaitForChild("CodesEvent"):FireServer(unpack(args))
wait(0.00001)
local args = {[1] = "100MVISITS"}
game:GetService("ReplicatedStorage"):WaitForChild("Networking"):WaitForChild("CodesEvent"):FireServer(unpack(args))
wait(0.00001)
local args = {[1] = "800KLIKES"}
game:GetService("ReplicatedStorage"):WaitForChild("Networking"):WaitForChild("CodesEvent"):FireServer(unpack(args))
wait(0.00001)
end
function toggleCode()
  if _G.redeemAllCode == true then
    redeemcode()
    game.StarterGui:SetCore("SendNotification", {
    Title = "Redeem-Code Status",
    Text = "Redeem-Code is enabled",
    Duration = 5,
    })
  else
    game.StarterGui:SetCore("SendNotification", {
    Title = "Redeem-Code Status",
    Text = "Redeem-Code is disable",
    Duration = 5,
    })
  end
end
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
toggleButton.Size = UDim2.new(0, 200, 0, 50)
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
toggleRoll()
end)
