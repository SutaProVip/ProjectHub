function roll()
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
local args = {[1] = "RELEASE"}
game:GetService("ReplicatedStorage"):WaitForChild("Networking"):WaitForChild("CodesEvent"):FireServer(unpack(args))
wait(0.00001)
local args = {[1] = "DELAY"}
game:GetService("ReplicatedStorage"):WaitForChild("Networking"):WaitForChild("CodesEvent"):FireServer(unpack(args))
wait(0.00001)
local args = {[1] = "SummonTen",[2] = "Special"}
game:GetService("ReplicatedStorage"):WaitForChild("Networking"):WaitForChild("Units"):WaitForChild("SummonEvent"):FireServer(unpack(args))
wait(3)
local args = {[1] = "SummonTen",[2] = "Special"}
game:GetService("ReplicatedStorage"):WaitForChild("Networking"):WaitForChild("Units"):WaitForChild("SummonEvent"):FireServer(unpack(args))
wait(0.00001)
local args = {[1] = "Unit Collector I"}
game:GetService("ReplicatedStorage"):WaitForChild("Networking"):WaitForChild("Quests"):WaitForChild("ClaimQuest"):FireServer(unpack(args))
wait(0.0001)
local args = {[1] = "Unit Collector II"}
game:GetService("ReplicatedStorage"):WaitForChild("Networking"):WaitForChild("Quests"):WaitForChild("ClaimQuest"):FireServer(unpack(args))
wait(0.00001)
local args = {[1] = "Summoner I"}
game:GetService("ReplicatedStorage"):WaitForChild("Networking"):WaitForChild("Quests"):WaitForChild("ClaimQuest"):FireServer(unpack(args))
wait(0.00001)
local args = {[1] = "Daily Summoning I"}
game:GetService("ReplicatedStorage"):WaitForChild("Networking"):WaitForChild("Quests"):WaitForChild("ClaimQuest"):FireServer(unpack(args))
wait(0.0001)
local args = {[1] = "SummonOne",[2] = "Special"}
game:GetService("ReplicatedStorage"):WaitForChild("Networking"):WaitForChild("Units"):WaitForChild("SummonEvent"):FireServer(unpack(args))
wait(1)
local args = {[1] = "SummonOne",[2] = "Special"}
game:GetService("ReplicatedStorage"):WaitForChild("Networking"):WaitForChild("Units"):WaitForChild("SummonEvent"):FireServer(unpack(args))
wait(1)
local args = {[1] = "SummonOne",[2] = "Special"}
game:GetService("ReplicatedStorage"):WaitForChild("Networking"):WaitForChild("Units"):WaitForChild("SummonEvent"):FireServer(unpack(args))
wait(1)
local args = {[1] = "SummonOne",[2] = "Special"}
game:GetService("ReplicatedStorage"):WaitForChild("Networking"):WaitForChild("Units"):WaitForChild("SummonEvent"):FireServer(unpack(args))
wait(1)
local args = {[1] = "SummonOne",[2] = "Special"}
game:GetService("ReplicatedStorage"):WaitForChild("Networking"):WaitForChild("Units"):WaitForChild("SummonEvent"):FireServer(unpack(args))
wait(1)
local args = {[1] = "Daily Summoning I"}
game:GetService("ReplicatedStorage"):WaitForChild("Networking"):WaitForChild("Quests"):WaitForChild("ClaimQuest"):FireServer(unpack(args))
wait(0.0001)
local args = {[1] = "SummonOne",[2] = "Special"}
game:GetService("ReplicatedStorage"):WaitForChild("Networking"):WaitForChild("Units"):WaitForChild("SummonEvent"):FireServer(unpack(args))
wait(1)
local args = {[1] = "SummonOne",[2] = "Special"}
game:GetService("ReplicatedStorage"):WaitForChild("Networking"):WaitForChild("Units"):WaitForChild("SummonEvent"):FireServer(unpack(args))
wait(1)
local args = {[1] = "SummonOne",[2] = "Special"}
game:GetService("ReplicatedStorage"):WaitForChild("Networking"):WaitForChild("Units"):WaitForChild("SummonEvent"):FireServer(unpack(args))
wait(1)
end
roll()
