getgenv().Config = {}

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Umi Pet99 Hub", HidePremium = false, SaveConfig = false, ConfigFolder = "OrionTest"})

local Tab =
    Window:MakeTab(
    {
        Name = "Main",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    }
)
Tab:AddToggle(
    {
        Name = "Auto Map",
        Default = false,
        Callback = function(m)
            Config.Automap = m
            spawn(automap)
        end
    }
)
function AutoMap()
    if _G.Auto_Map then
      spawn(function()
          pcall(function()
            while wait(1) do
             game:GetService("VirtualInputManager"):SendKeyEvent(true, "Space", false, game)
            wait(.1)
             game:GetService("VirtualInputManager"):SendKeyEvent(false, "Space", false, game)
            end
          end)
        end)
      wait(.1)
      getgenv().Start = true
      
      local Library = require(game:GetService("ReplicatedStorage").Library)
      
      local Network = Library.Network
      local Balancing = Library.Balancing
      local Zones = Library.Directory.Zones
      
      Library.PlayerPet.CalculateSpeedMultiplier = function(...)
          return 999999999
      end
      
      while getgenv().Start do wait()
          pcall(function()
              local Zone, Zone_Info = Library["ZoneCmds"].GetMaxOwnedZone()
              local zone, info = Library["ZoneCmds"].GetNextZone()
              if zone and info then
                  if Balancing.CalcGatePrice(info) <= Library["CurrencyCmds"].Get("Coins") then
                      Network.Invoke("Zones_RequestPurchase", info.ZoneName)
                  end
              end
              if Library["MapCmds"].GetCurrentZone() ~= Zone_Info._id or not Library["MapCmds"].IsInDottedBox() then
                  if Zone_Info.ZoneFolder:FindFirstChild("INTERACT") then
                      local Max, BreakZone;
                      for i,v in pairs(Zone_Info.ZoneFolder.INTERACT.BREAK_ZONES:GetChildren()) do
                          if not Max then Max = v.Size.X * v.Size.Y * v.Size.Z; end
                          if not BreakZone then BreakZone = v end
                      
                          if Max < v.Size.X * v.Size.Y * v.Size.Z then
                              BreakZone = v
                          end
                      end
      
                      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = BreakZone.CFrame * CFrame.new(0, 10, 0)
                  else
                      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Zone_Info.ZoneFolder.PERSISTENT.Teleport.CFrame
                  end
              end
          end)
      end
      
      local GetNearestBreakable = getsenv(game:GetService("Players").LocalPlayer.PlayerScripts.Scripts.GUIs["Auto Tapper"]).GetNearestBreakable
      
      while wait() do
          pcall(function()
              local Breakable = GetNearestBreakable()
              if Breakable then
                  Network.Fire("Breakables_PlayerDealDamage", Breakable.Name)
              end
          end)
      end
    end
end