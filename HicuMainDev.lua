print("Loading Script")
game.StarterGui:SetCore(
"SendNotification",
{
   Title = "Hiru Hub",
   Text = "Loading",
   Duration = 5
})
repeat
    wait()
until game:IsLoaded()
if game.PlaceId == 2753915549 then
    World1 = true
elseif game.PlaceId == 4442272183 then
    World2 = true
elseif game.PlaceId == 7449423635 then
    World3 = true
else
    game.Players.LocalPlayer:Kick("Unsupported Game")   
end
print("--[[Join Team]]--")
repeat
local ChooseTeam = game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("ChooseTeam", true)
local UIController = game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("UIController", true)
if UIController and ChooseTeam then
    if ChooseTeam.Visible then
        for i, v in pairs(getgc()) do
            if type(v) == "function" and getfenv(v).script == UIController then
                local constant = getconstants(v)
                pcall(function()
                    if (constant[1] == "Pirates" or constant[1] == "Marines") and #constant == 1 then
                        local teamToSelect = getgenv().Team or "Pirates"
                        if constant[1] == teamToSelect then
                            v(teamToSelect)
                        end
                    end
                end)
            end
        end
    end
end
wait(1)
until game.Players.LocalPlayer.Team
print("function FPSBooster")
function FPSBooster()
    decalsyeeted = true
    g = game
    w = g.Workspace
    l = g.Lighting
    t = w.Terrain
    sethiddenproperty(l, "Technology", Enum.Technology.Compatibility)
    sethiddenproperty(t, "Decoration", false)
    t.WaterWaveSize = 0
    t.WaterWaveSpeed = 0
    t.WaterReflectance = 0
    t.WaterTransparency = 0
    l.GlobalShadows = false
    l.FogEnd = 9e9
    l.Brightness = 0
    settings().Rendering.QualityLevel = Enum.QualityLevel.Level01
    for _, v in pairs(g:GetDescendants()) do
        if v:IsA("Part") or v:IsA("Union") or v:IsA("CornerWedgePart") or v:IsA("TrussPart") then
            v.Material = Enum.Material.Plastic
            v.Reflectance = 0
        elseif v:IsA("Decal") or v:IsA("Texture") and decalsyeeted then
            v.Transparency = 1
        elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
            v.Lifetime = NumberRange.new(0)
        elseif v:IsA("Explosion") then
            v.BlastPressure = 1
            v.BlastRadius = 1
        elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") or v:IsA("Sparkles") then
            v.Enabled = false
        elseif v:IsA("MeshPart") then
            v.Material = Enum.Material.Plastic
            v.Reflectance = 0
            v.TextureID = 10385902758728957
        end
    end
    for _, e in pairs(l:GetChildren()) do
        if e:IsA("BlurEffect") or e:IsA("SunRaysEffect") or e:IsA("ColorCorrectionEffect") or e:IsA("BloomEffect") or e:IsA("DepthOfFieldEffect") then
            e.Enabled = false
        end
    end
end
print("getgenv BoostFps")
if getgenv().BoostFps then
    FPSBooster()
end
print("getgenv AntiCrash")
if getgenv().AntiCrash then
    print("anti crash true")
    else
    print("anti crash false")
end
repeat
    wait()
until game.Players.LocalPlayer.Character
function CheckQuest() 
    MyLevel = game:GetService("Players").LocalPlayer.Data.Level.Value
    if World1 then
        if MyLevel == 1 or MyLevel <= 9 then
            Mon = "Bandit"
            LevelQuest = 1
            NameQuest = "BanditQuest1"
            NameMon = "Bandit"
            CFrameQuest = CFrame.new(1059.37195, 15.4495068, 1550.4231, 0.939700544, -0, -0.341998369, 0, 1, -0, 0.341998369, 0, 0.939700544)
            CFrameMon = CFrame.new(1045.962646484375, 27.00250816345215, 1560.8203125)
        elseif MyLevel == 10 or MyLevel <= 14 then
            Mon = "Monkey"
            LevelQuest = 1
            NameQuest = "JungleQuest"
            NameMon = "Monkey"
            CFrameQuest = CFrame.new(-1598.08911, 35.5501175, 153.377838, 0, 0, 1, 0, 1, -0, -1, 0, 0)
            CFrameMon = CFrame.new(-1448.51806640625, 67.85301208496094, 11.46579647064209)
        elseif MyLevel == 15 or MyLevel <= 29 then
            Mon = "Gorilla"
            LevelQuest = 2
            NameQuest = "JungleQuest"
            NameMon = "Gorilla"
            CFrameQuest = CFrame.new(-1598.08911, 35.5501175, 153.377838, 0, 0, 1, 0, 1, -0, -1, 0, 0)
            CFrameMon = CFrame.new(-1129.8836669921875, 40.46354675292969, -525.4237060546875)
        elseif MyLevel == 30 or MyLevel <= 39 then
            Mon = "Pirate"
            LevelQuest = 1
            NameQuest = "BuggyQuest1"
            NameMon = "Pirate"
            CFrameQuest = CFrame.new(-1141.07483, 4.10001802, 3831.5498, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
            CFrameMon = CFrame.new(-1103.513427734375, 13.752052307128906, 3896.091064453125)
        elseif MyLevel == 40 or MyLevel <= 59 then
            Mon = "Brute"
            LevelQuest = 2
            NameQuest = "BuggyQuest1"
            NameMon = "Brute"
            CFrameQuest = CFrame.new(-1141.07483, 4.10001802, 3831.5498, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
            CFrameMon = CFrame.new(-1140.083740234375, 14.809885025024414, 4322.92138671875)
        elseif MyLevel == 60 or MyLevel <= 74 then
            Mon = "Desert Bandit"
            LevelQuest = 1
            NameQuest = "DesertQuest"
            NameMon = "Desert Bandit"
            CFrameQuest = CFrame.new(894.488647, 5.14000702, 4392.43359, 0.819155693, -0, -0.573571265, 0, 1, -0, 0.573571265, 0, 0.819155693)
            CFrameMon = CFrame.new(924.7998046875, 6.44867467880249, 4481.5859375)
        elseif MyLevel == 75 or MyLevel <= 89 then
            Mon = "Desert Officer"
            LevelQuest = 2
            NameQuest = "DesertQuest"
            NameMon = "Desert Officer"
            CFrameQuest = CFrame.new(894.488647, 5.14000702, 4392.43359, 0.819155693, -0, -0.573571265, 0, 1, -0, 0.573571265, 0, 0.819155693)
            CFrameMon = CFrame.new(1608.2822265625, 8.614224433898926, 4371.00732421875)
        elseif MyLevel == 90 or MyLevel <= 99 then
            Mon = "Snow Bandit"
            LevelQuest = 1
            NameQuest = "SnowQuest"
            NameMon = "Snow Bandit"
            CFrameQuest = CFrame.new(1389.74451, 88.1519318, -1298.90796, -0.342042685, 0, 0.939684391, 0, 1, 0, -0.939684391, 0, -0.342042685)
            CFrameMon = CFrame.new(1354.347900390625, 87.27277374267578, -1393.946533203125)
        elseif MyLevel == 100 or MyLevel <= 119 then
            Mon = "Snowman"
            LevelQuest = 2
            NameQuest = "SnowQuest"
            NameMon = "Snowman"
            CFrameQuest = CFrame.new(1389.74451, 88.1519318, -1298.90796, -0.342042685, 0, 0.939684391, 0, 1, 0, -0.939684391, 0, -0.342042685)
            CFrameMon = CFrame.new(1201.6412353515625, 144.57958984375, -1550.0670166015625)
        elseif MyLevel == 120 or MyLevel <= 149 then
            Mon = "Chief Petty Officer"
            LevelQuest = 1
            NameQuest = "MarineQuest2"
            NameMon = "Chief Petty Officer"
            CFrameQuest = CFrame.new(-5039.58643, 27.3500385, 4324.68018, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            CFrameMon = CFrame.new(-4881.23095703125, 22.65204429626465, 4273.75244140625)
        elseif MyLevel == 150 or MyLevel <= 174 then
            Mon = "Sky Bandit"
            LevelQuest = 1
            NameQuest = "SkyQuest"
            NameMon = "Sky Bandit"
            CFrameQuest = CFrame.new(-4839.53027, 716.368591, -2619.44165, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
            CFrameMon = CFrame.new(-4953.20703125, 295.74420166015625, -2899.22900390625)
        elseif MyLevel == 175 or MyLevel <= 189 then
            Mon = "Dark Master"
            LevelQuest = 2
            NameQuest = "SkyQuest"
            NameMon = "Dark Master"
            CFrameQuest = CFrame.new(-4839.53027, 716.368591, -2619.44165, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
            CFrameMon = CFrame.new(-5259.8447265625, 391.3976745605469, -2229.035400390625)
        elseif MyLevel == 190 or MyLevel <= 209 then
            Mon = "Prisoner"
            LevelQuest = 1
            NameQuest = "PrisonerQuest"
            NameMon = "Prisoner"
            CFrameQuest = CFrame.new(5308.93115, 1.65517521, 475.120514, -0.0894274712, -5.00292918e-09, -0.995993316, 1.60817859e-09, 1, -5.16744869e-09, 0.995993316, -2.06384709e-09, -0.0894274712)
            CFrameMon = CFrame.new(5098.9736328125, -0.3204058110713959, 474.2373352050781)
        elseif MyLevel == 210 or MyLevel <= 249 then
            Mon = "Dangerous Prisoner"
            LevelQuest = 2
            NameQuest = "PrisonerQuest"
            NameMon = "Dangerous Prisoner"
            CFrameQuest = CFrame.new(5308.93115, 1.65517521, 475.120514, -0.0894274712, -5.00292918e-09, -0.995993316, 1.60817859e-09, 1, -5.16744869e-09, 0.995993316, -2.06384709e-09, -0.0894274712)
            CFrameMon = CFrame.new(5654.5634765625, 15.633401870727539, 866.2991943359375)
        elseif MyLevel == 250 or MyLevel <= 274 then
            Mon = "Toga Warrior"
            LevelQuest = 1
            NameQuest = "ColosseumQuest"
            NameMon = "Toga Warrior"
            CFrameQuest = CFrame.new(-1580.04663, 6.35000277, -2986.47534, -0.515037298, 0, -0.857167721, 0, 1, 0, 0.857167721, 0, -0.515037298)
            CFrameMon = CFrame.new(-1820.21484375, 51.68385696411133, -2740.6650390625)
        elseif MyLevel == 275 or MyLevel <= 299 then
            Mon = "Gladiator"
            LevelQuest = 2
            NameQuest = "ColosseumQuest"
            NameMon = "Gladiator"
            CFrameQuest = CFrame.new(-1580.04663, 6.35000277, -2986.47534, -0.515037298, 0, -0.857167721, 0, 1, 0, 0.857167721, 0, -0.515037298)
            CFrameMon = CFrame.new(-1292.838134765625, 56.380882263183594, -3339.031494140625)
        elseif MyLevel == 300 or MyLevel <= 324 then
            Mon = "Military Soldier"
            LevelQuest = 1
            NameQuest = "MagmaQuest"
            NameMon = "Military Soldier"
            CFrameQuest = CFrame.new(-5313.37012, 10.9500084, 8515.29395, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469)
            CFrameMon = CFrame.new(-5411.16455078125, 11.081554412841797, 8454.29296875)
        elseif MyLevel == 325 or MyLevel <= 374 then
            Mon = "Military Spy"
            LevelQuest = 2
            NameQuest = "MagmaQuest"
            NameMon = "Military Spy"
            CFrameQuest = CFrame.new(-5313.37012, 10.9500084, 8515.29395, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469)
            CFrameMon = CFrame.new(-5802.8681640625, 86.26241302490234, 8828.859375)
        elseif MyLevel == 375 or MyLevel <= 399 then
            Mon = "Fishman Warrior"
            LevelQuest = 1
            NameQuest = "FishmanQuest"
            NameMon = "Fishman Warrior"
            CFrameQuest = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
            CFrameMon = CFrame.new(60878.30078125, 18.482830047607422, 1543.7574462890625)
            if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
            end
        elseif MyLevel == 400 or MyLevel <= 449 then
            Mon = "Fishman Commando"
            LevelQuest = 2
            NameQuest = "FishmanQuest"
            NameMon = "Fishman Commando"
            CFrameQuest = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
            CFrameMon = CFrame.new(61922.6328125, 18.482830047607422, 1493.934326171875)
            if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
            end
        elseif MyLevel == 450 or MyLevel <= 474 then
            Mon = "God's Guard"
            LevelQuest = 1
            NameQuest = "SkyExp1Quest"
            NameMon = "God's Guard"
            CFrameQuest = CFrame.new(-4721.88867, 843.874695, -1949.96643, 0.996191859, -0, -0.0871884301, 0, 1, -0, 0.0871884301, 0, 0.996191859)
            CFrameMon = CFrame.new(-4710.04296875, 845.2769775390625, -1927.3079833984375)
            if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4607.82275, 872.54248, -1667.55688))
            end
        elseif MyLevel == 475 or MyLevel <= 524 then
            Mon = "Shanda"
            LevelQuest = 2
            NameQuest = "SkyExp1Quest"
            NameMon = "Shanda"
            CFrameQuest = CFrame.new(-7859.09814, 5544.19043, -381.476196, -0.422592998, 0, 0.906319618, 0, 1, 0, -0.906319618, 0, -0.422592998)
            CFrameMon = CFrame.new(-7678.48974609375, 5566.40380859375, -497.2156066894531)
            if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
            end
        elseif MyLevel == 525 or MyLevel <= 549 then
            Mon = "Royal Squad"
            LevelQuest = 1
            NameQuest = "SkyExp2Quest"
            NameMon = "Royal Squad"
            CFrameQuest = CFrame.new(-7906.81592, 5634.6626, -1411.99194, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            CFrameMon = CFrame.new(-7624.25244140625, 5658.13330078125, -1467.354248046875)
        elseif MyLevel == 550 or MyLevel <= 624 then
            Mon = "Royal Soldier"
            LevelQuest = 2
            NameQuest = "SkyExp2Quest"
            NameMon = "Royal Soldier"
            CFrameQuest = CFrame.new(-7906.81592, 5634.6626, -1411.99194, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            CFrameMon = CFrame.new(-7836.75341796875, 5645.6640625, -1790.6236572265625)
        elseif MyLevel == 625 or MyLevel <= 649 then
            Mon = "Galley Pirate"
            LevelQuest = 1
            NameQuest = "FountainQuest"
            NameMon = "Galley Pirate"
            CFrameQuest = CFrame.new(5259.81982, 37.3500175, 4050.0293, 0.087131381, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, 0.087131381)
            CFrameMon = CFrame.new(5551.02197265625, 78.90135192871094, 3930.412841796875)
        elseif MyLevel >= 650 then
            Mon = "Galley Captain"
            LevelQuest = 2
            NameQuest = "FountainQuest"
            NameMon = "Galley Captain"
            CFrameQuest = CFrame.new(5259.81982, 37.3500175, 4050.0293, 0.087131381, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, 0.087131381)
            CFrameMon = CFrame.new(5441.95166015625, 42.50205993652344, 4950.09375)
        end
    elseif World2 then
        if MyLevel == 700 or MyLevel <= 724 then
            Mon = "Raider"
            LevelQuest = 1
            NameQuest = "Area1Quest"
            NameMon = "Raider"
            CFrameQuest = CFrame.new(-429.543518, 71.7699966, 1836.18188, -0.22495985, 0, -0.974368095, 0, 1, 0, 0.974368095, 0, -0.22495985)
            CFrameMon = CFrame.new(-728.3267211914062, 52.779319763183594, 2345.7705078125)
        elseif MyLevel == 725 or MyLevel <= 774 then
            Mon = "Mercenary"
            LevelQuest = 2
            NameQuest = "Area1Quest"
            NameMon = "Mercenary"
            CFrameQuest = CFrame.new(-429.543518, 71.7699966, 1836.18188, -0.22495985, 0, -0.974368095, 0, 1, 0, 0.974368095, 0, -0.22495985)
            CFrameMon = CFrame.new(-1004.3244018554688, 80.15886688232422, 1424.619384765625)
        elseif MyLevel == 775 or MyLevel <= 799 then
            Mon = "Swan Pirate"
            LevelQuest = 1
            NameQuest = "Area2Quest"
            NameMon = "Swan Pirate"
            CFrameQuest = CFrame.new(638.43811, 71.769989, 918.282898, 0.139203906, 0, 0.99026376, 0, 1, 0, -0.99026376, 0, 0.139203906)
            CFrameMon = CFrame.new(1068.664306640625, 137.61428833007812, 1322.1060791015625)
        elseif MyLevel == 800 or MyLevel <= 874 then
            Mon = "Factory Staff"
            NameQuest = "Area2Quest"
            LevelQuest = 2
            NameMon = "Factory Staff"
            CFrameQuest = CFrame.new(632.698608, 73.1055908, 918.666321, -0.0319722369, 8.96074881e-10, -0.999488771, 1.36326533e-10, 1, 8.92172336e-10, 0.999488771, -1.07732087e-10, -0.0319722369)
            CFrameMon = CFrame.new(73.07867431640625, 81.86344146728516, -27.470672607421875)
        elseif MyLevel == 875 or MyLevel <= 899 then
            Mon = "Marine Lieutenant"
            LevelQuest = 1
            NameQuest = "MarineQuest3"
            NameMon = "Marine Lieutenant"
            CFrameQuest = CFrame.new(-2440.79639, 71.7140732, -3216.06812, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
            CFrameMon = CFrame.new(-2821.372314453125, 75.89727783203125, -3070.089111328125)
        elseif MyLevel == 900 or MyLevel <= 949 then
            Mon = "Marine Captain"
            LevelQuest = 2
            NameQuest = "MarineQuest3"
            NameMon = "Marine Captain"
            CFrameQuest = CFrame.new(-2440.79639, 71.7140732, -3216.06812, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
            CFrameMon = CFrame.new(-1861.2310791015625, 80.17658233642578, -3254.697509765625)
        elseif MyLevel == 950 or MyLevel <= 974 then
            Mon = "Zombie"
            LevelQuest = 1
            NameQuest = "ZombieQuest"
            NameMon = "Zombie"
            CFrameQuest = CFrame.new(-5497.06152, 47.5923004, -795.237061, -0.29242146, 0, -0.95628953, 0, 1, 0, 0.95628953, 0, -0.29242146)
            CFrameMon = CFrame.new(-5657.77685546875, 78.96973419189453, -928.68701171875)
        elseif MyLevel == 975 or MyLevel <= 999 then
            Mon = "Vampire"
            LevelQuest = 2
            NameQuest = "ZombieQuest"
            NameMon = "Vampire"
            CFrameQuest = CFrame.new(-5497.06152, 47.5923004, -795.237061, -0.29242146, 0, -0.95628953, 0, 1, 0, 0.95628953, 0, -0.29242146)
            CFrameMon = CFrame.new(-6037.66796875, 32.18463897705078, -1340.6597900390625)
        elseif MyLevel == 1000 or MyLevel <= 1049 then
            Mon = "Snow Trooper"
            LevelQuest = 1
            NameQuest = "SnowMountainQuest"
            NameMon = "Snow Trooper"
            CFrameQuest = CFrame.new(609.858826, 400.119904, -5372.25928, -0.374604106, 0, 0.92718488, 0, 1, 0, -0.92718488, 0, -0.374604106)
            CFrameMon = CFrame.new(549.1473388671875, 427.3870544433594, -5563.69873046875)
        elseif MyLevel == 1050 or MyLevel <= 1099 then
            Mon = "Winter Warrior"
            LevelQuest = 2
            NameQuest = "SnowMountainQuest"
            NameMon = "Winter Warrior"
            CFrameQuest = CFrame.new(609.858826, 400.119904, -5372.25928, -0.374604106, 0, 0.92718488, 0, 1, 0, -0.92718488, 0, -0.374604106)
            CFrameMon = CFrame.new(1142.7451171875, 475.6398010253906, -5199.41650390625)
        elseif MyLevel == 1100 or MyLevel <= 1124 then
            Mon = "Lab Subordinate"
            LevelQuest = 1
            NameQuest = "IceSideQuest"
            NameMon = "Lab Subordinate"
            CFrameQuest = CFrame.new(-6064.06885, 15.2422857, -4902.97852, 0.453972578, -0, -0.891015649, 0, 1, -0, 0.891015649, 0, 0.453972578)
            CFrameMon = CFrame.new(-5707.4716796875, 15.951709747314453, -4513.39208984375)
        elseif MyLevel == 1125 or MyLevel <= 1174 then
            Mon = "Horned Warrior"
            LevelQuest = 2
            NameQuest = "IceSideQuest"
            NameMon = "Horned Warrior"
            CFrameQuest = CFrame.new(-6064.06885, 15.2422857, -4902.97852, 0.453972578, -0, -0.891015649, 0, 1, -0, 0.891015649, 0, 0.453972578)
            CFrameMon = CFrame.new(-6341.36669921875, 15.951770782470703, -5723.162109375)
        elseif MyLevel == 1175 or MyLevel <= 1199 then
            Mon = "Magma Ninja"
            LevelQuest = 1
            NameQuest = "FireSideQuest"
            NameMon = "Magma Ninja"
            CFrameQuest = CFrame.new(-5428.03174, 15.0622921, -5299.43457, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
            CFrameMon = CFrame.new(-5449.6728515625, 76.65874481201172, -5808.20068359375)
        elseif MyLevel == 1200 or MyLevel <= 1249 then
            Mon = "Lava Pirate"
            LevelQuest = 2
            NameQuest = "FireSideQuest"
            NameMon = "Lava Pirate"
            CFrameQuest = CFrame.new(-5428.03174, 15.0622921, -5299.43457, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
            CFrameMon = CFrame.new(-5213.33154296875, 49.73788070678711, -4701.451171875)
        elseif MyLevel == 1250 or MyLevel <= 1274 then
            Mon = "Ship Deckhand"
            LevelQuest = 1
            NameQuest = "ShipQuest1"
            NameMon = "Ship Deckhand"
            CFrameQuest = CFrame.new(1037.80127, 125.092171, 32911.6016)         
            CFrameMon = CFrame.new(1212.0111083984375, 150.79205322265625, 33059.24609375)    
            if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
            end
        elseif MyLevel == 1275 or MyLevel <= 1299 then
            Mon = "Ship Engineer"
            LevelQuest = 2
            NameQuest = "ShipQuest1"
            NameMon = "Ship Engineer"
            CFrameQuest = CFrame.new(1037.80127, 125.092171, 32911.6016)   
            CFrameMon = CFrame.new(919.4786376953125, 43.54401397705078, 32779.96875)   
            if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
            end             
        elseif MyLevel == 1300 or MyLevel <= 1324 then
            Mon = "Ship Steward"
            LevelQuest = 1
            NameQuest = "ShipQuest2"
            NameMon = "Ship Steward"
            CFrameQuest = CFrame.new(968.80957, 125.092171, 33244.125)         
            CFrameMon = CFrame.new(919.4385375976562, 129.55599975585938, 33436.03515625)      
            if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
            end
        elseif MyLevel == 1325 or MyLevel <= 1349 then
            Mon = "Ship Officer"
            LevelQuest = 2
            NameQuest = "ShipQuest2"
            NameMon = "Ship Officer"
            CFrameQuest = CFrame.new(968.80957, 125.092171, 33244.125)
            CFrameMon = CFrame.new(1036.0179443359375, 181.4390411376953, 33315.7265625)
            if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
            end
        elseif MyLevel == 1350 or MyLevel <= 1374 then
            Mon = "Arctic Warrior"
            LevelQuest = 1
            NameQuest = "FrostQuest"
            NameMon = "Arctic Warrior"
            CFrameQuest = CFrame.new(5667.6582, 26.7997818, -6486.08984, -0.933587909, 0, -0.358349502, 0, 1, 0, 0.358349502, 0, -0.933587909)
            CFrameMon = CFrame.new(5966.24609375, 62.97002029418945, -6179.3828125)
            if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-6508.5581054688, 5000.034996032715, -132.83953857422))
            end
        elseif MyLevel == 1375 or MyLevel <= 1424 then
            Mon = "Snow Lurker"
            LevelQuest = 2
            NameQuest = "FrostQuest"
            NameMon = "Snow Lurker"
            CFrameQuest = CFrame.new(5667.6582, 26.7997818, -6486.08984, -0.933587909, 0, -0.358349502, 0, 1, 0, 0.358349502, 0, -0.933587909)
            CFrameMon = CFrame.new(5407.07373046875, 69.19437408447266, -6880.88037109375)
        elseif MyLevel == 1425 or MyLevel <= 1449 then
            Mon = "Sea Soldier"
            LevelQuest = 1
            NameQuest = "ForgottenQuest"
            NameMon = "Sea Soldier"
            CFrameQuest = CFrame.new(-3054.44458, 235.544281, -10142.8193, 0.990270376, -0, -0.13915664, 0, 1, -0, 0.13915664, 0, 0.990270376)
            CFrameMon = CFrame.new(-3028.2236328125, 64.67451477050781, -9775.4267578125)
        elseif MyLevel >= 1450 then
            Mon = "Water Fighter"
            LevelQuest = 2
            NameQuest = "ForgottenQuest"
            NameMon = "Water Fighter"
            CFrameQuest = CFrame.new(-3054.44458, 235.544281, -10142.8193, 0.990270376, -0, -0.13915664, 0, 1, -0, 0.13915664, 0, 0.990270376)
            CFrameMon = CFrame.new(-3352.9013671875, 285.01556396484375, -10534.841796875)
        end
    elseif World3 then
        if MyLevel == 1500 or MyLevel <= 1524 then
            Mon = "Pirate Millionaire"
            LevelQuest = 1
            NameQuest = "PiratePortQuest"
            NameMon = "Pirate Millionaire"
            CFrameQuest = CFrame.new(-290.074677, 42.9034653, 5581.58984, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
            CFrameMon = CFrame.new(-245.9963836669922, 47.30615234375, 5584.1005859375)
        elseif MyLevel == 1525 or MyLevel <= 1574 then
            Mon = "Pistol Billionaire"
            LevelQuest = 2
            NameQuest = "PiratePortQuest"
            NameMon = "Pistol Billionaire"
            CFrameQuest = CFrame.new(-290.074677, 42.9034653, 5581.58984, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
            CFrameMon = CFrame.new(-187.3301544189453, 86.23987579345703, 6013.513671875)
        elseif MyLevel == 1575 or MyLevel <= 1599 then
            Mon = "Dragon Crew Warrior"
            LevelQuest = 1
            NameQuest = "AmazonQuest"
            NameMon = "Dragon Crew Warrior"
            CFrameQuest = CFrame.new(5832.83594, 51.6806107, -1101.51563, 0.898790359, -0, -0.438378751, 0, 1, -0, 0.438378751, 0, 0.898790359)
            CFrameMon = CFrame.new(6141.140625, 51.35136413574219, -1340.738525390625)
        elseif MyLevel == 1600 or MyLevel <= 1624 then 
            Mon = "Dragon Crew Archer"
            NameQuest = "AmazonQuest"
            LevelQuest = 2
            NameMon = "Dragon Crew Archer"
            CFrameQuest = CFrame.new(5833.1147460938, 51.60498046875, -1103.0693359375)
            CFrameMon = CFrame.new(6616.41748046875, 441.7670593261719, 446.0469970703125)
        elseif MyLevel == 1625 or MyLevel <= 1649 then
            Mon = "Female Islander"
            NameQuest = "AmazonQuest2"
            LevelQuest = 1
            NameMon = "Female Islander"
            CFrameQuest = CFrame.new(5446.8793945313, 601.62945556641, 749.45672607422)
            CFrameMon = CFrame.new(4685.25830078125, 735.8078002929688, 815.3425903320312)
        elseif MyLevel == 1650 or MyLevel <= 1699 then 
            Mon = "Giant Islander"
            NameQuest = "AmazonQuest2"
            LevelQuest = 2
            NameMon = "Giant Islander"
            CFrameQuest = CFrame.new(5446.8793945313, 601.62945556641, 749.45672607422)
            CFrameMon = CFrame.new(4729.09423828125, 590.436767578125, -36.97627639770508)
        elseif MyLevel == 1700 or MyLevel <= 1724 then
            Mon = "Marine Commodore"
            LevelQuest = 1
            NameQuest = "MarineTreeIsland"
            NameMon = "Marine Commodore"
            CFrameQuest = CFrame.new(2180.54126, 27.8156815, -6741.5498, -0.965929747, 0, 0.258804798, 0, 1, 0, -0.258804798, 0, -0.965929747)
            CFrameMon = CFrame.new(2286.0078125, 73.13391876220703, -7159.80908203125)
        elseif MyLevel == 1725 or MyLevel <= 1774 then
            Mon = "Marine Rear Admiral"
            NameMon = "Marine Rear Admiral"
            NameQuest = "MarineTreeIsland"
            LevelQuest = 2
            CFrameQuest = CFrame.new(2179.98828125, 28.731239318848, -6740.0551757813)
            CFrameMon = CFrame.new(3656.773681640625, 160.52406311035156, -7001.5986328125)
        elseif MyLevel == 1775 or MyLevel <= 1799 then
            Mon = "Fishman Raider"
            LevelQuest = 1
            NameQuest = "DeepForestIsland3"
            NameMon = "Fishman Raider"
            CFrameQuest = CFrame.new(-10581.6563, 330.872955, -8761.18652, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)   
            CFrameMon = CFrame.new(-10407.5263671875, 331.76263427734375, -8368.5166015625)
        elseif MyLevel == 1800 or MyLevel <= 1824 then
            Mon = "Fishman Captain"
            LevelQuest = 2
            NameQuest = "DeepForestIsland3"
            NameMon = "Fishman Captain"
            CFrameQuest = CFrame.new(-10581.6563, 330.872955, -8761.18652, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)   
            CFrameMon = CFrame.new(-10994.701171875, 352.38140869140625, -9002.1103515625) 
        elseif MyLevel == 1825 or MyLevel <= 1849 then
            Mon = "Forest Pirate"
            LevelQuest = 1
            NameQuest = "DeepForestIsland"
            NameMon = "Forest Pirate"
            CFrameQuest = CFrame.new(-13234.04, 331.488495, -7625.40137, 0.707134247, -0, -0.707079291, 0, 1, -0, 0.707079291, 0, 0.707134247)
            CFrameMon = CFrame.new(-13274.478515625, 332.3781433105469, -7769.58056640625)
        elseif MyLevel == 1850 or MyLevel <= 1899 then
            Mon = "Mythological Pirate"
            LevelQuest = 2
            NameQuest = "DeepForestIsland"
            NameMon = "Mythological Pirate"
            CFrameQuest = CFrame.new(-13234.04, 331.488495, -7625.40137, 0.707134247, -0, -0.707079291, 0, 1, -0, 0.707079291, 0, 0.707134247)   
            CFrameMon = CFrame.new(-13680.607421875, 501.08154296875, -6991.189453125)
        elseif MyLevel == 1900 or MyLevel <= 1924 then
            Mon = "Jungle Pirate"
            LevelQuest = 1
            NameQuest = "DeepForestIsland2"
            NameMon = "Jungle Pirate"
            CFrameQuest = CFrame.new(-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002)
            CFrameMon = CFrame.new(-12256.16015625, 331.73828125, -10485.8369140625)
        elseif MyLevel == 1925 or MyLevel <= 1974 then
            Mon = "Musketeer Pirate"
            LevelQuest = 2
            NameQuest = "DeepForestIsland2"
            NameMon = "Musketeer Pirate"
            CFrameQuest = CFrame.new(-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002)
            CFrameMon = CFrame.new(-13457.904296875, 391.545654296875, -9859.177734375)
        elseif MyLevel == 1975 or MyLevel <= 1999 then
            Mon = "Reborn Skeleton"
            LevelQuest = 1
            NameQuest = "HauntedQuest1"
            NameMon = "Reborn Skeleton"
            CFrameQuest = CFrame.new(-9479.2168, 141.215088, 5566.09277, 0, 0, 1, 0, 1, -0, -1, 0, 0)
            CFrameMon = CFrame.new(-8763.7236328125, 165.72299194335938, 6159.86181640625)
        elseif MyLevel == 2000 or MyLevel <= 2024 then
            Mon = "Living Zombie"
            LevelQuest = 2
            NameQuest = "HauntedQuest1"
            NameMon = "Living Zombie"
            CFrameQuest = CFrame.new(-9479.2168, 141.215088, 5566.09277, 0, 0, 1, 0, 1, -0, -1, 0, 0)
            CFrameMon = CFrame.new(-10144.1318359375, 138.62667846679688, 5838.0888671875)
        elseif MyLevel == 2025 or MyLevel <= 2049 then
            Mon = "Demonic Soul"
            LevelQuest = 1
            NameQuest = "HauntedQuest2"
            NameMon = "Demonic Soul"
            CFrameQuest = CFrame.new(-9516.99316, 172.017181, 6078.46533, 0, 0, -1, 0, 1, 0, 1, 0, 0) 
            CFrameMon = CFrame.new(-9505.8720703125, 172.10482788085938, 6158.9931640625)
        elseif MyLevel == 2050 or MyLevel <= 2074 then
            Mon = "Posessed Mummy"
            LevelQuest = 2
            NameQuest = "HauntedQuest2"
            NameMon = "Posessed Mummy"
            CFrameQuest = CFrame.new(-9516.99316, 172.017181, 6078.46533, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            CFrameMon = CFrame.new(-9582.0224609375, 6.251527309417725, 6205.478515625)
        elseif MyLevel == 2075 or MyLevel <= 2099 then
            Mon = "Peanut Scout"
            LevelQuest = 1
            NameQuest = "NutsIslandQuest"
            NameMon = "Peanut Scout"
            CFrameQuest = CFrame.new(-2104.3908691406, 38.104167938232, -10194.21875, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            CFrameMon = CFrame.new(-2143.241943359375, 47.72198486328125, -10029.9951171875)
        elseif MyLevel == 2100 or MyLevel <= 2124 then
            Mon = "Peanut President"
            LevelQuest = 2
            NameQuest = "NutsIslandQuest"
            NameMon = "Peanut President"
            CFrameQuest = CFrame.new(-2104.3908691406, 38.104167938232, -10194.21875, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            CFrameMon = CFrame.new(-1859.35400390625, 38.10316848754883, -10422.4296875)
        elseif MyLevel == 2125 or MyLevel <= 2149 then
            Mon = "Ice Cream Chef"
            LevelQuest = 1
            NameQuest = "IceCreamIslandQuest"
            NameMon = "Ice Cream Chef"
            CFrameQuest = CFrame.new(-820.64825439453, 65.819526672363, -10965.795898438, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            CFrameMon = CFrame.new(-872.24658203125, 65.81957244873047, -10919.95703125)
        elseif MyLevel == 2150 or MyLevel <= 2199 then
            Mon = "Ice Cream Commander"
            LevelQuest = 2
            NameQuest = "IceCreamIslandQuest"
            NameMon = "Ice Cream Commander"
            CFrameQuest = CFrame.new(-820.64825439453, 65.819526672363, -10965.795898438, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            CFrameMon = CFrame.new(-558.06103515625, 112.04895782470703, -11290.7744140625)
        elseif MyLevel == 2200 or MyLevel <= 2224 then
            Mon = "Cookie Crafter"
            LevelQuest = 1
            NameQuest = "CakeQuest1"
            NameMon = "Cookie Crafter"
            CFrameQuest = CFrame.new(-2021.32007, 37.7982254, -12028.7295, 0.957576931, -8.80302053e-08, 0.288177818, 6.9301187e-08, 1, 7.51931211e-08, -0.288177818, -5.2032135e-08, 0.957576931)
            CFrameMon = CFrame.new(-2374.13671875, 37.79826354980469, -12125.30859375)
        elseif MyLevel == 2225 or MyLevel <= 2249 then
            Mon = "Cake Guard"
            LevelQuest = 2
            NameQuest = "CakeQuest1"
            NameMon = "Cake Guard"
            CFrameQuest = CFrame.new(-2021.32007, 37.7982254, -12028.7295, 0.957576931, -8.80302053e-08, 0.288177818, 6.9301187e-08, 1, 7.51931211e-08, -0.288177818, -5.2032135e-08, 0.957576931)
            CFrameMon = CFrame.new(-1598.3070068359375, 43.773197174072266, -12244.5810546875)
        elseif MyLevel == 2250 or MyLevel <= 2274 then
            Mon = "Baking Staff"
            LevelQuest = 1
            NameQuest = "CakeQuest2"
            NameMon = "Baking Staff"
            CFrameQuest = CFrame.new(-1927.91602, 37.7981339, -12842.5391, -0.96804446, 4.22142143e-08, 0.250778586, 4.74911062e-08, 1, 1.49904711e-08, -0.250778586, 2.64211941e-08, -0.96804446)
            CFrameMon = CFrame.new(-1887.8099365234375, 77.6185073852539, -12998.3505859375)
        elseif MyLevel == 2275 or MyLevel <= 2299 then
            Mon = "Head Baker"
            LevelQuest = 2
            NameQuest = "CakeQuest2"
            NameMon = "Head Baker"
            CFrameQuest = CFrame.new(-1927.91602, 37.7981339, -12842.5391, -0.96804446, 4.22142143e-08, 0.250778586, 4.74911062e-08, 1, 1.49904711e-08, -0.250778586, 2.64211941e-08, -0.96804446)
            CFrameMon = CFrame.new(-2216.188232421875, 82.884521484375, -12869.2939453125)
        elseif MyLevel == 2300 or MyLevel <= 2324 then
            Mon = "Cocoa Warrior"
            LevelQuest = 1
            NameQuest = "ChocQuest1"
            NameMon = "Cocoa Warrior"
            CFrameQuest = CFrame.new(233.22836303710938, 29.876001358032227, -12201.2333984375)
            CFrameMon = CFrame.new(-21.55328369140625, 80.57499694824219, -12352.3876953125)
        elseif MyLevel == 2325 or MyLevel <= 2349 then
            Mon = "Chocolate Bar Battler"
            LevelQuest = 2
            NameQuest = "ChocQuest1"
            NameMon = "Chocolate Bar Battler"
            CFrameQuest = CFrame.new(233.22836303710938, 29.876001358032227, -12201.2333984375)
            CFrameMon = CFrame.new(582.590576171875, 77.18809509277344, -12463.162109375)
        elseif MyLevel == 2350 or MyLevel <= 2374 then
            Mon = "Sweet Thief"
            LevelQuest = 1
            NameQuest = "ChocQuest2"
            NameMon = "Sweet Thief"
            CFrameQuest = CFrame.new(150.5066375732422, 30.693693161010742, -12774.5029296875)
            CFrameMon = CFrame.new(165.1884765625, 76.05885314941406, -12600.8369140625)
        elseif MyLevel == 2375 or MyLevel <= 2399 then
            Mon = "Candy Rebel"
            LevelQuest = 2
            NameQuest = "ChocQuest2"
            NameMon = "Candy Rebel"
            CFrameQuest = CFrame.new(150.5066375732422, 30.693693161010742, -12774.5029296875)
            CFrameMon = CFrame.new(134.86563110351562, 77.2476806640625, -12876.5478515625)
        elseif MyLevel == 2400 or MyLevel <= 2424 then
            Mon = "Candy Pirate"
            LevelQuest = 1
            NameQuest = "CandyQuest1"
            NameMon = "Candy Pirate"
            CFrameQuest = CFrame.new(-1150.0400390625, 20.378934860229492, -14446.3349609375)
            CFrameMon = CFrame.new(-1310.5003662109375, 26.016523361206055, -14562.404296875)
        elseif MyLevel == 2425 or MyLevel <= 2449 then
            Mon = "Snow Demon"
            LevelQuest = 2
            NameQuest = "CandyQuest1"
            NameMon = "Snow Demon"
            CFrameQuest = CFrame.new(-1150.0400390625, 20.378934860229492, -14446.3349609375)
            CFrameMon = CFrame.new(-880.2006225585938, 71.24776458740234, -14538.609375)
        elseif MyLevel == 2450 or MyLevel <= 2474 then
            Mon = "Isle Outlaw"
            LevelQuest = 1
            NameQuest = "TikiQuest1"
            NameMon = "Isle Outlaw"
            CFrameQuest = CFrame.new(-16545.9355, 55.6863556, -173.230499)
            CFrameMon = CFrame.new(-16120.6035, 116.520554, -103.038849)
        elseif MyLevel == 2475 or MyLevel <= 2499 then
            Mon = "Island Boy"
            LevelQuest = 2
            NameQuest = "TikiQuest1"
            NameMon = "Island Boy"
            CFrameQuest = CFrame.new(-16545.9355, 55.6863556, -173.230499)
            CFrameMon = CFrame.new(-16751.3125, 121.226219, -264.015015)
        elseif MyLevel == 2500 or MyLevel <= 2524 then
            Mon = "Sun-kissed Warrio"
            LevelQuest = 1
            NameQuest = "TikiQuest2"
            NameMon = "Sun-kissed Warrio"
            CFrameQuest = CFrame.new(-16539.078125, 55.68632888793945, 1051.5738525390625)
            CFrameMon = CFrame.new(-16294.6748, 32.7874393, 1062.4856)
        elseif MyLevel >= 2525 then
            Mon = "Isle Champion"
            LevelQuest = 2
            NameQuest = "TikiQuest2"
            NameMon = "Isle Champion"
            CFrameQuest = CFrame.new(-16539.078125, 55.68632888793945, 1051.5738525390625)
            CFrameMon = CFrame.new(-16933.2129, 93.3503036, 999.450989)
        end
    end
end
function BringMobBone(name, CFrameMon)
spawn(function()
		wait(0.1)
		for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
			if v.name == name and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 400 then
				v.Humanoid.WalkSpeed = 0
				v.Humanoid.JumpPower = 0
				v.HumanoidRootPart.Size = Vector3.new(1, 1, 1)
				v.HumanoidRootPart.CanCollide = false
				v.Head.CanCollide = false
				v.HumanoidRootPart.CFrame = CFrameMon
				if v.Humanoid:FindFirstChild('Animator') then
					v.Humanoid.Animator:Destroy()
				end
				v.Humanoid:ChangeState(11)
				v.Humanoid:ChangeState(14)
				sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
		    end
	    end
    end)
end
function BringMobCake(name, CFrameMon)
spawn(function()
		wait(0.1)
		for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
			if v.name == name and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 400 then
				v.Humanoid.WalkSpeed = 0
				v.Humanoid.JumpPower = 0
				v.HumanoidRootPart.Size = Vector3.new(1, 1, 1)
				v.HumanoidRootPart.CanCollide = false
				v.Head.CanCollide = false
				v.HumanoidRootPart.CFrame = CFrameMon
				if v.Humanoid:FindFirstChild('Animator') then
					v.Humanoid.Animator:Destroy()
				end
				v.Humanoid:ChangeState(11)
				v.Humanoid:ChangeState(14)
				sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
			end
		end
	end)
end
function BringMobSwan(name, CFrameMon)
spawn(function()
		wait(0.1)
		for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
			if v.name == name and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 400 then
				v.Humanoid.WalkSpeed = 0
				v.Humanoid.JumpPower = 0
				v.HumanoidRootPart.Size = Vector3.new(1, 1, 1)
				v.HumanoidRootPart.CanCollide = false
				v.Head.CanCollide = false
				v.HumanoidRootPart.CFrame = CFrameMon
				if v.Humanoid:FindFirstChild('Animator') then
					v.Humanoid.Animator:Destroy()
				end
				v.Humanoid:ChangeState(11)
				v.Humanoid:ChangeState(14)
				sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
			end
		end
	end)
end
function BringMobRengoku(name, CFrameMon)
spawn(function()
		wait(0.1)
		for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
			if v.name == name and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 400 then
				v.Humanoid.WalkSpeed = 0
				v.Humanoid.JumpPower = 0
				v.HumanoidRootPart.Size = Vector3.new(1, 1, 1)
				v.HumanoidRootPart.CanCollide = false
				v.Head.CanCollide = false
				v.HumanoidRootPart.CFrame = CFrameMon
				if v.Humanoid:FindFirstChild('Animator') then
					v.Humanoid.Animator:Destroy()
				end
				v.Humanoid:ChangeState(11)
				v.Humanoid:ChangeState(14)
				sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
			end
		end
	end)
end
function Hop()
        local PlaceID = game.PlaceId
        local AllIDs = {}
        local foundAnything = ""
        local actualHour = os.date("!*t").hour
        local Deleted = false
        function TPReturner()
            local Site;
            if foundAnything == "" then
                Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
            else
                Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
            end
            local ID = ""
            if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
                foundAnything = Site.nextPageCursor
            end
            local num = 0;
            for i,v in pairs(Site.data) do
                local Possible = true
                ID = tostring(v.id)
                if tonumber(v.maxPlayers) > tonumber(v.playing) then
                    for _,Existing in pairs(AllIDs) do
                        if num ~= 0 then
                            if ID == tostring(Existing) then
                                Possible = false
                            end
                        else
                            if tonumber(actualHour) ~= tonumber(Existing) then
                                local delFile = pcall(function()
                                    AllIDs = {}
                                    table.insert(AllIDs, actualHour)
                                end)
                            end
                        end
                        num = num + 1
                    end
                    if Possible == true then
                        table.insert(AllIDs, ID)
                        wait()
                        pcall(function()
                            wait()
                            game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
                        end)
                        wait(1)
                    end
                end
            end
        end
        function Teleport() 
            while wait() do
                pcall(function()
                    TPReturner()
                    if foundAnything ~= "" then
                        TPReturner()
                    end
                end)
            end
        end
        Teleport()
    end    
function UpdateIslandMirageESP()
	for i, v in pairs((game:GetService("Workspace"))._WorldOrigin.Locations:GetChildren()) do
		pcall(function()
			if MirageIslandESP then
				if v.Name == "Mirage Island" then
					if not v:FindFirstChild("NameEsp") then
						local bill = Instance.new("BillboardGui", v)
						bill.Name = "NameEsp"
						bill.ExtentsOffset = Vector3.new(0, 1, 0)
						bill.Size = UDim2.new(1, 200, 1, 30)
						bill.Adornee = v
						bill.AlwaysOnTop = true
						local name = Instance.new("TextLabel", bill)
						name.Font = "Code"
						name.FontSize = "Size14"
						name.TextWrapped = true
						name.Size = UDim2.new(1, 0, 1, 0)
						name.TextYAlignment = "Top"
						name.BackgroundTransparency = 1
						name.TextStrokeTransparency = 0.5
						name.TextColor3 = Color3.fromRGB(80, 245, 245)
					else
						v.NameEsp.TextLabel.Text = v.Name .. "   \n" .. round((((game:GetService("Players")).LocalPlayer.Character.Head.Position - v.Position)).Magnitude / 3) .. " M"
					end
				end
			elseif v:FindFirstChild("NameEsp") then
				(v:FindFirstChild("NameEsp")):Destroy()
			end
		end)
	end
end  
function UpdateIslandKisuneESP() 
        for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
            pcall(function()
                if KitsuneIslandEsp then 
                    if v.Name == "Kitsune Island" then
                        if not v:FindFirstChild('NameEsp') then
                            local bill = Instance.new('BillboardGui',v)
                            bill.Name = 'NameEsp'
                            bill.ExtentsOffset = Vector3.new(0, 1, 0)
                            bill.Size = UDim2.new(1,200,1,30)
                            bill.Adornee = v
                            bill.AlwaysOnTop = true
                            local name = Instance.new('TextLabel',bill)
                            name.Font = "Code"
                            name.FontSize = "Size14"
                            name.TextWrapped = true
                            name.Size = UDim2.new(1,0,1,0)
                            name.TextYAlignment = 'Top'
                            name.BackgroundTransparency = 1
                            name.TextStrokeTransparency = 0.5
                            name.TextColor3 = Color3.fromRGB(80, 245, 245)
                        else
                            v['NameEsp'].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
                        end
                    end
                else
                    if v:FindFirstChild('NameEsp') then
                        v:FindFirstChild('NameEsp'):Destroy()
                    end
                end
            end)
        end
    end    
function UpdateAfdESP()
	for i, v in pairs((game:GetService("Workspace")).NPCs:GetChildren()) do
		pcall(function()
			if AfdESP then
				if v.Name == "Advanced Fruit Dealer" then
					if not v:FindFirstChild("NameEsp") then
						local bill = Instance.new("BillboardGui", v)
						bill.Name = "NameEsp"
						bill.ExtentsOffset = Vector3.new(0, 1, 0)
						bill.Size = UDim2.new(1, 200, 1, 30)
						bill.Adornee = v
						bill.AlwaysOnTop = true
						local name = Instance.new("TextLabel", bill)
						name.Font = "Code"
						name.FontSize = "Size14"
						name.TextWrapped = true
						name.Size = UDim2.new(1, 0, 1, 0)
						name.TextYAlignment = "Top"
						name.BackgroundTransparency = 1
						name.TextStrokeTransparency = 0.5
						name.TextColor3 = Color3.fromRGB(80, 245, 245)
					else
						v.NameEsp.TextLabel.Text = v.Name .. "   \n" .. round((((game:GetService("Players")).LocalPlayer.Character.Head.Position - v.Position)).Magnitude / 3) .. " M"
					end
				end
			elseif v:FindFirstChild("NameEsp") then
				(v:FindFirstChild("NameEsp")):Destroy()
			end
		end)
	end
end    
function UpdateGeaESP()
	for i, v in pairs((game:GetService("Workspace")).Map.MysticIsland:GetChildren()) do
		pcall(function()
			if GearESP then
				if v.Name == "MeshPart" then
					if not v:FindFirstChild("NameEsp") then
						local bill = Instance.new("BillboardGui", v)
						bill.Name = "NameEsp"
						bill.ExtentsOffset = Vector3.new(0, 1, 0)
						bill.Size = UDim2.new(1, 200, 1, 30)
						bill.Adornee = v
						bill.AlwaysOnTop = true
						local name = Instance.new("TextLabel", bill)
						name.Font = "Code"
						name.FontSize = "Size14"
						name.TextWrapped = true
						name.Size = UDim2.new(1, 0, 1, 0)
						name.TextYAlignment = "Top"
						name.BackgroundTransparency = 1
						name.TextStrokeTransparency = 0.5
						name.TextColor3 = Color3.fromRGB(80, 245, 245)
					else
						v.NameEsp.TextLabel.Text = v.Name .. "   \n" .. round((((game:GetService("Players")).LocalPlayer.Character.Head.Position - v.Position)).Magnitude / 3) .. " M"
					end
				end
			elseif v:FindFirstChild("NameEsp") then
				(v:FindFirstChild("NameEsp")):Destroy()
			end
		end)
	end
end    
function UpdateIslandESP() 
        for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
            pcall(function()
                if IslandESP then 
                    if v.Name ~= "Sea" then
                        if not v:FindFirstChild('NameEsp') then
                            local bill = Instance.new('BillboardGui',v)
                            bill.Name = 'NameEsp'
                            bill.ExtentsOffset = Vector3.new(0, 1, 0)
                            bill.Size = UDim2.new(1,200,1,30)
                            bill.Adornee = v
                            bill.AlwaysOnTop = true
                            local name = Instance.new('TextLabel',bill)
                            name.Font = "GothamBold"
                            name.FontSize = "Size14"
                            name.TextWrapped = true
                            name.Size = UDim2.new(1,0,1,0)
                            name.TextYAlignment = 'Top'
                            name.BackgroundTransparency = 1
                            name.TextStrokeTransparency = 0.5
                            name.TextColor3 = Color3.fromRGB(255, 255, 255)
                        else
                            v['NameEsp'].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
                        end
                    end
                else
                    if v:FindFirstChild('NameEsp') then
                        v:FindFirstChild('NameEsp'):Destroy()
                    end
                end
            end)
        end
    end
    function isnil(thing)
	return (thing == nil)
end
local function round(n)
	return math.floor(tonumber(n) + 0.5)
end
Number = math.random(1, 1000000)
function UpdatePlayerChams()
	for i,v in pairs(game:GetService'Players':GetChildren()) do
		pcall(function()
			if not isnil(v.Character) then
				if ESPPlayer then
					if not isnil(v.Character.Head) and not v.Character.Head:FindFirstChild('NameEsp'..Number) then
						local bill = Instance.new('BillboardGui',v.Character.Head)
						bill.Name = 'NameEsp'..Number
						bill.ExtentsOffset = Vector3.new(0, 1, 0)
						bill.Size = UDim2.new(1,200,1,30)
						bill.Adornee = v.Character.Head
						bill.AlwaysOnTop = true
						local name = Instance.new('TextLabel',bill)
						name.Font = Enum.Font.GothamSemibold
						name.FontSize = "Size14"
						name.TextWrapped = true
						name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude/3) ..' Distance')
						name.Size = UDim2.new(1,0,1,0)
						name.TextYAlignment = 'Top'
						name.BackgroundTransparency = 1
						name.TextStrokeTransparency = 0.5
						if v.Team == game.Players.LocalPlayer.Team then
							name.TextColor3 = Color3.new(0,255,0)
						else
							name.TextColor3 = Color3.new(255,0,0)
						end
					else
						v.Character.Head['NameEsp'..Number].TextLabel.Text = (v.Name ..' | '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude/3) ..' Distance\nHealth : ' .. round(v.Character.Humanoid.Health*100/v.Character.Humanoid.MaxHealth) .. '%')
					end
				else
					if v.Character.Head:FindFirstChild('NameEsp'..Number) then
						v.Character.Head:FindFirstChild('NameEsp'..Number):Destroy()
					end
				end
			end
		end)
	end
end
function UpdateChestChams() 
	for i,v in pairs(game.Workspace:GetChildren()) do
		pcall(function()
			if string.find(v.Name,"Chest") then
				if ChestESP then
					if string.find(v.Name,"Chest") then
						if not v:FindFirstChild('NameEsp'..Number) then
							local bill = Instance.new('BillboardGui',v)
							bill.Name = 'NameEsp'..Number
							bill.ExtentsOffset = Vector3.new(0, 1, 0)
							bill.Size = UDim2.new(1,200,1,30)
							bill.Adornee = v
							bill.AlwaysOnTop = true
							local name = Instance.new('TextLabel',bill)
							name.Font = Enum.Font.GothamSemibold
							name.FontSize = "Size14"
							name.TextWrapped = true
							name.Size = UDim2.new(1,0,1,0)
							name.TextYAlignment = 'Top'
							name.BackgroundTransparency = 1
							name.TextStrokeTransparency = 0.5
							if v.Name == "Chest1" then
								name.TextColor3 = Color3.fromRGB(109, 109, 109)
								name.Text = ("Chest 1" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
							end
							if v.Name == "Chest2" then
								name.TextColor3 = Color3.fromRGB(173, 158, 21)
								name.Text = ("Chest 2" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
							end
							if v.Name == "Chest3" then
								name.TextColor3 = Color3.fromRGB(85, 255, 255)
								name.Text = ("Chest 3" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
							end
						else
							v['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
						end
					end
				else
					if v:FindFirstChild('NameEsp'..Number) then
						v:FindFirstChild('NameEsp'..Number):Destroy()
					end
				end
			end
		end)
	end
end
function UpdateDevilChams() 
	for i,v in pairs(game.Workspace:GetChildren()) do
		pcall(function()
			if DevilFruitESP then
				if string.find(v.Name, "Fruit") then   
					if not v.Handle:FindFirstChild('NameEsp'..Number) then
						local bill = Instance.new('BillboardGui',v.Handle)
						bill.Name = 'NameEsp'..Number
						bill.ExtentsOffset = Vector3.new(0, 1, 0)
						bill.Size = UDim2.new(1,200,1,30)
						bill.Adornee = v.Handle
						bill.AlwaysOnTop = true
						local name = Instance.new('TextLabel',bill)
						name.Font = Enum.Font.GothamSemibold
						name.FontSize = "Size14"
						name.TextWrapped = true
						name.Size = UDim2.new(1,0,1,0)
						name.TextYAlignment = 'Top'
						name.BackgroundTransparency = 1
						name.TextStrokeTransparency = 0.5
						name.TextColor3 = Color3.fromRGB(255, 255, 255)
						name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
					else
						v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
					end
				end
			else
				if v.Handle:FindFirstChild('NameEsp'..Number) then
					v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
				end
			end
		end)
	end
end
function UpdateFlowerChams() 
for i,v in pairs(game.Workspace:GetChildren()) do
    pcall(function()
        if v.Name == "Flower2" or v.Name == "Flower1" then
            if FlowerESP then 
                if not v:FindFirstChild('NameEsp'..Number) then
                    local bill = Instance.new('BillboardGui',v)
                    bill.Name = 'NameEsp'..Number
                    bill.ExtentsOffset = Vector3.new(0, 1, 0)
                    bill.Size = UDim2.new(1,200,1,30)
                    bill.Adornee = v
                    bill.AlwaysOnTop = true
                    local name = Instance.new('TextLabel',bill)
                    name.Font = Enum.Font.GothamSemibold
                    name.FontSize = "Size14"
                    name.TextWrapped = true
                    name.Size = UDim2.new(1,0,1,0)
                    name.TextYAlignment = 'Top'
                    name.BackgroundTransparency = 1
                    name.TextStrokeTransparency = 0.5
                    name.TextColor3 = Color3.fromRGB(255, 0, 0)
                    if v.Name == "Flower1" then 
                        name.Text = ("Blue Flower" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
                        name.TextColor3 = Color3.fromRGB(0, 0, 255)
                    end
                    if v.Name == "Flower2" then
                        name.Text = ("Red Flower" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
                        name.TextColor3 = Color3.fromRGB(255, 0, 0)
                    end
                else
                    v['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
                end
            else
                if v:FindFirstChild('NameEsp'..Number) then
                v:FindFirstChild('NameEsp'..Number):Destroy()
                end
            end
        end   
    end)
end
end
function UpdateRealFruitChams()
	for i, v in pairs(game.Workspace.AppleSpawner:GetChildren()) do
		if v:IsA("Tool") then
			if RealFruitESP then
				if not v.Handle:FindFirstChild(("NameEsp" .. Number)) then
					local bill = Instance.new("BillboardGui", v.Handle)
					bill.Name = "NameEsp" .. Number
					bill.ExtentsOffset = Vector3.new(0, 1, 0)
					bill.Size = UDim2.new(1, 200, 1, 30)
					bill.Adornee = v.Handle
					bill.AlwaysOnTop = true
					local name = Instance.new("TextLabel", bill)
					name.Font = Enum.Font.GothamSemibold
					name.FontSize = "Size14"
					name.TextWrapped = true
					name.Size = UDim2.new(1, 0, 1, 0)
					name.TextYAlignment = "Top"
					name.BackgroundTransparency = 1
					name.TextStrokeTransparency = 0.5
					name.TextColor3 = Color3.fromRGB(255, 0, 0)
					name.Text = v.Name .. " \n" .. round((((game:GetService("Players")).LocalPlayer.Character.Head.Position - v.Handle.Position)).Magnitude / 3) .. " Distance"
				else
					v.Handle["NameEsp" .. Number].TextLabel.Text = v.Name .. " " .. round((((game:GetService("Players")).LocalPlayer.Character.Head.Position - v.Handle.Position)).Magnitude / 3) .. " Distance"
				end
			elseif v.Handle:FindFirstChild("NameEsp" .. Number) then
				(v.Handle:FindFirstChild("NameEsp" .. Number)):Destroy()
			end
		end
	end
	for i, v in pairs(game.Workspace.PineappleSpawner:GetChildren()) do
		if v:IsA("Tool") then
			if RealFruitESP then
				if not v.Handle:FindFirstChild(("NameEsp" .. Number)) then
					local bill = Instance.new("BillboardGui", v.Handle)
					bill.Name = "NameEsp" .. Number
					bill.ExtentsOffset = Vector3.new(0, 1, 0)
					bill.Size = UDim2.new(1, 200, 1, 30)
					bill.Adornee = v.Handle
					bill.AlwaysOnTop = true
					local name = Instance.new("TextLabel", bill)
					name.Font = Enum.Font.GothamSemibold
					name.FontSize = "Size14"
					name.TextWrapped = true
					name.Size = UDim2.new(1, 0, 1, 0)
					name.TextYAlignment = "Top"
					name.BackgroundTransparency = 1
					name.TextStrokeTransparency = 0.5
					name.TextColor3 = Color3.fromRGB(255, 174, 0)
					name.Text = v.Name .. " \n" .. round((((game:GetService("Players")).LocalPlayer.Character.Head.Position - v.Handle.Position)).Magnitude / 3) .. " Distance"
				else
					v.Handle["NameEsp" .. Number].TextLabel.Text = v.Name .. " " .. round((((game:GetService("Players")).LocalPlayer.Character.Head.Position - v.Handle.Position)).Magnitude / 3) .. " Distance"
				end
			elseif v.Handle:FindFirstChild("NameEsp" .. Number) then
				(v.Handle:FindFirstChild("NameEsp" .. Number)):Destroy()
			end
		end
	end
	for i, v in pairs(game.Workspace.BananaSpawner:GetChildren()) do
		if v:IsA("Tool") then
			if RealFruitESP then
				if not v.Handle:FindFirstChild(("NameEsp" .. Number)) then
					local bill = Instance.new("BillboardGui", v.Handle)
					bill.Name = "NameEsp" .. Number
					bill.ExtentsOffset = Vector3.new(0, 1, 0)
					bill.Size = UDim2.new(1, 200, 1, 30)
					bill.Adornee = v.Handle
					bill.AlwaysOnTop = true
					local name = Instance.new("TextLabel", bill)
					name.Font = Enum.Font.GothamSemibold
					name.FontSize = "Size14"
					name.TextWrapped = true
					name.Size = UDim2.new(1, 0, 1, 0)
					name.TextYAlignment = "Top"
					name.BackgroundTransparency = 1
					name.TextStrokeTransparency = 0.5
					name.TextColor3 = Color3.fromRGB(251, 255, 0)
					name.Text = v.Name .. " \n" .. round((((game:GetService("Players")).LocalPlayer.Character.Head.Position - v.Handle.Position)).Magnitude / 3) .. " Distance"
				else
					v.Handle["NameEsp" .. Number].TextLabel.Text = v.Name .. " " .. round((((game:GetService("Players")).LocalPlayer.Character.Head.Position - v.Handle.Position)).Magnitude / 3) .. " Distance"
				end
			elseif v.Handle:FindFirstChild("NameEsp" .. Number) then
				(v.Handle:FindFirstChild("NameEsp" .. Number)):Destroy()
			end
		end
	end
end
function UpdateIslandESP() 
        for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
            pcall(function()
                if IslandESP then 
                    if v.Name ~= "Sea" then
                        if not v:FindFirstChild('NameEsp') then
                            local bill = Instance.new('BillboardGui',v)
                            bill.Name = 'NameEsp'
                            bill.ExtentsOffset = Vector3.new(0, 1, 0)
                            bill.Size = UDim2.new(1,200,1,30)
                            bill.Adornee = v
                            bill.AlwaysOnTop = true
                            local name = Instance.new('TextLabel',bill)
                            name.Font = "GothamBold"
                            name.FontSize = "Size14"
                            name.TextWrapped = true
                            name.Size = UDim2.new(1,0,1,0)
                            name.TextYAlignment = 'Top'
                            name.BackgroundTransparency = 1
                            name.TextStrokeTransparency = 0.5
                            name.TextColor3 = Color3.fromRGB(255, 255, 255)
                        else
                            v['NameEsp'].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
                        end
                    end
                else
                    if v:FindFirstChild('NameEsp') then
                        v:FindFirstChild('NameEsp'):Destroy()
                    end
                end
            end)
        end
    end
  function isnil(thing)
	return (thing == nil)
end
local function round(n)
	return math.floor(tonumber(n) + 0.5)
end
Number = math.random(1, 1000000)
function UpdatePlayerChams()
	for i,v in pairs(game:GetService'Players':GetChildren()) do
		pcall(function()
			if not isnil(v.Character) then
				if ESPPlayer then
					if not isnil(v.Character.Head) and not v.Character.Head:FindFirstChild('NameEsp'..Number) then
						local bill = Instance.new('BillboardGui',v.Character.Head)
						bill.Name = 'NameEsp'..Number
						bill.ExtentsOffset = Vector3.new(0, 1, 0)
						bill.Size = UDim2.new(1,200,1,30)
						bill.Adornee = v.Character.Head
						bill.AlwaysOnTop = true
						local name = Instance.new('TextLabel',bill)
						name.Font = Enum.Font.GothamSemibold
						name.FontSize = "Size14"
						name.TextWrapped = true
						name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude/3) ..' Distance')
						name.Size = UDim2.new(1,0,1,0)
						name.TextYAlignment = 'Top'
						name.BackgroundTransparency = 1
						name.TextStrokeTransparency = 0.5
						if v.Team == game.Players.LocalPlayer.Team then
							name.TextColor3 = Color3.new(0,255,0)
						else
							name.TextColor3 = Color3.new(255,0,0)
						end
					else
						v.Character.Head['NameEsp'..Number].TextLabel.Text = (v.Name ..' | '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude/3) ..' Distance\nHealth : ' .. round(v.Character.Humanoid.Health*100/v.Character.Humanoid.MaxHealth) .. '%')
					end
				else
					if v.Character.Head:FindFirstChild('NameEsp'..Number) then
						v.Character.Head:FindFirstChild('NameEsp'..Number):Destroy()
					end
				end
			end
		end)
	end
end
function UpdateChestChams() 
	for i,v in pairs(game.Workspace:GetChildren()) do
		pcall(function()
			if string.find(v.Name,"Chest") then
				if ChestESP then
					if string.find(v.Name,"Chest") then
						if not v:FindFirstChild('NameEsp'..Number) then
							local bill = Instance.new('BillboardGui',v)
							bill.Name = 'NameEsp'..Number
							bill.ExtentsOffset = Vector3.new(0, 1, 0)
							bill.Size = UDim2.new(1,200,1,30)
							bill.Adornee = v
							bill.AlwaysOnTop = true
							local name = Instance.new('TextLabel',bill)
							name.Font = Enum.Font.GothamSemibold
							name.FontSize = "Size14"
							name.TextWrapped = true
							name.Size = UDim2.new(1,0,1,0)
							name.TextYAlignment = 'Top'
							name.BackgroundTransparency = 1
							name.TextStrokeTransparency = 0.5
							if v.Name == "Chest1" then
								name.TextColor3 = Color3.fromRGB(109, 109, 109)
								name.Text = ("Chest 1" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
							end
							if v.Name == "Chest2" then
								name.TextColor3 = Color3.fromRGB(173, 158, 21)
								name.Text = ("Chest 2" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
							end
							if v.Name == "Chest3" then
								name.TextColor3 = Color3.fromRGB(85, 255, 255)
								name.Text = ("Chest 3" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
							end
						else
							v['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
						end
					end
				else
					if v:FindFirstChild('NameEsp'..Number) then
						v:FindFirstChild('NameEsp'..Number):Destroy()
					end
				end
			end
		end)
	end
end
function UpdateDevilChams() 
	for i,v in pairs(game.Workspace:GetChildren()) do
		pcall(function()
			if DevilFruitESP then
				if string.find(v.Name, "Fruit") then   
					if not v.Handle:FindFirstChild('NameEsp'..Number) then
						local bill = Instance.new('BillboardGui',v.Handle)
						bill.Name = 'NameEsp'..Number
						bill.ExtentsOffset = Vector3.new(0, 1, 0)
						bill.Size = UDim2.new(1,200,1,30)
						bill.Adornee = v.Handle
						bill.AlwaysOnTop = true
						local name = Instance.new('TextLabel',bill)
						name.Font = Enum.Font.GothamSemibold
						name.FontSize = "Size14"
						name.TextWrapped = true
						name.Size = UDim2.new(1,0,1,0)
						name.TextYAlignment = 'Top'
						name.BackgroundTransparency = 1
						name.TextStrokeTransparency = 0.5
						name.TextColor3 = Color3.fromRGB(255, 255, 255)
						name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
					else
						v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
					end
				end
			else
				if v.Handle:FindFirstChild('NameEsp'..Number) then
					v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
				end
			end
		end)
	end
end
function UpdateFlowerChams() 
for i,v in pairs(game.Workspace:GetChildren()) do
    pcall(function()
        if v.Name == "Flower2" or v.Name == "Flower1" then
            if FlowerESP then 
                if not v:FindFirstChild('NameEsp'..Number) then
                    local bill = Instance.new('BillboardGui',v)
                    bill.Name = 'NameEsp'..Number
                    bill.ExtentsOffset = Vector3.new(0, 1, 0)
                    bill.Size = UDim2.new(1,200,1,30)
                    bill.Adornee = v
                    bill.AlwaysOnTop = true
                    local name = Instance.new('TextLabel',bill)
                    name.Font = Enum.Font.GothamSemibold
                    name.FontSize = "Size14"
                    name.TextWrapped = true
                    name.Size = UDim2.new(1,0,1,0)
                    name.TextYAlignment = 'Top'
                    name.BackgroundTransparency = 1
                    name.TextStrokeTransparency = 0.5
                    name.TextColor3 = Color3.fromRGB(255, 0, 0)
                    if v.Name == "Flower1" then 
                        name.Text = ("Blue Flower" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
                        name.TextColor3 = Color3.fromRGB(0, 0, 255)
                    end
                    if v.Name == "Flower2" then
                        name.Text = ("Red Flower" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
                        name.TextColor3 = Color3.fromRGB(255, 0, 0)
                    end
                else
                    v['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
                end
            else
                if v:FindFirstChild('NameEsp'..Number) then
                v:FindFirstChild('NameEsp'..Number):Destroy()
                end
            end
        end   
    end)
end
end
function UpdateRealFruitChams()
	for i, v in pairs(game.Workspace.AppleSpawner:GetChildren()) do
		if v:IsA("Tool") then
			if RealFruitESP then
				if not v.Handle:FindFirstChild(("NameEsp" .. Number)) then
					local bill = Instance.new("BillboardGui", v.Handle)
					bill.Name = "NameEsp" .. Number
					bill.ExtentsOffset = Vector3.new(0, 1, 0)
					bill.Size = UDim2.new(1, 200, 1, 30)
					bill.Adornee = v.Handle
					bill.AlwaysOnTop = true
					local name = Instance.new("TextLabel", bill)
					name.Font = Enum.Font.GothamSemibold
					name.FontSize = "Size14"
					name.TextWrapped = true
					name.Size = UDim2.new(1, 0, 1, 0)
					name.TextYAlignment = "Top"
					name.BackgroundTransparency = 1
					name.TextStrokeTransparency = 0.5
					name.TextColor3 = Color3.fromRGB(255, 0, 0)
					name.Text = v.Name .. " \n" .. round((((game:GetService("Players")).LocalPlayer.Character.Head.Position - v.Handle.Position)).Magnitude / 3) .. " Distance"
				else
					v.Handle["NameEsp" .. Number].TextLabel.Text = v.Name .. " " .. round((((game:GetService("Players")).LocalPlayer.Character.Head.Position - v.Handle.Position)).Magnitude / 3) .. " Distance"
				end
			elseif v.Handle:FindFirstChild("NameEsp" .. Number) then
				(v.Handle:FindFirstChild("NameEsp" .. Number)):Destroy()
			end
		end
	end
	for i, v in pairs(game.Workspace.PineappleSpawner:GetChildren()) do
		if v:IsA("Tool") then
			if RealFruitESP then
				if not v.Handle:FindFirstChild(("NameEsp" .. Number)) then
					local bill = Instance.new("BillboardGui", v.Handle)
					bill.Name = "NameEsp" .. Number
					bill.ExtentsOffset = Vector3.new(0, 1, 0)
					bill.Size = UDim2.new(1, 200, 1, 30)
					bill.Adornee = v.Handle
					bill.AlwaysOnTop = true
					local name = Instance.new("TextLabel", bill)
					name.Font = Enum.Font.GothamSemibold
					name.FontSize = "Size14"
					name.TextWrapped = true
					name.Size = UDim2.new(1, 0, 1, 0)
					name.TextYAlignment = "Top"
					name.BackgroundTransparency = 1
					name.TextStrokeTransparency = 0.5
					name.TextColor3 = Color3.fromRGB(255, 174, 0)
					name.Text = v.Name .. " \n" .. round((((game:GetService("Players")).LocalPlayer.Character.Head.Position - v.Handle.Position)).Magnitude / 3) .. " Distance"
				else
					v.Handle["NameEsp" .. Number].TextLabel.Text = v.Name .. " " .. round((((game:GetService("Players")).LocalPlayer.Character.Head.Position - v.Handle.Position)).Magnitude / 3) .. " Distance"
				end
			elseif v.Handle:FindFirstChild("NameEsp" .. Number) then
				(v.Handle:FindFirstChild("NameEsp" .. Number)):Destroy()
			end
		end
	end
	for i, v in pairs(game.Workspace.BananaSpawner:GetChildren()) do
		if v:IsA("Tool") then
			if RealFruitESP then
				if not v.Handle:FindFirstChild(("NameEsp" .. Number)) then
					local bill = Instance.new("BillboardGui", v.Handle)
					bill.Name = "NameEsp" .. Number
					bill.ExtentsOffset = Vector3.new(0, 1, 0)
					bill.Size = UDim2.new(1, 200, 1, 30)
					bill.Adornee = v.Handle
					bill.AlwaysOnTop = true
					local name = Instance.new("TextLabel", bill)
					name.Font = Enum.Font.GothamSemibold
					name.FontSize = "Size14"
					name.TextWrapped = true
					name.Size = UDim2.new(1, 0, 1, 0)
					name.TextYAlignment = "Top"
					name.BackgroundTransparency = 1
					name.TextStrokeTransparency = 0.5
					name.TextColor3 = Color3.fromRGB(251, 255, 0)
					name.Text = v.Name .. " \n" .. round((((game:GetService("Players")).LocalPlayer.Character.Head.Position - v.Handle.Position)).Magnitude / 3) .. " Distance"
				else
					v.Handle["NameEsp" .. Number].TextLabel.Text = v.Name .. " " .. round((((game:GetService("Players")).LocalPlayer.Character.Head.Position - v.Handle.Position)).Magnitude / 3) .. " Distance"
				end
			elseif v.Handle:FindFirstChild("NameEsp" .. Number) then
				(v.Handle:FindFirstChild("NameEsp" .. Number)):Destroy()
			end
		end
	end
end
function UpdateIslandESP() 
        for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
            pcall(function()
                if IslandESP then 
                    if v.Name ~= "Sea" then
                        if not v:FindFirstChild('NameEsp') then
                            local bill = Instance.new('BillboardGui',v)
                            bill.Name = 'NameEsp'
                            bill.ExtentsOffset = Vector3.new(0, 1, 0)
                            bill.Size = UDim2.new(1,200,1,30)
                            bill.Adornee = v
                            bill.AlwaysOnTop = true
                            local name = Instance.new('TextLabel',bill)
                            name.Font = "GothamBold"
                            name.FontSize = "Size14"
                            name.TextWrapped = true
                            name.Size = UDim2.new(1,0,1,0)
                            name.TextYAlignment = 'Top'
                            name.BackgroundTransparency = 1
                            name.TextStrokeTransparency = 0.5
                            name.TextColor3 = Color3.fromRGB(255, 255, 255)
                        else
                            v['NameEsp'].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
                        end
                    end
                else
                    if v:FindFirstChild('NameEsp') then
                        v:FindFirstChild('NameEsp'):Destroy()
                    end
                end
            end)
        end
    end
  function isnil(thing)
	return (thing == nil)
end
local function round(n)
	return math.floor(tonumber(n) + 0.5)
end
Number = math.random(1, 1000000)
function UpdatePlayerChams()
	for i,v in pairs(game:GetService'Players':GetChildren()) do
		pcall(function()
			if not isnil(v.Character) then
				if ESPPlayer then
					if not isnil(v.Character.Head) and not v.Character.Head:FindFirstChild('NameEsp'..Number) then
						local bill = Instance.new('BillboardGui',v.Character.Head)
						bill.Name = 'NameEsp'..Number
						bill.ExtentsOffset = Vector3.new(0, 1, 0)
						bill.Size = UDim2.new(1,200,1,30)
						bill.Adornee = v.Character.Head
						bill.AlwaysOnTop = true
						local name = Instance.new('TextLabel',bill)
						name.Font = Enum.Font.GothamSemibold
						name.FontSize = "Size14"
						name.TextWrapped = true
						name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude/3) ..' Distance')
						name.Size = UDim2.new(1,0,1,0)
						name.TextYAlignment = 'Top'
						name.BackgroundTransparency = 1
						name.TextStrokeTransparency = 0.5
						if v.Team == game.Players.LocalPlayer.Team then
							name.TextColor3 = Color3.new(0,255,0)
						else
							name.TextColor3 = Color3.new(255,0,0)
						end
					else
						v.Character.Head['NameEsp'..Number].TextLabel.Text = (v.Name ..' | '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude/3) ..' Distance\nHealth : ' .. round(v.Character.Humanoid.Health*100/v.Character.Humanoid.MaxHealth) .. '%')
					end
				else
					if v.Character.Head:FindFirstChild('NameEsp'..Number) then
						v.Character.Head:FindFirstChild('NameEsp'..Number):Destroy()
					end
				end
			end
		end)
	end
end
function UpdateChestChams() 
	for i,v in pairs(game.Workspace:GetChildren()) do
		pcall(function()
			if string.find(v.Name,"Chest") then
				if ChestESP then
					if string.find(v.Name,"Chest") then
						if not v:FindFirstChild('NameEsp'..Number) then
							local bill = Instance.new('BillboardGui',v)
							bill.Name = 'NameEsp'..Number
							bill.ExtentsOffset = Vector3.new(0, 1, 0)
							bill.Size = UDim2.new(1,200,1,30)
							bill.Adornee = v
							bill.AlwaysOnTop = true
							local name = Instance.new('TextLabel',bill)
							name.Font = Enum.Font.GothamSemibold
							name.FontSize = "Size14"
							name.TextWrapped = true
							name.Size = UDim2.new(1,0,1,0)
							name.TextYAlignment = 'Top'
							name.BackgroundTransparency = 1
							name.TextStrokeTransparency = 0.5
							if v.Name == "Chest1" then
								name.TextColor3 = Color3.fromRGB(109, 109, 109)
								name.Text = ("Chest 1" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
							end
							if v.Name == "Chest2" then
								name.TextColor3 = Color3.fromRGB(173, 158, 21)
								name.Text = ("Chest 2" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
							end
							if v.Name == "Chest3" then
								name.TextColor3 = Color3.fromRGB(85, 255, 255)
								name.Text = ("Chest 3" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
							end
						else
							v['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
						end
					end
				else
					if v:FindFirstChild('NameEsp'..Number) then
						v:FindFirstChild('NameEsp'..Number):Destroy()
					end
				end
			end
		end)
	end
end
function UpdateDevilChams() 
	for i,v in pairs(game.Workspace:GetChildren()) do
		pcall(function()
			if DevilFruitESP then
				if string.find(v.Name, "Fruit") then   
					if not v.Handle:FindFirstChild('NameEsp'..Number) then
						local bill = Instance.new('BillboardGui',v.Handle)
						bill.Name = 'NameEsp'..Number
						bill.ExtentsOffset = Vector3.new(0, 1, 0)
						bill.Size = UDim2.new(1,200,1,30)
						bill.Adornee = v.Handle
						bill.AlwaysOnTop = true
						local name = Instance.new('TextLabel',bill)
						name.Font = Enum.Font.GothamSemibold
						name.FontSize = "Size14"
						name.TextWrapped = true
						name.Size = UDim2.new(1,0,1,0)
						name.TextYAlignment = 'Top'
						name.BackgroundTransparency = 1
						name.TextStrokeTransparency = 0.5
						name.TextColor3 = Color3.fromRGB(255, 255, 255)
						name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
					else
						v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
					end
				end
			else
				if v.Handle:FindFirstChild('NameEsp'..Number) then
					v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
				end
			end
		end)
	end
end
spawn(function()
    while wait() do
        pcall(function()
            if MobESP then
                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                    if v:FindFirstChild('HumanoidRootPart') then
                        if not v:FindFirstChild("MobEap") then
                            local BillboardGui = Instance.new("BillboardGui")
                            local TextLabel = Instance.new("TextLabel")
                            BillboardGui.Parent = v
                            BillboardGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
                            BillboardGui.Active = true
                            BillboardGui.Name = "MobEap"
                            BillboardGui.AlwaysOnTop = true
                            BillboardGui.LightInfluence = 1.000
                            BillboardGui.Size = UDim2.new(0, 200, 0, 50)
                            BillboardGui.StudsOffset = Vector3.new(0, 2.5, 0)
                            TextLabel.Parent = BillboardGui
                            TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                            TextLabel.BackgroundTransparency = 1.000
                            TextLabel.Size = UDim2.new(0, 200, 0, 50)
                            TextLabel.Font = Enum.Font.GothamBold
                            TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
                            TextLabel.Text.Size = 35
                        end
                        local Dis = math.floor((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude)
                        v.MobEap.TextLabel.Text = v.Name.." - "..Dis.." Distance"
                    end
                end
            else
                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                    if v:FindFirstChild("MobEap") then
                        v.MobEap:Destroy()
                    end
                end
            end
        end)
    end
end)
spawn(function()
    while wait() do
        pcall(function()
            if SeaESP then
                for i,v in pairs(game:GetService("Workspace").SeaBeasts:GetChildren()) do
                    if v:FindFirstChild('HumanoidRootPart') then
                        if not v:FindFirstChild("Seaesps") then
                            local BillboardGui = Instance.new("BillboardGui")
                            local TextLabel = Instance.new("TextLabel")
                            BillboardGui.Parent = v
                            BillboardGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
                            BillboardGui.Active = true
                            BillboardGui.Name = "Seaesps"
                            BillboardGui.AlwaysOnTop = true
                            BillboardGui.LightInfluence = 1.000
                            BillboardGui.Size = UDim2.new(0, 200, 0, 50)
                            BillboardGui.StudsOffset = Vector3.new(0, 2.5, 0)
                            TextLabel.Parent = BillboardGui
                            TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                            TextLabel.BackgroundTransparency = 1.000
                            TextLabel.Size = UDim2.new(0, 200, 0, 50)
                            TextLabel.Font = Enum.Font.GothamBold
                            TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
                            TextLabel.Text.Size = 35
                        end
                        local Dis = math.floor((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude)
                        v.Seaesps.TextLabel.Text = v.Name.." - "..Dis.." Distance"
                    end
                end
            else
                for i,v in pairs (game:GetService("Workspace").SeaBeasts:GetChildren()) do
                    if v:FindFirstChild("Seaesps") then
                        v.Seaesps:Destroy()
                    end
                end
            end
        end)
    end
end)
spawn(function()
    while wait() do
        pcall(function()
            if NpcESP then
                for i,v in pairs(game:GetService("Workspace").NPCs:GetChildren()) do
                    if v:FindFirstChild('HumanoidRootPart') then
                        if not v:FindFirstChild("NpcEspes") then
                            local BillboardGui = Instance.new("BillboardGui")
                            local TextLabel = Instance.new("TextLabel")
                            BillboardGui.Parent = v
                            BillboardGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
                            BillboardGui.Active = true
                            BillboardGui.Name = "NpcEspes"
                            BillboardGui.AlwaysOnTop = true
                            BillboardGui.LightInfluence = 1.000
                            BillboardGui.Size = UDim2.new(0, 200, 0, 50)
                            BillboardGui.StudsOffset = Vector3.new(0, 2.5, 0)
                            TextLabel.Parent = BillboardGui
                            TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                            TextLabel.BackgroundTransparency = 1.000
                            TextLabel.Size = UDim2.new(0, 200, 0, 50)
                            TextLabel.Font = Enum.Font.GothamBold
                            TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
                            TextLabel.Text.Size = 35
                        end
                        local Dis = math.floor((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude)
                        v.NpcEspes.TextLabel.Text = v.Name.." - "..Dis.." Distance"
                    end
                end
            else
                for i,v in pairs (game:GetService("Workspace").NPCs:GetChildren()) do
                    if v:FindFirstChild("NpcEspes") then
                        v.NpcEspes:Destroy()
                    end
                end
            end
        end)
    end
end)
function AutoHaki()
    if not game:GetService("Players").LocalPlayer.Character:FindFirstChild("HasBuso") then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
    end
end
function UnEquipWeapon(Weapon)
    if game.Players.LocalPlayer.Character:FindFirstChild(Weapon) then
        _G.NotAutoEquip = true
        game.Players.LocalPlayer.Character:FindFirstChild(Weapon).Parent = game.Players.LocalPlayer.Backpack
        _G.NotAutoEquip = false
    end
end       
function EquipWeapon(ToolSe)
    if not _G.NotAutoEquip then
        if game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe) then
            Tool = game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe)
            game.Players.LocalPlayer.Character.Humanoid:EquipTool(Tool)
        end
    end
end
function BTP(p)
    	pcall(function()
	    	if (p.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >= 1500 and not Auto_Raid and game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
			repeat wait()
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = p
				wait(1)
				game.Players.LocalPlayer.Character.Head:Destroy()
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = p
			until (p.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 1500 and game.Players.LocalPlayer.Character.Humanoid.Health > 0
	    end
    end)
end
function fastpos(Pos)
    Distance = (Pos.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
    Speed = 1000
    game:GetService("TweenService"):Create(
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart,
        TweenInfo.new(Distance / Speed, Enum.EasingStyle.Linear),
        { CFrame = Pos }
    ):Play()
end
-- or (game:GetService("Workspace").Enemies:FindFirstChild("Shark") and _G.AutoKillShark) or (game:GetService("Workspace").Enemies:FindFirstChild("Terrorshark") and _G.AutoTerrorshark) or (game:GetService("Workspace").Enemies:FindFirstChild("Piranha") and _G.AutoKillPiranha) or (game:GetService("Workspace").Enemies:FindFirstChild("Fish Crew Member") and _G.AutoKillFishCrew)
function TPB(pos, boat)
    tween_s = game:GetService("TweenService")
    info = TweenInfo.new((boat.CFrame.Position - pos.Position).Magnitude / getgenv().SpeedBoat, Enum.EasingStyle.Linear)
    tween = tween_s:Create(boat, info, {CFrame = pos})
    stopboat = {}
    function stopboat:Stop()
        tween:Cancel()
    end
    if (boat.CFrame.Position - pos.Position).Magnitude <= 25 then
        stopboat:Stop()
    else
        tween:Play()
    end
    return stopboat
end
function EquipAllWeapon()
    pcall(function()
        for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
            if v:IsA('Tool') and not (v.Name == "Summon Sea Beast" or v.Name == "Water Body" or v.Name == "Awakening") then
                local ToolHumanoid = game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name) 
                game.Players.LocalPlayer.Character.Humanoid:EquipTool(ToolHumanoid) 
                wait(1)
            end
        end
    end)
end
    function CheckNearestTeleporter(aI)
        local MyLevel = game.Players.LocalPlayer.Data.Level.Value
        vcspos = aI.Position
        min = math.huge
        min2 = math.huge
        local y = game.PlaceId
        if y == 2753915549 then
            OldWorld = true
        elseif y == 4442272183 then
            NewWorld = true
        elseif y == 7449423635 then
            ThreeWorld = true
        end
        if World3 then
            TableLocations = {
                ["Caslte On The Sea"] = Vector3.new(-5058.77490234375, 314.5155029296875, -3155.88330078125),
                ["Hydra"] = Vector3.new(5756.83740234375, 610.4240112304688, -253.9253692626953),
                ["Mansion"] = Vector3.new(-12463.8740234375, 374.9144592285156, -7523.77392578125),
                ["Great Tree"] = Vector3.new(28282.5703125, 14896.8505859375, 105.1042709350586),
                ["Ngu1"] = Vector3.new(-11993.580078125, 334.7812805175781, -8844.1826171875),
                ["ngu2"] = Vector3.new(5314.58203125, 25.419387817382812, -125.94227600097656)
            }
        elseif World2 then
            TableLocations = {
                ["Mansion"] = Vector3.new(-288.46246337890625, 306.130615234375, 597.9988403320312),
                ["Flamingo"] = Vector3.new(2284.912109375, 15.152046203613281, 905.48291015625),
                ["122"] = Vector3.new(923.21252441406, 126.9760055542, 32852.83203125),
                ["3032"] = Vector3.new(-6508.5581054688, 89.034996032715, -132.83953857422)
            }
        elseif World1 then
            TableLocations = {
                ["1"] = Vector3.new(-7894.6201171875, 5545.49169921875, -380.2467346191406),
                ["2"] = Vector3.new(-4607.82275390625, 872.5422973632812, -1667.556884765625),
                ["3"] = Vector3.new(61163.8515625, 11.759522438049316, 1819.7841796875),
                ["4"] = Vector3.new(3876.280517578125, 35.10614013671875, -1939.3201904296875)
            }
        end
        TableLocations2 = {}
        for r, v in pairs(TableLocations) do
            TableLocations2[r] = (v - vcspos).Magnitude
        end
        for r, v in pairs(TableLocations2) do
            if v < min then
                min = v
                min2 = v
            end
        end
        for r, v in pairs(TableLocations2) do
            if v < min then
                min = v
                min2 = v
            end
        end
        for r, v in pairs(TableLocations2) do
            if v <= min then
                choose = TableLocations[r]
            end
        end
        min3 = (vcspos - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
        if min2 <= min3 then
            return choose
        end
    end    
    function requestEntrance(aJ)
        args = {"requestEntrance", aJ}
        game.ReplicatedStorage.Remotes.CommF_:InvokeServer(unpack(args))
        oldcframe = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        char = game.Players.LocalPlayer.Character.HumanoidRootPart
        char.CFrame = CFrame.new(oldcframe.X, oldcframe.Y + 50, oldcframe.Z)
        task.wait(0.5)
    end    
    function AntiLowHealth(aK)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
            CFrame.new(
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X,
            aK,
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z
        )
        wait()
    end
    TweenSpeed = 350
    function topos(Tween_Pos)
        pcall(function()
                if game:GetService("Players").LocalPlayer and game:GetService("Players").LocalPlayer.Character and game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid") and game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and  game:GetService("Players").LocalPlayer.Character.Humanoid.Health > 0 and game:GetService("Players").LocalPlayer.Character.HumanoidRootPart then
                    if not TweenSpeed then
                        TweenSpeed = 350
                    end
                    DefualtY = Tween_Pos.Y
                    TargetY = Tween_Pos.Y
                    targetCFrameWithDefualtY = CFrame.new(Tween_Pos.X, DefualtY, Tween_Pos.Z)
                    targetPos = Tween_Pos.Position
                    oldcframe = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                    Distance = (targetPos - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).Magnitude
                    if Distance <= 300 then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Tween_Pos
                    end
                    local aM = CheckNearestTeleporter(Tween_Pos)
                    if aM then
                        pcall(function()
                                tween:Cancel()
                            end)
                        requestEntrance(aM)
                    end
                    b1 = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X,DefualtY,game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z)
                    if IngoreY and (b1.Position - targetCFrameWithDefualtY.Position).Magnitude > 5 then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X,DefualtY,game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z)
                        local tweenfunc = {}
                        local aN = game:service "TweenService"
                        local aO =
                            TweenInfo.new((targetPos -game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).Magnitude /TweenSpeed,Enum.EasingStyle.Linear)
                        tween = aN:Create(game:GetService("Players").LocalPlayer.Character["HumanoidRootPart"],aO,{CFrame = targetCFrameWithDefualtY})
                        tween:Play()
                        function tweenfunc:Stop()
                            tween:Cancel()
                        end
                        tween.Completed:Wait()
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X,TargetY,game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z)
                    else
                        local tweenfunc = {}
                        local aN = game:service "TweenService"
                        local aO =
                            TweenInfo.new((targetPos -game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).Magnitude /TweenSpeed,Enum.EasingStyle.Linear)
                        tween = aN:Create(game:GetService("Players").LocalPlayer.Character["HumanoidRootPart"],aO,{CFrame = Tween_Pos})
                        tween:Play()
                        function tweenfunc:Stop()
                            tween:Cancel()
                        end
                        tween.Completed:Wait()
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X,TargetY,game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z)
                    end
                    if not tween then
                        return tween
                    end
                    return tweenfunc
                end
            end
        )
    end
IngoreY = true
spawn(function()
game:GetService("RunService").Heartbeat:Connect(function()
    if _G.AutoDoughtBoss
      or _G.AutoFarmChest
      or _G.GrabChestMystic
      or _G.AutoFarmBossHallow
      or _G.AutoFarmSwanGlasses
      or _G.AutoElectricClaw
      or _G.AutoHoly
      or _G.AutoLawRaid
      or _G.AutoKillLaw
      or _G.AutoFarmBoss
      or _G.AutoSaber or _G.Namfon or _G.NOCLIP or _G.MasteryFarm or _G.TeleportIsland or _G.Auto_EvoRace or _G.AutoMusketeerHat or _G.CursedCaptain or _G.AutoRengoku or _G.Auto_Rainbow_Haki or _G.AutoObservation or _G.AutoBudySword or _G.AutoSharkman or _G.Auto_Dungeon or _G.Auto_Next_Island or _G.Auto_Kill_Ply or _G.AutoSecondSea or _G.TeleportPly or _G.AutoBartilo or _G.KillRipindra or _G.Auto_DarkBoss or _G.AutoFarm or _G.AutoElitehunter or _G.AutoThirdSea or _G.AutoCakePrince or _G.Autokilldoughking or _G.QuestSoulGuitar or _G.Auto_Dragon_Trident or _G.Autotushita or _G.Autowaden or _G.Autogay or _G.Autopole or _G.Autosaw or _G.AutoObservationHakiV2 or _G.AutoFarmNearest or _G.AutoCarvender or _G.AutoTwinHook or _G.TeleportToFruit or _G.TeleportNPC or _G.Leather or _G.Auto_Wing or _G.Umm or _G.Makori_gay or Radioactive or Fish or Gunpowder or Dragon_Scale or Cocoafarm or Scrap or MiniHee or Auto_Cursed_Dual_Katana or _G.AutoRaidPirate or _G.AutoFactory or Open_Color_Haki or _G.CitizenQuest or _G.SailBoat or _G.RelzFishBoat or _G.RelzPirateBrigade or _G.RelzPirateGrandBrigade or _G.AutoTerrorshark or _G.AutoSeaBest or _G.AutoFrozenDimension or _G.KillLevi or _G.AutoComplete_Race or _G.Kill_Trial_V4 or _G.Quest_Nhu_Cai_Lon or _G.TeleportMigare or _G.Luom_Gear then
        if not game:GetService("Workspace"):FindFirstChild("LOL") then
              local LOL = Instance.new("Part")
              LOL.Name = "LOL"
              LOL.Parent = game.Workspace
              LOL.Anchored = true
              LOL.Transparency = 1
              LOL.Size = Vector3.new(1,-0.5,1)
          elseif game:GetService("Workspace"):FindFirstChild("LOL") then
               game.Workspace["LOL"].CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, -3.6, 0)
            end
        else
            if game:GetService("Workspace"):FindFirstChild("LOL") then
               game:GetService("Workspace"):FindFirstChild("LOL"):Destroy()
           end
        end
    end)
end)
    local function StopTween()
    if _G.StopTween then
        return
    end    
    _G.StopTween = true
    wait()
    local player = game.Players.LocalPlayer
    local character = player.Character
    if character and character:IsDescendantOf(game.Workspace) then
        local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
        if humanoidRootPart then
            humanoidRootPart.CFrame = humanoidRootPart.CFrame
        end
    end
    wait()    
    if character:FindFirstChild("BodyClip") then
        character.BodyClip:Destroy()
    end
    if character:FindFirstChild("PartTele") then
        character.PartTele:Destroy()
    end
    _G.StopTween = false
end
function BTP(P1)
game.Players.LocalPlayer.Character.Head:Destroy()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = P1
wait(1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = P1
end
spawn(function()
			while task.wait() do
				pcall(function()
					if _G.AutoDoughtBoss or _G.AutoFarmChest or _G.GrabChestMystic or _G.AutoFarmBossHallow or _G.AutoFarmSwanGlasses or _G.AutoElectricClaw or _G.AutoHoly or _G.AutoLawRaid or _G.AutoKillLaw or _G.AutoFarmBoss or _G.AutoSaber or _G.Namfon or _G.NOCLIP or _G.MasteryFarm or _G.TeleportIsland or _G.Auto_EvoRace or _G.AutoMusketeerHat or _G.CursedCaptain or _G.AutoEctoplasm or _G.AutoRengoku or _G.Auto_Rainbow_Haki or _G.AutoObservation or _G.AutoBudySword or _G.AutoSharkman or _G.Auto_Dungeon or _G.Auto_Next_Island or _G.Auto_Kill_Ply or _G.AutoSecondSea or _G.TeleportPly or _G.AutoBartilo or _G.KillRipindra or _G.Auto_DarkBoss or _G.AutoFarm or _G.AutoElitehunter or _G.AutoThirdSea or _G.AutoCakePrince or _G.Autokilldoughking or _G.Autodoughking or _G.QuestSoulGuitar or _G.Auto_Dragon_Trident or _G.Autotushita or _G.Autowaden or _G.Autogay or _G.Autopole or _G.Autosaw or _G.AutoObservationHakiV2 or _G.AutoFarmNearest or _G.AutoCarvender or _G.AutoTwinHook or _G.TeleportToFruit or _G.TeleportNPC or _G.Leather or _G.Auto_Wing or _G.Umm or _G.Makori_gay or Radioactive or Fish or Gunpowder or Dragon_Scale or Cocoafarm or Scrap or MiniHee or Auto_Cursed_Dual_Katana or _G.AutoRaidPirate or _G.AutoFactory or Open_Color_Haki or _G.CitizenQuest or _G.SailBoat or _G.RelzFishBoat or _G.RelzPirateBrigade or _G.RelzPirateGrandBrigade or _G.AutoTerrorshark or _G.AutoSeaBest or _G.AutoFrozenDimension or _G.KillLevi or _G.AutoComplete_Race or _G.Kill_Trial_V4 or _G.Quest_Nhu_Cai_Lon or _G.TeleportMigare or _G.Luom_Gear then
			 if not game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
					local Noclip = Instance.new("BodyVelocity")
					Noclip.Name = "BodyClip"
					Noclip.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
					Noclip.MaxForce = Vector3.new(100000,100000,100000)
					Noclip.Velocity = Vector3.new(0,0,0)
				end
			else
			    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip"):Destroy()
		    end
	    end)
    end
end)
spawn(function()
  pcall(function()
    game:GetService("RunService").Stepped:Connect(function()
      if _G.AutoDoughtBoss or _G.AutoFarmChest or _G.GrabChestMystic or _G.AutoFarmBossHallow or _G.AutoFarmSwanGlasses or _G.AutoElectricClaw or _G.AutoHoly or _G.AutoLawRaid or _G.AutoKillLaw or _G.AutoFarmBoss or _G.AutoSaber or _G.Namfon or _G.NOCLIP or _G.MasteryFarm or _G.TeleportIsland or _G.Auto_EvoRace or _G.AutoMusketeerHat or _G.CursedCaptain or _G.AutoEctoplasm or _G.AutoRengoku or _G.Auto_Rainbow_Haki or _G.AutoObservation or _G.AutoBudySword or _G.AutoSharkman or _G.Auto_Dungeon or _G.Auto_Next_Island or _G.Auto_Kill_Ply or _G.AutoSecondSea or _G.TeleportPly or _G.AutoBartilo or _G.KillRipindra or _G.Auto_DarkBoss or _G.AutoFarm or _G.AutoElitehunter or _G.AutoThirdSea or _G.AutoCakePrince or _G.Autokilldoughking or _G.Autodoughking or _G.QuestSoulGuitar or _G.Auto_Dragon_Trident or _G.Autotushita or _G.Autowaden or _G.Autogay or _G.Autopole or _G.Autosaw or _G.AutoObservationHakiV2 or _G.AutoFarmNearest or _G.AutoCarvender or _G.AutoTwinHook or _G.TeleportToFruit or _G.TeleportNPC or _G.Leather or _G.Auto_Wing or _G.Umm or _G.Makori_gay or Radioactive or Fish or Gunpowder or Dragon_Scale or Cocoafarm or Scrap or MiniHee or Auto_Cursed_Dual_Katana or _G.AutoRaidPirate or _G.AutoFactory or Open_Color_Haki or _G.CitizenQuest or _G.SailBoat or _G.RelzFishBoat or _G.RelzPirateBrigade or _G.RelzPirateGrandBrigade or _G.AutoTerrorshark or _G.AutoSeaBest or _G.AutoFrozenDimension or _G.KillLevi or _G.AutoComplete_Race or _G.Kill_Trial_V4 or _G.Quest_Nhu_Cai_Lon or _G.TeleportMigare or _G.Luom_Gear then
                    for i,v in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
                    if v:IsA("BasePart") then
                    v.CanCollide = false
                    end
                end
            end
        end)
    end)
end)
spawn(function()
    while wait() do
        if _G.AutoFarm or _G.Kill_Trial_V4 == true then
            pcall(function()
                game:GetService("ReplicatedStorage").Remotes.CommE:FireServer("Ken",true)
            end)
        end    
    end
end) 
spawn(function() 
    while wait() do
        if _G.SpinPos then
            Pos = CFrame.new(0,PosY,-40)
            task.wait(0.1)
            Pos = CFrame.new(-40,PosY,0)
            task.wait(0.1)
            Pos = CFrame.new(0,PosY,40)
            task.wait(0.1)
            Pos = CFrame.new(40,PosY,0)
        else
            Pos = CFrame.new(0,PosY,0)
        end
    end
end)
spawn(function()
    while wait() do
        if (_G.AutoSeaBest and CheckSeaBeast()) then
            Pos = CFrame.new(math.random(-600, 600), math.random(0, 300), math.random(-600, 600))
        end
    end
end)   
local plr = game:GetService("Players").LocalPlayer
spawn(function()
     pcall(function()
         while wait() do
            for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do  
                if v:IsA("Tool") then
                    if v:FindFirstChild("RemoteFunctionShoot") then 
                        SelectWeaponGun = v.Name
                    end
                end
            end
        end
    end)
end)
game:GetService("Players").LocalPlayer.Idled:connect(function()
game:GetService("VirtualUser"):Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
wait(1)
game:GetService("VirtualUser"):Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)
function StoreFruit()
    for i,v in pairs(thelocal.Backpack:GetChildren()) do
        if v:IsA("Tool") and string.find(v.Name, "Fruit") then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit",v:GetAttribute("OriginalName"),v)
        end
    end
end
function CheckColorRipIndra()
    mmb = {}
    for r, v in next, game:GetService("Workspace").Map["Boat Castle"].Summoner.Circle:GetChildren() do
        if v:IsA("Part") and v:FindFirstChild("Part") and v.Part.BrickColor.Name == "Dark stone grey" then
            mmb[v.BrickColor.Name] = v
        end
    end
    return mmb
end
function AutoActiveColorRip_Indra()
    for r, v in pairs(CheckColorRipIndra()) do
        ActivateColor(r)
        topos(v.CFrame)
        firetouchinterest(v.TouchInterest)
    end
end
function ActivateColor(cw)
    haki = {["Hot pink"] = "Winter Sky", ["Really red"] ="Pure Red", ["Oyster"] = "Snow White"}
    runnay = haki[cw]
    if runnay then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("activateColor", runnay)
    end
end
function CheckPirateBoat()
    local cocailon = {"PirateBasic", "PirateBrigade"}
    for r, v in next, game:GetService("Workspace").Enemies:GetChildren() do
        if table.find(cocailon, v.Name) and v:FindFirstChild("Health") and v.Health.Value > 0 then
            return v
        end
    end
end
function CheckItem(ah)
    for k, v in pairs(game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("getInventory")) do
        if v.Name == ah then
            return v
        end
    end
end
function CheckItemBPCRBPCR(name)
    chbp = {game.Players.LocalPlayer.Character,game.Players.LocalPlayer.Backpack}
    for i, v in pairs(chbp) do
        if v:FindFirstChild(name) then
            return v:FindFirstChild(name)
        end
    end
end
local function StartDialog(DialogName)
       local ReplicatedStorage = game:GetService("ReplicatedStorage")
       local DialogueController = require(ReplicatedStorage.DialogueController)
       local DialoguesList = require(ReplicatedStorage.DialoguesList)  
       for Index,Dialog in pairs(DialoguesList) do
          if tostring(Index) == DialogName then
            DialogueController.Start(DialogueController, Dialog)
        end
    end
end
function IsIslandRaid(cu)
    if game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island " .. cu) then
        min = 4500
        for r, v in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
            if
                v.Name == "Island " .. cu and
                    (v.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < min
             then
                min = (v.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
            end
        end
        for r, v in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
            if
                v.Name == "Island " .. cu and
                    (v.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= min
             then
                return v
            end
        end
    end
end
function getNextIsland()
    for r, v in pairs({5, 4, 3, 2, 1}) do
        if IsIslandRaid(v) and (IsIslandRaid(v).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4500 then
            return IsIslandRaid(v)
        end
    end
end
function CheckIsRaiding()
    checkraid1 = game.Players.LocalPlayer.PlayerGui.Main.Timer.Visible == true
    checkraid2 = getNextIsland()
    if checkraid1 then
        return checkraid1
    end
    return checkraid2
end
function GetNameRaid()
    local table_GetNameRaid = {}
    local Rc = require(game:GetService("ReplicatedStorage").Raids).raids
    local Rb = require(game:GetService("ReplicatedStorage").Raids).advancedRaids
    for _,RaidName in pairs({Rc, Rb}) do
        for _,RaidName2 in pairs(RaidName) do
            if RaidName2 ~= " " and RaidName2 ~= "" then
                table.insert(table_GetNameRaid, RaidName2)
            end
        end
    end
    return table_GetNameRaid
end
function Kill_Aura()
    for i,v in pairs(game.Workspace.Enemies:GetDescendants()) do
        if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
            repeat wait(.1)
                v.Humanoid.Health = 0
                v.HumanoidRootPart.CanCollide = false
                sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
            until not v or not v:FindFirstChild("Humanoid") or v.Humanoid.Health == 0
        end
    end
end
function Start_Raid()
    pcall(function ()
        if World2 then
            fireclickdetector(game.Workspace.Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector)
        elseif World3 then
            fireclickdetector(game.Workspace.Map["Boat Castle"].RaidSummon2.Button.Main.ClickDetector)
        end        
    end)
end
local realbhit = require(game.ReplicatedStorage.CombatFramework.RigLib)
local cooldownfastattack = tick()
local plr = game.Players.LocalPlayer
local Players = game:GetService("Players")
local playerCount = #game:GetService("Players"):GetPlayers()
local CheckLuOcCho = #game:GetService("Players"):GetPlayers()
if not LPH_OBFUSCATED then
	LPH_JIT_MAX = (function(...) return ... end)
	LPH_NO_VIRTUALIZE = (function(...) return ... end)
	LPH_NO_UPVALUES = (function(...) return ... end)
end
NoAttackAnimation = true
local DmgAttack = game:GetService("ReplicatedStorage").Assets.GUI:WaitForChild("DamageCounter")
local PC = require(game.Players.LocalPlayer.PlayerScripts.CombatFramework.Particle)
local RL = require(game:GetService("ReplicatedStorage").CombatFramework.RigLib)
local oldRL = RL.wrapAttackAnimationAsync
RL.wrapAttackAnimationAsync = function(a, b, c, d, func)
    if not NoAttackAnimation then
        return oldRL(a, b, c, 60, func)
    end
    local Hits = {}
    local Client = game.Players.LocalPlayer
    local Characters = game:GetService("Workspace").Characters:GetChildren()
    for i, v in pairs(Characters) do
        local Human = v:FindFirstChildOfClass("Humanoid")
        if v.Name ~= game.Players.LocalPlayer.Name and Human and Human.RootPart and Human.Health > 0 and Client:DistanceFromCharacter(Human.RootPart.Position) < 65 then
            table.insert(Hits, Human.RootPart)
        end
    end
    local Enemies = game:GetService("Workspace").Enemies:GetChildren()
    for i, v in pairs(Enemies) do
        local Human = v:FindFirstChildOfClass("Humanoid")
        if Human and Human.RootPart and Human.Health > 0 and Client:DistanceFromCharacter(Human.RootPart.Position) < 65 then
            table.insert(Hits, Human.RootPart)
        end
    end
    a:Play(0.01, 0.01, 0.01)
    pcall(func, Hits)
end
getAllBladeHits = LPH_NO_VIRTUALIZE(function(Sizes)
    local Hits = {}
    local Client = game.Players.LocalPlayer
    local Enemies = game:GetService("Workspace").Enemies:GetChildren()
    for i, v in pairs(Enemies) do
        local Human = v:FindFirstChildOfClass("Humanoid")
        if Human and Human.RootPart and Human.Health > 0 and Client:DistanceFromCharacter(Human.RootPart.Position) < Sizes + 5 then
            table.insert(Hits, Human.RootPart)
        end
    end
    return Hits
end)
getAllBladeHitsPlayers = LPH_NO_VIRTUALIZE(function(Sizes)
    local Hits = {}
    local Client = game.Players.LocalPlayer
    local Characters = game:GetService("Workspace").Characters:GetChildren()
    for i, v in pairs(Characters) do
        local Human = v:FindFirstChildOfClass("Humanoid")
        if v.Name ~= game.Players.LocalPlayer.Name and Human and Human.RootPart and Human.Health > 0 and Client:DistanceFromCharacter(Human.RootPart.Position) < Sizes + 5 then
            table.insert(Hits, Human.RootPart)
        end
    end
    return Hits
end)
local CombatFramework = require(game:GetService("Players").LocalPlayer.PlayerScripts:WaitForChild("CombatFramework"))
local CombatFrameworkR = getupvalues(CombatFramework)[2]
local RigEven = game:GetService("ReplicatedStorage").RigControllerEvent
local AttackAnim = Instance.new("Animation")
local AttackCoolDown = 0
local cooldowntickFire = 0
local MaxFire = 1000
local FireCooldown = 0.06
local FireL = 0
local bladehit = {}
CancelCoolDown = LPH_JIT_MAX(function()
    local ac = CombatFrameworkR.activeController
    if ac and ac.equipped then
        AttackCoolDown = tick() + (FireCooldown or 0.01) + ((FireL / MaxFire) * 0.3)
        RigEven.FireServer(RigEven, "weaponChange", ac.currentWeaponModel.Name)
        FireL = FireL + 1
        task.delay((FireCooldown or 0.01) + ((FireL + 0.3 / MaxFire) * 0.3), function()
            FireL = FireL - 1
        end)
    end
end)
AttackFunction = LPH_JIT_MAX(function(typef)
    local ac = CombatFrameworkR.activeController
    if ac and ac.equipped then
        local bladehit = {}
        if typef == 1 then
            bladehit = getAllBladeHits(60)
        elseif typef == 2 then
            bladehit = getAllBladeHitsPlayers(65)
        else
            for i2, v2 in pairs(getAllBladeHits(55)) do
                table.insert(bladehit, v2)
            end
            for i3, v3 in pairs(getAllBladeHitsPlayers(55)) do
                table.insert(bladehit, v3)
            end
        end
        if #bladehit > 0 then
            pcall(task.spawn, ac.attack, ac)
            if tick() > AttackCoolDown then
                CancelCoolDown()
            end
            if tick() - cooldowntickFire > 0.3 then
                ac.timeToNextAttack = 0
                ac.hitboxMagnitude = 60
                pcall(task.spawn, ac.attack, ac)
                cooldowntickFire = tick()
            end
            local AMI3 = ac.anims.basic[3]
            local AMI2 = ac.anims.basic[2]
            local REALID = AMI3 or AMI2
            AttackAnim.AnimationId = REALID
            local StartP = ac.humanoid:LoadAnimation(AttackAnim)
            StartP:Play(0.01, 0.01, 0.01)
            RigEven.FireServer(RigEven, "hit", bladehit, AMI3 and 3 or 2, "")
            task.delay(0, function()
                StartP:Stop()
            end)
        end
    end
end)
function CheckStun()
    if game:GetService('Players').LocalPlayer.Character:FindFirstChild("Stun") then
        return game:GetService('Players').LocalPlayer.Character.Stun.Value ~= 0
    end
    return false
end
LPH_JIT_MAX(function()
    spawn(function()
        while game:GetService("RunService").Stepped:Wait() do
            local ac = CombatFrameworkR.activeController
            if ac and ac.equipped and not CheckStun() then
                if NeedAttacking and Fast_Attack then
                    task.spawn(function()
                        pcall(task.spawn, AttackFunction, 1)
                    end)
                elseif DamageAura then
                    task.spawn(function()
                        pcall(task.spawn, AttackFunction, 3)
                    end)
                elseif UsefastattackPlayers and Fast_Attack then
                    task.spawn(function()
                        pcall(task.spawn, AttackFunction, 2)
                    end)
                elseif NeedAttacking and Fast_Attack == false then
                    if ac.hitboxMagnitude ~= 55 then
                        ac.hitboxMagnitude = 55
                    end
                    pcall(task.spawn, ac.attack, ac)
                end
            end
        end
    end)
end)()
require(game.ReplicatedStorage.Util.CameraShaker):Stop()
hookfunction(require(game:GetService("ReplicatedStorage").Effect.Container.Death), function()end)
hookfunction(require(game:GetService("ReplicatedStorage").Effect.Container.Respawn), function()end)
player = game.Players.LocalPlayer
L1 = Instance.new("ScreenGui")
L2 = Instance.new("TextButton")
L3 = Instance.new("UICorner")
L4 = Instance.new("ImageLabel")
sound = Instance.new("Sound")
L3.Name = "UICorner"
L3.Parent = L2
L4.Name = "ButtonImage"
L4.Parent = L2
L4.BackgroundColor3 = Color3.fromRGB(214, 11, 11)
L4.BackgroundTransparency = 1.000
L4.BorderSizePixel = 0
L4.Position = UDim2.new(0.1, 0, 0.1, 0) 
L4.Size = UDim2.new(0, 45, 0, 45)
L4.Image = ""
L1.Name = "MainGui"
L1.Parent = player:WaitForChild("PlayerGui")
L1.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
L2.Name = "CustomButton"
L2.Parent = L1
L2.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
L2.BackgroundTransparency = 0.2
L2.BorderSizePixel = 0
L2.Position = UDim2.new(0.1208, 0, 0.0953, 0)
L2.Size = UDim2.new(0, 50, 0, 50)
L2.Font = Enum.Font.LuckiestGuy
L2.Text = "Hiru Hub"
L2.TextColor3 = Color3.fromRGB(214, 11, 11)
L2.TextSize = 9.000
L2.Draggable = true
sound.Parent = L2
sound.SoundId = "rbxassetid://130785805"
L2.MouseButton1Click:Connect(function()
    game:GetService("VirtualInputManager"):SendKeyEvent(true, Enum.KeyCode.LeftControl, false, game)
    sound:Play()
end) 
ScreenGui = Instance.new("ScreenGui")
TextLabel = Instance.new("TextLabel")
UIGradient = Instance.new("UIGradient")
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
TextLabel.Parent = ScreenGui
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.359138072, 0, -0.025062656, 0)
TextLabel.Size = UDim2.new(0, 200, 0, 50)
TextLabel.Font = Enum.Font.FredokaOne
TextLabel.Text = "discord.gg/ZwRXDs4M"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 19.000
UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(0.01, Color3.fromRGB(23, 48, 235)), ColorSequenceKeypoint.new(0.16, Color3.fromRGB(55, 23, 235)), ColorSequenceKeypoint.new(0.35, Color3.fromRGB(219, 13, 30)), ColorSequenceKeypoint.new(0.68, Color3.fromRGB(8, 152, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(114, 187, 255))}
UIGradient.Parent = TextLabel
print("--[[Loaded UI]]--")
Fluent = loadstring(game:HttpGet("https://raw.githubusercontent.com/NGUYENVUDUY1/HiruEluent/refs/heads/main/FixedFluent.lua"))()
SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()
Window = Fluent:CreateWindow({
    Title = "<font color='rgb(214, 11, 11)'>Hiru Hub</font>",
    SubTitle = "<font color='rgb(11, 150, 214)'>•By Kiddo</font>",
    TabWidth = 157,
    Size = UDim2.fromOffset(590, 320),
    Acrylic = false, 
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.LeftControl 
})
infor = Window:AddTab({ Title = "Tab Owner", Icon = "rbxassetid://10723415903" })
infor:AddParagraph({
        Title = "BLOX FRUIT",
        Content = "🟢"
})
infor:AddParagraph({
        Title = "👥️ DEVELOPER",
        Content = "HIRU HUB , MATSUNE HUB"
})
infor:AddButton({
        Title = "Discord Hiru Hub",
        Description = "Copy Link Discord",
        Callback = function()
        setclipboard("https://discord.gg/ZwRXDs4M")
    end
})    
infor:AddButton({
        Title = "YouTube Hiru Hub",
        Description = "Copy Link YouTube",
        Callback = function()
        setclipboard("https://www.youtube.com/@HIRU_HUB")
    end
})
infor:AddButton({
        Title = "Ugphone × Hiru Hub",
        Description = "Copy Link Ugphone",
        Callback = function()
        setclipboard("https://www.ugphone.com/toc-page/promotion/#/r?partner_id=563acdcc-8dd0-9cfc-fde6-8c29fe439868&invitation_code=df0228")
    end
})
Shop = Window:AddTab({ Title = "Tab Shop", Icon = "rbxassetid://6031265976" })
sex = {
        "NOOB2ADMIN",
        "CODESLIDE",
        "DRAGONABUSE",
        "Sub2OfficialNoobie",
        "Sub2Daigrock",
        "Sub2NoobMaster123",
        "Bluxxy",
        "JCWK",
        "Enyu_is_Pro",
        "Sub2Fer999",
        "kittgaming",
        "TheGreatAce",
        "StrawHatMaine",
        "TantaiGaming",
        "Axiore",
        "SUB2GAMERROBOT_EXP1",
        "MagicBus",
        "StarcodeHEO",
        "Sub2CaptainMaui",
        "krazydares",
        "fruitconcepts",
        "ADMINHACKED",
}
Shop:AddButton({
        Title = "Redeem Code",
        Description = "",
        Callback = function()            
function RedeemCode(value)
    game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(value)
end
   for i,v in pairs(sex) do
   RedeemCode(v)
end
end
})
Shop:AddButton({
        Title = "Teleport to First Sea",
        Description = "",
        Callback = function()            
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelMain")
    end
})    
Shop:AddButton({
        Title = "Teleport to Second Sea",
        Description = "",
        Callback = function()            
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
    end
})    
Shop:AddButton({
        Title = "Teleport to Third Sea",
        Description = "",
        Callback = function()            
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
    end
})
Shop:AddParagraph({
        Title = "Fighting Shop",
        Content = "---------------------"
})
Shop:AddButton({
	Title = "Black Leg",
	Description = "",
	Callback = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBlackLeg")
	end
})
Shop:AddButton({
	Title = "Fishman Karate",
	Description = "",
	Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate")
	end
})
Shop:AddButton({
	Title = "Electro",
	Description = "",
	Callback = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro")
	end
})
Shop:AddButton({
	Title = "Dragon Breath",
	Description = "",
	Callback = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","1")
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","2")
	end
})
Shop:AddButton({
	Title = "SuperHuman",
	Description = "",
	Callback = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman")
	end
})
Shop:AddButton({
	Title = "Death Step",
	Description = "",
	Callback = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep")
	end
})
Shop:AddButton({
	Title = "Sharkman Karate",
	Description = "",
	Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate",true)
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
	end
})
Shop:AddButton({
	Title = "Electric Claw",
	Description = "",
	Callback = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
	end
})
Shop:AddButton({
	Title = "Dragon Talon",
	Description = "",
	Callback = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")
	end
})
Shop:AddButton({
	Title = "God Human",
	Description = "",
	Callback = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman")
	end
})
Shop:AddButton({
	Title = "Sanguine Art",
	Description = "",
	Callback = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySanguineArt", true)
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySanguineArt")
	end
})
Shop:AddParagraph({
        Title = "Misc Shop",
        Content = "---------------------"
})    
Shop:AddButton({
        Title = "Buy Refund Stat (2500F)",
        Description = "",
        Callback = function()            
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Refund","1")
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Refund","2")
    end
})
Shop:AddButton({
        Title = "Buy Reroll Race (3000F)",
        Description = "",
        Callback = function()            
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Reroll","1")
	    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Reroll","2")
    end
})
Shop:AddButton({Title = "Buy Ghoul Race", Description = "", Callback = function()            
local args = {[1] = "Ectoplasm", [2] = "BuyCheck", [3] = 4}
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        local args = {[1] = "Ectoplasm", [2] = "Change", [3] = 4}
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
    end
})
Shop:AddButton({
        Title = "Buy Cyborg Race (2500F)",
        Description = "",
        Callback = function()            
local args = {[1] = "CyborgTrainer", [2] = "Buy"}
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
    end
})
ToggleTrueTripleKatana = Shop:AddToggle("ToggleTrueTripleKatana", {Title = "Auto Buy True Triple Katana", Default = _G.AutoBuyTrueTripleKatana})
ToggleTrueTripleKatana:OnChanged(function(Value)
    _G.AutoBuyTrueTripleKatana = Value
end)
task.spawn(function()
    while wait() do
    pcall(function()
      if _G.AutoBuyTrueTripleKatana then
      local A_1 = "MysteriousMan"
      local A_2 = "2"
      local Event = game:GetService("ReplicatedStorage").Remotes["CommF_"]
            Event:InvokeServer(A_1, A_2)
        end
      end)
    end
end)
ToggleLegendarySword = Shop:AddToggle("ToggleLegendarySword", {Title = "Auto Buy Legendary Sword", Default = _G.AutoBuyLegendarySword})
ToggleLegendarySword:OnChanged(function(Value)
    _G.AutoBuyLegendarySword = Value
end)
spawn(function()
    while wait() do
        if _G.AutoBuyLegendarySword then
            pcall(function()
                local args1 = { "LegendarySwordDealer", "1" }
                local args2 = { "LegendarySwordDealer", "2" }
                local args3 = { "LegendarySwordDealer", "3" }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args1))
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args2))
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args3))
                if _G.AutoBuyLegendarySword_Hop and _G.AutoBuyLegendarySword and World2 then
                NotificationLibrary:SendNotification("Warning", "Server HOP...", 6)
                    wait(1)
                    Hop()
                end
            end)
        end
    end
end)
ToggleLegendarySword = Shop:AddToggle("ToggleLegendarySword", {Title = "Auto Buy Legendary Sword Hop", Default = _G.AutoBuyLegendarySword_Hop})
ToggleLegendarySword:OnChanged(function(Value)
    _G.AutoBuyLegendarySword_Hop = Value
end)
ToggleHakiColor = Shop:AddToggle("ToggleHakiColor", {
    Title = "Auto Buy Haki Color",
    Description = "", 
    Default = false })
ToggleHakiColor:OnChanged(function(Value)
    _G.Auto_Buy_Enchancement = Value
end)
spawn(function()
    while wait() do
        if _G.Auto_Buy_Enchancement then
            local args = {
                [1] = "ColorsDealer",
                [2] = "2"
            }
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            if _G.Auto_Buy_Enchancement_Hop and _G.Auto_Buy_Enchancement and not World1 then
            NotificationLibrary:SendNotification("Warning", "Server HOP...", 6)
                wait(1)
                Hop()
            end
        end 
    end
end)
ToggleHakiColor = Shop:AddToggle("ToggleHakiColor", {
    Title = "Auto Buy Haki Color Hop",
    Description = "", 
    Default = false })
ToggleHakiColor:OnChanged(function(Value)
    _G.Auto_Buy_Enchancement_Hop = Value
end)
ToggleTradeBone = Shop:AddToggle("ToggleTradeBone", {Title = "Auto Random Bone", Default = _G.Auto_Random_Bone })
ToggleTradeBone:OnChanged(function(Value)
    _G.Auto_Random_Bone = Value
end)
spawn(function()
   while wait() do
     if _G.Auto_Random_Bone and World3 then
        local args = {
            [1] = "Bones",
            [2] = "Buy",
            [3] = 1,
            [4] = 1
            }
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
       end
    end
end)
Server = Window:AddTab({ Title = "Tab Status And Server", Icon = "rbxassetid://10723364725" })
Usser = Server:AddParagraph({
    Title = "Your Information :",
    Content = "Name : "..game.Players.LocalPlayer.DisplayName.." (@"..game.Players.LocalPlayer.Name..")\nLevel : "..game:GetService("Players").LocalPlayer.Data.Level.Value.."\nBeli : "..game:GetService("Players").LocalPlayer.Data.Beli.Value.."\nFragments : "..game:GetService("Players").LocalPlayer.Data.Fragments.Value.."\nBounty : "..game:GetService("Players").LocalPlayer.leaderstats["Bounty/Honor"].Value.."\nHealth : "..game.Players.LocalPlayer.Character.Humanoid.Health.."/"..game.Players.LocalPlayer.Character.Humanoid.MaxHealth.."\nStamina : "..game.Players.LocalPlayer.Character.Energy.Value.."/"..game.Players.LocalPlayer.Character.Energy.MaxValue.."\nRace : " ..game:GetService("Players").LocalPlayer.Data.Race.Value.."\nDevil Fruit : "..game:GetService("Players").LocalPlayer.Data.DevilFruit.Value..""
})                  
Time = Server:AddParagraph({
        Title = "Time Zone",
        Content = ""
})    
function UpdateOS()
        date = os.date("*t")
        hour = (date.hour) % 24
        ampm = hour < 12 and "AM" or "PM"
        timezone = string.format("%02i:%02i:%02i %s", ((hour -1) % 12) + 1, date.min, date.sec, ampm)
        datetime = string.format("%02d/%02d/%04d", date.day, date.month, date.year)
        LocalizationService = game:GetService("LocalizationService")
        Players = game:GetService("Players")
        player = Players.LocalPlayer
        name = player.Name
        result, code = pcall(function()
            return LocalizationService:GetCountryRegionForPlayerAsync(player)
        end)
        Time:SetDesc(datetime.." - "..timezone.." [ " .. code .. " ]")
end
spawn(function()
        while true do
            UpdateOS()
            game:GetService("RunService").RenderStepped:Wait()
        end
    end)        	    
Timmessss = Server:AddParagraph({
        Title = "Time",
        Content = ""
})
function UpdateTime()
        GameTime = math.floor(workspace.DistributedGameTime+0.5)
        Hour = math.floor(GameTime/(60^2))%24
        Minute = math.floor(GameTime/(60^1))%60
        Second = math.floor(GameTime/(60^0))%60
        Timmessss:SetDesc(Hour.." Hour (h) "..Minute.." Minute (m) "..Second.." Second (s) ")
end
spawn(function()
        while true do
            UpdateTime()
            wait()
        end
    end)    
Miragecheck = Server:AddParagraph({
    Title = "Mirage Island",
    Content = "Status: "
})
spawn(function()
    pcall(function()
        while wait() do
if game.Workspace._WorldOrigin.Locations:FindFirstChild('Mirage Island') then
Miragecheck:SetDesc('✅️')
else
Miragecheck:SetDesc('❌️' )end
        end
    end)
end)        
Kitsunecheck = Server:AddParagraph({
    Title = "Kitsune Island",
    Content = "Status: "
})
spawn(function()
    pcall(function()
        while wait() do
if game:GetService("Workspace").Map:FindFirstChild("KitsuneIsland") then
Kitsunecheck:SetDesc('✅️')
else
Kitsunecheck:SetDesc('❌️' )
        end
           end
    end)
end)
FrozenIsland = Server:AddParagraph({
    Title = "Frozen Dimension",
    Content = "Status: "
})
spawn(function()
pcall(function()
    while wait() do
        if game.Workspace._WorldOrigin.Locations:FindFirstChild('Frozen Dimension') then
            FrozenIsland:SetDesc('✅️')
        else
            FrozenIsland:SetDesc('❌️')
        end
    end
end)
end)
MobCakePrince = Server:AddParagraph({
    Title = "Dimension Killed",
    Content = ""
})
spawn(function()
	while wait() do
		pcall(function()
			if string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 88 then
				MobCakePrince:SetDesc("Kill : "..string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),39,41).."")
			elseif string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 87 then
				MobCakePrince:SetDesc("Kill : "..string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),39,40).."")
			elseif string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 86 then
				MobCakePrince:SetDesc("Kill : "..string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),39,39).." ")
			else
				MobCakePrince:SetDesc("Cake Prince : ✅️")
			end
		end)
	end
end)
CheckRip = Server:AddParagraph({
    Title = "Rip_Indra",
    Content = "Status: "
})
spawn(function()
	while wait() do
		pcall(function()
		   if game:GetService("ReplicatedStorage"):FindFirstChild("rip_indra True Form") or game:GetService("Workspace").Enemies:FindFirstChild("rip_indra") then
		      CheckRip:SetDesc("Status : ✅️")
		   else
		      CheckRip:SetDesc("Status : ❌️")
		   end
		end)
    end
end)
CheckDoughKing = Server:AddParagraph({
    Title = "Dough King",
    Content = "Status: "
})
spawn(function()
	while wait() do
		pcall(function()
		   if game:GetService("ReplicatedStorage"):FindFirstChild("Dough King") or game:GetService("Workspace").Enemies:FindFirstChild("Dough King") then
		      CheckDoughKing:SetDesc("Status : ✅️")
		   else
		      CheckDoughKing:SetDesc("Status : ❌️")
		   end
		end)
    end
end)
EliteHunter = Server:AddParagraph({
    Title = "Elite Hunter",
    Content = "Status: "
})
spawn(function()
    while wait() do
        pcall(function()
            if game:GetService("ReplicatedStorage"):FindFirstChild("Diablo") or game:GetService("ReplicatedStorage"):FindFirstChild("Deandre") or game:GetService("ReplicatedStorage"):FindFirstChild("Urban") or game:GetService("Workspace").Enemies:FindFirstChild("Diablo") or game:GetService("Workspace").Enemies:FindFirstChild("Deandre") or game:GetService("Workspace").Enemies:FindFirstChild("Urban") then
                EliteHunter:SetDesc("Status : ✅️ | Killed:  "..game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter","Progress"))	
            else
                EliteHunter:SetDesc("Status : ❌️ | Killed: "..game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter","Progress"))	
            end
        end)
    end
end)    	
FM = Server:AddParagraph({
        Title = "Full Moon",
        Content = ""
})    
task.spawn(function()
            while task.wait() do
                pcall(function()
                    if game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709149431" then
                        FM:SetDesc("Moon: 5/5")
                    elseif game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709149052" then
                        FM:SetDesc("Moon: 4/5")
                    elseif game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709143733" then
                        FM:SetDesc("Moon: 3/5")
                    elseif game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709150401" then
                        FM:SetDesc("Moon: 2/5")
                    elseif game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709149680" then
                        FM:SetDesc("Moon: 1/5")
                    else
                        FM:SetDesc("Moon: 0/5")
                    end
                end)
            end
    end)    
LegendarySword = Server:AddParagraph({
    Title = "Legendary Sword",
    Content = "Status: "
})
spawn(function()
    pcall(function()
        while wait() do
            if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LegendarySwordDealer", "1") then
                LegendarySword:SetDesc("Shisui")
            elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LegendarySwordDealer","2") then
                LegendarySword:SetDesc("Wando")
            elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LegendarySwordDealer","3") then
                LegendarySword:SetDesc("Saddi")
            else
                LegendarySword:SetDesc("Not Found Legend Swords")
            end
        end
    end)
end)
StatusBone = Server:AddParagraph({
    Title = "Bone",
    Content = ""
})
spawn(function()
		pcall(function()
			while wait() do
				StatusBone:SetDesc("You Have : "..tostring(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Check").." Bones"))
			end
		end)
	end)	        
Input = Server:AddInput("Input", {
        Title = "Input Job Id",
        Default = "",
        Placeholder = "Paste Job Id",
        Numeric = false, -- Only allows numbers
        Finished = false, -- Only calls callback when you press enter
        Callback = function(Value)
        _G.Job = Value
    end
})    
ToggleSpamJoin = Server:AddToggle("ToggleSpamJoin", {Title = "Spam Join", Default = false })
ToggleSpamJoin:OnChanged(function(Value)
_G.Join = Value
end)
spawn(function()
while wait() do
if _G.Join then
game:GetService("TeleportService"):TeleportToPlaceInstance(game.placeId,_G.Job, game.Players.LocalPlayer)
end
end
end)		
Server:AddButton({
        Title = "Join Server",
        Description = "",
        Callback = function()
            game:GetService("TeleportService"):TeleportToPlaceInstance(game.placeId,_G.Job, game.Players.LocalPlayer)
    end
})    
Server:AddButton({
        Title = "Copy JobId",
        Description = "",
        Callback = function()
            setclipboard(tostring(game.JobId))
    end
})
Server:AddButton({
	Title = "Rejoin Server",
	Description = "",
	Callback = function()
		game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
    end
})
Server:AddButton({
	Title = "Hop Server",
	Description = "",
	Callback = function()
    Hop()
    end
})
function Hop()
	local PlaceID = game.PlaceId
	local AllIDs = {}
	local foundAnything = ""
	local actualHour = os.date("!*t").hour
	local Deleted = false
	function TPReturner()
		local Site;
		if foundAnything == "" then
			Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
		else
			Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
		end
		local ID = ""
		if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
			foundAnything = Site.nextPageCursor
		end
		local num = 0;
		for i,v in pairs(Site.data) do
			local Possible = true
			ID = tostring(v.id)
			if tonumber(v.maxPlayers) > tonumber(v.playing) then
				for _,Existing in pairs(AllIDs) do
					if num ~= 0 then
						if ID == tostring(Existing) then
							Possible = false
						end
					else
						if tonumber(actualHour) ~= tonumber(Existing) then
							local delFile = pcall(function()
								AllIDs = {}
								table.insert(AllIDs, actualHour)
							end)
						end
					end
					num = num + 1
				end
				if Possible == true then
					table.insert(AllIDs, ID)
					wait()
					pcall(function()
						wait()
						game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
					end)
					wait(1)
				end
			end
		end
	end
	function Teleport() 
		while wait() do
			pcall(function()
				TPReturner()
				if foundAnything ~= "" then
					TPReturner()
				end
			end)
		end
	end
	Teleport()
end
LGa = Window:AddTab({ Title = "Tab Local Player", Icon = "rbxassetid://10723374981" })
LGa:AddButton({
	Title = "Show Item",
	Description = "",
	Callback = function()
		do
			local ui = game:GetService("CoreGui").RobloxGui.Modules.Profile:FindFirstChild("UILibrary")
			if ui then ui:Destroy() end
		end
		local UserInputService = game:GetService("UserInputService")
		local TweenService = game:GetService("TweenService")
		local RunService = game:GetService("RunService")
		local LocalPlayer = game:GetService("Players").LocalPlayer
		local Mouse = LocalPlayer:GetMouse()
	
		do
			local ui = game:GetService("Lighting"):FindFirstChild("Blur")
			if ui then ui:Destroy() end
		end
		local Blur = Instance.new("BlurEffect")	
		TweenService:Create(
			Blur,
			TweenInfo.new(.4, Enum.EasingStyle.Back, Enum.EasingDirection.InOut),
			{ Size = 50 }
		):Play()
		Blur.Parent = game.Lighting	
		local UIStroke = Instance.new("UIStroke")
		local UICorner = Instance.new("UICorner")	
		local ScreenGui = Instance.new("ScreenGui")
		local ImageButton = Instance.new("ImageButton")
		local RobloxButton = Enum.ButtonStyle.RobloxButton	
		ScreenGui.Parent = game.CoreGui
		ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling	
		local cac = require(game:GetService("Players").LocalPlayer.PlayerGui.Main.UIController.Inventory)
		local Inventory = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory")
		local Items = {}
		local RaityLevel = { "Mythical", "Legendary", "Rare", "Uncommon", "Common" }
		local RaityColor = {
			["Common"] = Color3.fromRGB(179, 179, 179),
			["Uncommon"] = Color3.fromRGB(92, 140, 211),
			["Rare"] = Color3.fromRGB(140, 82, 255),
			["Legendary"] = Color3.fromRGB(213, 43, 228),
			["Mythical"] = Color3.fromRGB(238, 47, 50)
		}
		function GetRaity(color)
			for k, v in pairs(RaityColor) do
				if v == color then return k end
			end
		end	
		for k, v in pairs(Inventory) do
			Items[v.Name] = v
		end	
		local total = #getupvalue(cac.UpdateRender, 4)
		local rac = {}
		local allitem = {}
		local total2 = 0
		while total2 < total do
			local i = 0
			while i < 25000 and total2 < total do
				game:GetService("Players").LocalPlayer.PlayerGui.Main.InventoryContainer.Right.Content.ScrollingFrame.CanvasPosition =
					Vector2.new(0, i)
				for k, v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Main.InventoryContainer.Right.Content.ScrollingFrame.Frame:GetChildren()) do
					if v:IsA("Frame") and not rac[v.ItemName.Text] and v.ItemName.Visible == true then
						local vaihuhu = GetRaity(v.Background.BackgroundColor3)
						if vaihuhu then
							if not allitem[vaihuhu] then
								allitem[vaihuhu] = {}
							end
							table.insert(allitem[vaihuhu], v:Clone())
						end
						total2 = total2 + 1
						rac[v.ItemName.Text] = true
					end
				end
				i = i + 20
			end
			wait()
		end
		function GetXY(vec)
			return vec * 100
		end	
		local tvk = Instance.new("UIListLayout")
		tvk.FillDirection = Enum.FillDirection.Vertical
		tvk.SortOrder = 2
		tvk.Padding = UDim.new(0, 10)	
		local Left = Instance.new("Frame", game.Players.LocalPlayer.PlayerGui.BubbleChat)
		Left.BackgroundTransparency = 1
		Left.Size = UDim2.new(.5, 0, 1, 0)
		tvk.Parent = Left	
		local Right = Instance.new("Frame", game.Players.LocalPlayer.PlayerGui.BubbleChat)
		Right.BackgroundTransparency = 1
		Right.Size = UDim2.new(.5, 0, 1, 0)
		Right.Position = UDim2.new(.6, 0, 0, 0)
		tvk:Clone().Parent = Right
		for k, v in pairs(allitem) do
			local cac = Instance.new("Frame", Left)
			cac.BackgroundTransparency = 1
			cac.Size = UDim2.new(1, 0, 0, 0)
			cac.LayoutOrder = table.find(RaityLevel, k)	
			local cac2 = Instance.new("Frame", Right)
			cac2.BackgroundTransparency = 1
			cac2.Size = UDim2.new(1, 0, 0, 0)
			cac2.LayoutOrder = table.find(RaityLevel, k)	
			local tvk = Instance.new("UIGridLayout", cac)
			tvk.CellPadding = UDim2.new(.005, 0, .005, 0)
			tvk.CellSize = UDim2.new(0, 70, 0, 70)
			tvk.FillDirectionMaxCells = 100
			tvk.FillDirection = Enum.FillDirection.Horizontal	
			local ccc = tvk:Clone()
			ccc.Parent = cac2
			for k, v in pairs(v) do
				if Items[v.ItemName.Text] and Items[v.ItemName.Text].Mastery then
					if v.ItemLine2.Text ~= "Accessory" then
						local bucac                  = v.ItemName:Clone()
						bucac.BackgroundTransparency = 1
						bucac.TextSize               = 10
						bucac.TextXAlignment         = 2
						bucac.TextYAlignment         = 2
						bucac.ZIndex                 = 5
						bucac.Text                   = Items[v.ItemName.Text].Mastery
						bucac.Size                   = UDim2.new(.5, 0, .5, 0)
						bucac.Position               = UDim2.new(.5, 0, .5, 0)
						bucac.Parent                 = v
					end
					v.Parent = cac
				elseif v.ItemLine2.Text == "Blox Fruit" then
					v.Parent = cac2
				end
			end
			cac.AutomaticSize = 2
			cac2.AutomaticSize = 2
		end
		local ListHuhu = {
			["Superhuman"] = Vector2.new(3, 2),
			["DeathStep"] = Vector2.new(4, 3),
			["ElectricClaw"] = Vector2.new(2, 0),
			["SharkmanKarate"] = Vector2.new(0, 0),
			["DragonTalon"] = Vector2.new(1, 5)
		}
		local MeleeG = Instance.new("Frame", Left)
		MeleeG.BackgroundTransparency = 1
		MeleeG.Size = UDim2.new(1, 0, 0, 0)
		MeleeG.LayoutOrder = table.find(RaityLevel, k)
		MeleeG.AutomaticSize = 2
		MeleeG.LayoutOrder = 100
		local tvk = Instance.new("UIGridLayout", MeleeG)
		tvk.CellPadding = UDim2.new(.005, 0, .005, 0)
		tvk.CellSize = UDim2.new(0, 70, 0, 70)
		tvk.FillDirectionMaxCells = 100
		tvk.FillDirection = Enum.FillDirection.Horizontal
	
		local cac = { "Superhuman", "ElectricClaw", "DragonTalon", "SharkmanKarate", "DeathStep", "GodHuman" }
		for k, v in pairs(cac) do
			if ListHuhu[v] and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buy" .. v, true) == 1 then
				local huhu = Instance.new("ImageLabel", MeleeG)
				huhu.Image = "rbxassetid://9945562382"
				huhu.ImageRectSize = Vector2.new(100, 100)
				huhu.ImageRectOffset = ListHuhu[v] * 100
			end
		end
		function formatNumber(v)
			return tostring(v):reverse():gsub("%d%d%d", "%1,"):reverse():gsub("^,", "")
		end	
		game:GetService("Players").LocalPlayer.PlayerGui.Main.Beli.AnchorPoint = Vector2.new(0.5, 0.5)
		game:GetService("Players").LocalPlayer.PlayerGui.Main.Beli.Position = UDim2.new(0, 1120, 0, 700)	
		game:GetService("Players").LocalPlayer.PlayerGui.Main.Level.AnchorPoint = Vector2.new(0.5, 0.5)
		game:GetService("Players").LocalPlayer.PlayerGui.Main.Level.Position = UDim2.new(0, 1150, 0, 750)
		local Name = game:GetService("Players").LocalPlayer.PlayerGui.Main.Fragments:Clone()
		Name.Name = "Name"
		Name.Parent = game:GetService("Players").LocalPlayer.PlayerGui.Main.Beli
		Name.Position = UDim2.new(0, 0, -1.5, 0)
		Name.Size = UDim2.new(1, 0, 1, 0)
		Name.TextColor3 = Color3.fromRGB(255, 255, 255)
		Name.Text = game.Players.LocalPlayer.Name	
		local Fragments = game:GetService("Players").LocalPlayer.PlayerGui.Main.Fragments:Clone()
		Fragments.Name = "FragmentsCheck"
		Fragments.Parent = game:GetService("Players").LocalPlayer.PlayerGui.Main.Beli
		Fragments.Position = UDim2.new(0, 0, -0.75, 0)
		Fragments.Size = UDim2.new(1, 0, 1, 0)
		Fragments.Text = 'ƒ' .. formatNumber(game:GetService("Players").LocalPlayer.Data.Fragments.Value)
		local args = {
			[1] = "getAwakenedAbilities"
		}	
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
		game.Players.LocalPlayer.PlayerGui.Main.AwakeningToggler.Visible = true
		game:GetService("Players").LocalPlayer.PlayerGui.Main.AwakeningToggler.Position = UDim2.new(0.48, 10, 0.908, 2)
		game:GetService("Players").LocalPlayer.PlayerGui.Main.AwakeningToggler.Size = UDim2.new(1, 0, 0.22, 0)		
		pcall(function()
			game:GetService("Players").LocalPlayer.PlayerGui.Main.MenuButton.Visible = false
		end)
		pcall(function()
			game:GetService("Players").LocalPlayer.PlayerGui.Main.RaceEnergy.Visible = false
		end)
		pcall(function()
			game:GetService("Players").LocalPlayer.PlayerGui.Main.SafeZone.Visible = false
		end)
		pcall(function()
			game:GetService("Players").LocalPlayer.PlayerGui.Main.HP.Visible = false
		end)
		pcall(function()
			game:GetService("Players").LocalPlayer.PlayerGui.Backpack.Enabled.Visible = false
		end)
		pcall(function()
			game:GetService("Players").LocalPlayer.PlayerGui.Main.Energy.Visible = false
		end)
		for k, v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Main:GetChildren()) do
			if v:IsA("ImageButton") then
				v:Destroy()
			end
		end
		pcall(function()
			game:GetService("Players").LocalPlayer.PlayerGui.Main.Compass.Visible = false
		end)
	end
})
LGa:AddButton({
        Title = "Open Devil Fruit Shop [ Mirage ]",
        Description = "",
        Callback = function()
        StartDialog("FruitShop2")
    end
})
LGa:AddButton({
        Title = "Open Devil Fruit Shop",
        Description = "",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetFruits")
      	game:GetService("Players").LocalPlayer.PlayerGui.Main.FruitShop.Visible = true
    end
})
LGa:AddButton({
        Title = "Open Title",
        Description = "",
        Callback = function()
            local args = {
        [1] = "getTitles"
        }
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
      	game.Players.localPlayer.PlayerGui.Main.Titles.Visible = true
    end
})
LGa:AddButton({
        Title = "Open Color",
        Description = "",
        Callback = function()
            game.Players.localPlayer.PlayerGui.Main.Colors.Visible = true
    end
})
LGa:AddButton({
        Title = "Unlock Optimal FPS",
        Description = "",
        Callback = function()
            setfpscap(9999)
    end
})   
LGa:AddButton({
        Title = "Boost FPS",
        Description = "",
        Callback = function()
            FPSBooster()
        end
    })
    function FPSBooster()
        local decalsyeeted = true
        local g = game
        local w = g.Workspace
        local l = g.Lighting
        local t = w.Terrain
        sethiddenproperty(l,"Technology",2)
        sethiddenproperty(t,"Decoration",false)
        t.WaterWaveSize = 0
        t.WaterWaveSpeed = 0
        t.WaterReflectance = 0
        t.WaterTransparency = 0
        l.GlobalShadows = false
        l.FogEnd = 9e9
        l.Brightness = 0
        settings().Rendering.QualityLevel = "Level01"
        for i, v in pairs(g:GetDescendants()) do
            if v:IsA("Part") or v:IsA("Union") or v:IsA("CornerWedgePart") or v:IsA("TrussPart") then
                v.Material = "Plastic"
                v.Reflectance = 0
            elseif v:IsA("Decal") or v:IsA("Texture") and decalsyeeted then
                v.Transparency = 1
            elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
                v.Lifetime = NumberRange.new(0)
            elseif v:IsA("Explosion") then
                v.BlastPressure = 1
                v.BlastRadius = 1
            elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") or v:IsA("Sparkles") then
                v.Enabled = false
            elseif v:IsA("MeshPart") then
                v.Material = "Plastic"
                v.Reflectance = 0
                v.TextureID = 10385902758728957
            end
        end
        for i, e in pairs(l:GetChildren()) do
            if e:IsA("BlurEffect") or e:IsA("SunRaysEffect") or e:IsA("ColorCorrectionEffect") or e:IsA("BloomEffect") or e:IsA("DepthOfFieldEffect") then
                e.Enabled = false
            end
        end
    end
LGa:AddButton({
	Title = "Remove Lava",
	Description = "",
	Callback = function()
        for i,v in pairs(game.Workspace:GetDescendants()) do
			if v.Name == "Lava" then   
				v:Destroy()
			end
		end
		for i,v in pairs(game.ReplicatedStorage:GetDescendants()) do
			if v.Name == "Lava" then   
				v:Destroy()
			end
		end
	end
})	
LGa:AddButton({
        Title = "Max Zoom",
        Description = "",
        Callback = function()
            game.Players.LocalPlayer.CameraMaxZoomDistance = 9223372036854718
    end
})
LGa:AddButton({
        Title = "Unlock Portal",
        Description = "",
        Callback = function()
        _G.UnlockPortal = true
    end
})
spawn(function()
        while wait() do
            pcall(function()
                if _G.UnlockPortal == true then
                    for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Notifications:GetChildren()) do
                        if v.Name == "NotificationTemplate" then
                            if string.find(v.Text,"cannot") then
                                v:Destroy()
                            end
                        end
                    end
                end
            end)
        end
    end)
spawn(function()
        while wait() do
            pcall(function()
                if _G.UnlockPortal == true then
                    CastlePostoMansion = CFrame.new(-5084.8447265625, 316.48101806641, -3145.3752441406)
                    MansiontoCastlePos = CFrame.new(-12464.596679688, 376.30590820312, -7567.2626953125)
                    Castletophydra = CFrame.new(-5095.33984375, 316.48101806641, -3168.3134765625)
                    HydratoCastle = CFrame.new(5741.869140625, 611.94750976562, -282.61154174805)
                    if (CastlePostoMansion.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 8 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-12471.169921875, 374.94024658203, -7551.677734375))
                    end
                    if (MansiontoCastlePos.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 8 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-5072.08984375, 314.5412902832, -3151.1098632812))
                    end
                    if (Castletophydra.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 8 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(5748.7587890625, 610.44982910156, -267.81704711914))
                    end
                    if (HydratoCastle.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 8 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-5072.08984375, 314.5412902832, -3151.1098632812))
                    end
                end
            end)
        end
    end)
LGa:AddButton({
        Title = "Change Team To Pirates",
        Description = "",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam","Pirates") 
    end
})
LGa:AddButton({
        Title = "Change Team To Marines",
        Description = "",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam","Marines") 
    end
})
ToggleSummonCake = LGa:AddToggle("ToggleSummonCake", { Title = "Auto Summon Cake Prince", Description = "", Default = true })
ToggleSummonCake:OnChanged(function(Value)
    _G.AutoSpawnCP = Value
end)
spawn(function() 
     while wait() do
         if _G.AutoSpawnCP then
             game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner",true)
        end
    end
end)
ToggleBlackScreen = LGa:AddToggle("ToggleBlackScreen", {Title = "Black Screen", Description = "",Default = false })
ToggleBlackScreen:OnChanged(function(Value)
	_G.StartBlackScreen = Value
end)
spawn(function()
	while wait() do
		if _G.StartBlackScreen then
			game:GetService("Players").LocalPlayer.PlayerGui.Main.Blackscreen.Size = UDim2.new(500, 0, 500, 500)
		else
			game:GetService("Players").LocalPlayer.PlayerGui.Main.Blackscreen.Size = UDim2.new(1, 0, 500, 500)
		end
	end
end)             
ToggleWhiteScreen = LGa:AddToggle("ToggleWhiteScreen", {Title = "White Screen",Description = "", Default = false })
ToggleWhiteScreen:OnChanged(function(Value)
    _G.WhiteScreen = Value
    if _G.WhiteScreen == true then
        game:GetService("RunService"):Set3dRenderingEnabled(false)
    elseif _G.WhiteScreen == false then
        game:GetService("RunService"):Set3dRenderingEnabled(true)
    end
end)       
ToggleRemoveText = LGa:AddToggle("ToggleRemoveText", {Title = "Remove Dame Text", Default = true })
ToggleRemoveText:OnChanged(function(Value)
    Removetext = Value
end)    
spawn(function()
    while wait(1) do 
        if Removetext then
            game:GetService("ReplicatedStorage").Assets.GUI.DamageCounter.Enabled = false
        else
            game:GetService("ReplicatedStorage").Assets.GUI.DamageCounter.Enabled = true
        end
    end
end)                    
ToggleRemoveNotifi = LGa:AddToggle("ToggleRemoveNotifi", {Title = "Remove Notification", Default = RemoveNotifi })
ToggleRemoveNotifi:OnChanged(function(Value)
    RemoveNotifi = Value
end)    
spawn(function()
        while wait() do
            if RemoveNotifi then
                game.Players.LocalPlayer.PlayerGui.Notifications.Enabled = false
            else
                game.Players.LocalPlayer.PlayerGui.Notifications.Enabled = true
            end
        end
    end)
ToggleRemoveHit = LGa:AddToggle("ToggleRemoveHit", {Title = "Remove Hit Sound And Level Up", Default = false })
ToggleRemoveHit:OnChanged(function(Value)
    _G.RemoveHit = Value
end)
spawn(function()
    game:GetService("RunService").RenderStepped:Connect(function()
        if _G.RemoveHit == true then
            game:GetService("ReplicatedStorage").Effect.Container.LevelUp:Destroy()
            game:GetService("ReplicatedStorage").Util.Sound:Destroy()
            game:GetService("ReplicatedStorage").Util.Sound.Storage.Other:FindFirstChild("LevelUp_Proxy"):Destroy()
            game:GetService("ReplicatedStorage").Util.Sound.Storage.Other:FindFirstChild("LevelUp"):Destroy()
            game:GetService("ReplicatedStorage").Effect.Container.Respawn:Destroy()        
        end
    end)
end)       
ToggleRejoinKick = LGa:AddToggle("ToggleRejoinKick", {Title = "Auto Rejoin On Kick", Description = "",Default = false })
ToggleRejoinKick:OnChanged(function(Value)
	_G.AutoRejoinKick = Value
end)
spawn(function()
	while wait() do
		if _G.AutoRejoinKick then
				getgenv().rejoin = game:GetService("CoreGui").RobloxPromptGui.promptOverlay.ChildAdded:Connect(function(child)
					if child.Name == 'ErrorPrompt' and child:FindFirstChild('MessageArea') and child.MessageArea:FindFirstChild("ErrorFrame") then
						game:GetService("TeleportService"):Teleport(game.PlaceId)
					end
				 end)
			end
		end
	end)
ToggleChatdisabled = LGa:AddToggle("ToggleChatdisabled", {Title = "Show Chat Disabled", Description = "",Default = false })
ToggleChatdisabled:OnChanged(function(value)
	_G.chat = value
	if _G.chat == true then
StarterGui = game:GetService('StarterGui')
StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, false)    
elseif _G.chat == false then
StarterGui = game:GetService('StarterGui')
StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, true)    
end
  end)
ToggleLeaderboarddisabled = LGa:AddToggle("ToggleLeaderboarddisabled", {Title = "Show Leaderboard Disabled", Description = "",Default = false })
ToggleLeaderboarddisabled:OnChanged(function(a)
	_G.leaderboard = a
	if _G.leaderboard == true then
StarterGui = game:GetService('StarterGui')
game:GetService('StarterGui'):SetCoreGuiEnabled(Enum.CoreGuiType.PlayerList, false)   
elseif _G.leaderboard == false then
StarterGui = game:GetService('StarterGui')
game:GetService('StarterGui'):SetCoreGuiEnabled(Enum.CoreGuiType.PlayerList, true)    
end
end)
ToggleHighlightmode = LGa:AddToggle("ToggleHighlightmode", {Title = "Highlight Mode", Description = "",Default = false })
ToggleHighlightmode:OnChanged(function(value)
	if value == true then
            game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Beli.Visible = false
            game:GetService("Players")["LocalPlayer"].PlayerGui.Main.HP.Visible = false
            game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Energy.Visible = false
            game:GetService("Players")["LocalPlayer"].PlayerGui.Main.StatsButton.Visible = false
            game:GetService("Players")["LocalPlayer"].PlayerGui.Main.ShopButton.Visible = false
            game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Skills.Visible = false
            game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Level.Visible = false
            game:GetService("Players")["LocalPlayer"].PlayerGui.Main.MenuButton.Visible = false
            game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Code.Visible = false
            game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Settings.Visible = false
            game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Mute.Visible = false
            game:GetService("Players")["LocalPlayer"].PlayerGui.Main.CrewButton.Visible = false
        else
            game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Beli.Visible = true
            game:GetService("Players")["LocalPlayer"].PlayerGui.Main.HP.Visible = true
            game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Energy.Visible = true
            game:GetService("Players")["LocalPlayer"].PlayerGui.Main.StatsButton.Visible = true
            game:GetService("Players")["LocalPlayer"].PlayerGui.Main.ShopButton.Visible = true
            game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Skills.Visible = true
            game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Level.Visible = true
            game:GetService("Players")["LocalPlayer"].PlayerGui.Main.MenuButton.Visible = true
            game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Code.Visible = true
            game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Settings.Visible = true
            game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Mute.Visible = true
            game:GetService("Players")["LocalPlayer"].PlayerGui.Main.CrewButton.Visible = true
        end
    end)
LGa:AddButton({
	Title = "Rain Fruit",
	Description = "",
	Callback = function()
        for i, v in pairs(game:GetObjects("rbxassetid://14759368201")[1]:GetChildren()) do
            v.Parent = game.Workspace.Map
            v:MoveTo(game.Players.LocalPlayer.Character.PrimaryPart.Position + Vector3.new(math.random(-50, 50), 100, math.random(-50, 50)))
            if v.Fruit:FindFirstChild("AnimationController") then
                v.Fruit:FindFirstChild("AnimationController"):LoadAnimation(v.Fruit:FindFirstChild("Idle")):Play()
            end
            v.Handle.Touched:Connect(function(otherPart)
                if otherPart.Parent == game.Players.LocalPlayer.Character then
                    v.Parent = game.Players.LocalPlayer.Backpack
                    game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
                end
            end)
        end
	end
})
Toggle = LGa:AddToggle("MyToggle", {Title = "Speed Hack", Default = false })
Toggle:OnChanged(function(Value)
    _G.InfAbilities = Value        
end)
spawn(function()
        while task.wait() do
            pcall(function()
                if _G.InfAbilities then
                    if not game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility") then
                        local agility = game:GetService("ReplicatedStorage").FX["Agility"]:Clone()
                        agility.Name = "Agility"
                        agility.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
                    end
                end
            end)
        end
    end)   	     
ToggleWalkWater = LGa:AddToggle("ToggleWalkWater", { Title = "Walk Water", Description = "", Default = true })
ToggleWalkWater:OnChanged(function(Value)
    _G.WalkWater = Value
end)
spawn(function()
			while task.wait() do
				pcall(function()
					if _G.WalkWater then
						game:GetService("Workspace").Map["WaterBase-Plane"].Size = Vector3.new(1000,112,1000)
					else
						game:GetService("Workspace").Map["WaterBase-Plane"].Size = Vector3.new(1000,80,1000)
					end
				end)
			end
		end)	
if World1 then
    Dropdown = LGa:AddDropdown("Dropdown", {
        Title = "Select Island",
        Values = {"WindMill",
                      "Marine",
                      "Middle Town",
                      "Jungle",
                      "Pirate Village",
                      "Desert",
                      "Snow Island",
                      "MarineFord",
                      "Colosseum",
                      "Sky Island 1",
                      "Sky Island 2",
                      "Sky Island 3",
                      "Prison",
                      "Magma Village",
                      "Under Water Island",
                      "Fountain City",
                      "Shank Room",
                      "Mob Island"},
        Multi = false,
        Default = _G.SelectIsland,
    })
    Dropdown:SetValue("0.15")
    Dropdown:OnChanged(function(Value)
        _G.SelectIsland = Value
    end)
    end    
if World2 then
    Dropdown = LGa:AddDropdown("Dropdown", {
        Title = "Select Island",
        Values = {"The Cafe",
                                "Frist Spot",
                                "Dark Area",
                                "Flamingo Mansion",
                                "Flamingo Room",
                                "Green Zone",
                                "Factory",
                                "Colossuim",
                                "Zombie Island",
                                "Two Snow Mountain",
                                "Punk Hazard",
                                "Cursed Ship",
                                "Ice Castle",
                                "Forgotten Island",
                                "Ussop Island",
                                "Mini Sky Island"},
        Multi = false,
        Default = _G.SelectIsland,
    })
    Dropdown:SetValue("0.15")
    Dropdown:OnChanged(function(Value)
        _G.SelectIsland = Value
    end)
    end
if World3 then
    Dropdown = LGa:AddDropdown("Dropdown", {
        Title = "Select Island",
        Values = {"Mansion",
                                          "Port Town",
                                          "Great Tree",
                                          "Castle On The Sea",
                                          "MiniSky", 
                                          "Hydra Island",
                                          "Floating Turtle",
                                          "Haunted Castle",
                                          "Ice Cream Island",
                                          "Peanut Island",
                                          "Cake Island",
                                          "Cocoa Island",
                                          "Candy Island",
"Tiki Outpost"},
        Multi = false,
        Default = _G.SelectIsland,
    })
    Dropdown:SetValue("0.15")
    Dropdown:OnChanged(function(Value)
        _G.SelectIsland = Value
    end)
    end    
Toggle = LGa:AddToggle("MyToggle", {Title = "Teleport Island", Default = _G.TeleportIsland })
Toggle:OnChanged(function(Value)
    _G.TeleportIsland = Value
    if _G.TeleportIsland == true then
      repeat wait()
		        if _G.SelectIsland == "WindMill" then
		            topos(CFrame.new(979.79895019531, 16.516613006592, 1429.0466308594))
		        elseif _G.SelectIsland == "Marine" then
		            topos(CFrame.new(-2566.4296875, 6.8556680679321, 2045.2561035156))
		        elseif _G.SelectIsland == "Middle Town" then
		            topos(CFrame.new(-690.33081054688, 15.09425163269, 1582.2380371094))
		        elseif _G.SelectIsland == "Jungle" then
		            topos(CFrame.new(-1612.7957763672, 36.852081298828, 149.12843322754))
		        elseif _G.SelectIsland == "Pirate Village" then
		            topos(CFrame.new(-1181.3093261719, 4.7514905929565, 3803.5456542969))
		        elseif _G.SelectIsland == "Desert" then
		            topos(CFrame.new(944.15789794922, 20.919729232788, 4373.3002929688))
		        elseif _G.SelectIsland == "Snow Island" then
		            topos(CFrame.new(1347.8067626953, 104.66806030273, -1319.7370605469))
		        elseif _G.SelectIsland == "MarineFord" then
		            topos(CFrame.new(-4914.8212890625, 50.963626861572, 4281.0278320313))
		        elseif _G.SelectIsland == "Colosseum" then
		            topos( CFrame.new(-1427.6203613281, 7.2881078720093, -2792.7722167969))
		        elseif _G.SelectIsland == "Sky Island 1" then
		            topos(CFrame.new(-4869.1025390625, 733.46051025391, -2667.0180664063))
		        elseif _G.SelectIsland == "Sky Island 2" then  
		            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4607.82275, 872.54248, -1667.55688))
		        elseif _G.SelectIsland == "Sky Island 3" then
		            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
		        elseif _G.SelectIsland == "Prison" then
		            topos( CFrame.new(4875.330078125, 5.6519818305969, 734.85021972656))
		        elseif _G.SelectIsland == "Magma Village" then
		            topos(CFrame.new(-5247.7163085938, 12.883934020996, 8504.96875))
		        elseif _G.SelectIsland == "Under Water Island" then
		            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
		        elseif _G.SelectIsland == "Fountain City" then
		            topos(CFrame.new(5127.1284179688, 59.501365661621, 4105.4458007813))
		        elseif _G.SelectIsland == "Shank Room" then
		            topos(CFrame.new(-1442.16553, 29.8788261, -28.3547478))
		        elseif _G.SelectIsland == "Mob Island" then
		            topos(CFrame.new(-2850.20068, 7.39224768, 5354.99268))
		        elseif _G.SelectIsland == "The Cafe" then
		            topos(CFrame.new(-380.47927856445, 77.220390319824, 255.82550048828))
		        elseif _G.SelectIsland == "Frist Spot" then
		            topos(CFrame.new(-11.311455726624, 29.276733398438, 2771.5224609375))
		        elseif _G.SelectIsland == "Dark Area" then
		            topos(CFrame.new(3780.0302734375, 22.652164459229, -3498.5859375))
		        elseif _G.SelectIsland == "Flamingo Mansion" then
		            topos(CFrame.new(-483.73370361328, 332.0383605957, 595.32708740234))
		        elseif _G.SelectIsland == "Flamingo Room" then
		            topos(CFrame.new(2284.4140625, 15.152037620544, 875.72534179688))
		        elseif _G.SelectIsland == "Green Zone" then
		            topos( CFrame.new(-2448.5300292969, 73.016105651855, -3210.6306152344))
		        elseif _G.SelectIsland == "Factory" then
		            topos(CFrame.new(424.12698364258, 211.16171264648, -427.54049682617))
		        elseif _G.SelectIsland == "Colossuim" then
		            topos( CFrame.new(-1503.6224365234, 219.7956237793, 1369.3101806641))
		        elseif _G.SelectIsland == "Zombie Island" then
		            topos(CFrame.new(-5622.033203125, 492.19604492188, -781.78552246094))
		        elseif _G.SelectIsland == "Two Snow Mountain" then
		            topos(CFrame.new(753.14288330078, 408.23559570313, -5274.6147460938))
		        elseif _G.SelectIsland == "Punk Hazard" then
		            topos(CFrame.new(-6127.654296875, 15.951762199402, -5040.2861328125))
		        elseif _G.SelectIsland == "Cursed Ship" then
		            topos(CFrame.new(923.40197753906, 125.05712890625, 32885.875))
		        elseif _G.SelectIsland == "Ice Castle" then
		            topos(CFrame.new(6148.4116210938, 294.38687133789, -6741.1166992188))
		        elseif _G.SelectIsland == "Forgotten Island" then
		            topos(CFrame.new(-3032.7641601563, 317.89672851563, -10075.373046875))
		        elseif _G.SelectIsland == "Ussop Island" then
		            topos(CFrame.new(4816.8618164063, 8.4599885940552, 2863.8195800781))
		        elseif _G.SelectIsland == "Mini Sky Island" then
		            topos(CFrame.new(-288.74060058594, 49326.31640625, -35248.59375))
		        elseif _G.SelectIsland == "Great Tree" then
		            topos(CFrame.new(2681.2736816406, 1682.8092041016, -7190.9853515625))
		        elseif _G.SelectIsland == "Castle On The Sea" then
		            topos(CFrame.new(-5074.45556640625, 314.5155334472656, -2991.054443359375))
		        elseif _G.SelectIsland == "MiniSky" then
		            topos(CFrame.new(-260.65557861328, 49325.8046875, -35253.5703125))
		        elseif _G.SelectIsland == "Port Town" then
		            topos(CFrame.new(-290.7376708984375, 6.729952812194824, 5343.5537109375))
		        elseif _G.SelectIsland == "Hydra Island" then
		            topos(CFrame.new(5228.8842773438, 604.23400878906, 345.0400390625))
		        elseif _G.SelectIsland == "Floating Turtle" then
		            topos(CFrame.new(-13274.528320313, 531.82073974609, -7579.22265625))
		        elseif _G.SelectIsland == "Mansion" then
		            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-12471.169921875, 374.94024658203, -7551.677734375))
		        elseif _G.SelectIsland == "Haunted Castle" then
		            topos(CFrame.new(-9515.3720703125, 164.00624084473, 5786.0610351562))
		        elseif _G.SelectIsland == "Ice Cream Island" then
		            topos(CFrame.new(-902.56817626953, 79.93204498291, -10988.84765625))
		        elseif _G.SelectIsland == "Peanut Island" then
		            topos(CFrame.new(-2062.7475585938, 50.473892211914, -10232.568359375))
		        elseif _G.SelectIsland == "Cake Island" then
		            topos(CFrame.new(-1884.7747802734375, 19.327526092529297, -11666.8974609375))
		        elseif _G.SelectIsland == "Cocoa Island" then
		            topos(CFrame.new(87.94276428222656, 73.55451202392578, -12319.46484375))
		        elseif _G.SelectIsland == "Candy Island" then
		            topos(CFrame.new(-1014.4241943359375, 149.11068725585938, -14555.962890625))
		elseif _G.SelectIsland == "Tiki Outpost" then
		topos(CFrame.new(-16101.1885, 12.8422165, 380.942291, 0.194113985, 1.39194061e-08, -0.980978966, -9.82904691e-09, 1, 1.22443504e-08, 0.980978966, 7.26528837e-09, 0.194113985))
		        end
		    until not _G.TeleportIsland
		end
    end)
if World1 then
    Dropdown = LGa:AddDropdown("Dropdown", {
        Title = "Select Npc",
        Values = {"Random Devil Fruit",
                      "Blox Fruits Dealer",
                      "Remove Devil Fruit",
                      "Ability Teacher",
                      "Dark Step",
                      "Electro",
                      "Fishman Karate"},
        Multi = false,
        Default = _G.SelectNPC,
    })
    Dropdown:SetValue("0.15")
    Dropdown:OnChanged(function(Value)
        _G.SelectNPC = Value
    end)
    end
if World2 then
    Dropdown = LGa:AddDropdown("Dropdown", {
        Title = "Select Npc",
        Values = {"Dargon Berath",
                                "Mtsterious Man",
                                "Mysterious Scientist",
                                "Awakening Expert",
                                "Nerd",
                                "Bar Manager",
                                "Blox Fruits Dealer",
                                "Trevor",
                                "Enhancement Editor",
                                "Pirate Recruiter",
                                "Marines Recruiter",
                                "Chemist",
                                "Cyborg",
                                "Ghoul Mark",
                                "Guashiem",
                                "El Admin",
                                "El Rodolfo",
                                "Arowe"},
        Multi = false,
        Default = _G.SelectNPC,
    })
    Dropdown:SetValue("0.15")
    Dropdown:OnChanged(function(Value)
        _G.SelectNPC = Value
    end)
    end
if World3 then
    Dropdown = LGa:AddDropdown("Dropdown", {
        Title = "Select Npc",
        Values = {"Blox Fruits Dealer",
                                          "Remove Devil Fruit",
                                          "Horned Man",
                                          "Hungey Man",
                                          "Previous Hero", 
                                          "Butler",
                                          "Lunoven",
                                          "Trevor",
                                          "Elite Hunter",
                                          "Player Hunter",
"Uzoth"},
        Multi = false,
        Default = _G.SelectNPC,
    })
    Dropdown:SetValue("0.15")
    Dropdown:OnChanged(function(Value)
        _G.SelectNPC = Value
    end)
    end
Toggle = LGa:AddToggle("MyToggle", {Title = "Teleport Npc", Default = _G.TeleportNPC })
Toggle:OnChanged(function(Value)
    _G.TeleportNPC = Value
    if _G.TeleportNPC == true then
      repeat wait()
		        if _G.SelectNPC == "Dargon Berath" then
		            topos(CFrame.new(703.372986, 186.985519, 654.522034, 1, 0, 0, 0, 1, 0, 0, 0, 1))
		        elseif _G.SelectNPC == "Mtsterious Man" then
		            topos(CFrame.new(-2574.43335, 1627.92371, -3739.35767, 0.378697902, -9.06400288e-09, 0.92552036, -8.95582009e-09, 1, 1.34578926e-08, -0.92552036, -1.33852689e-08, 0.378697902))
		        elseif _G.SelectNPC == "Mysterious Scientist" then
		            topos(CFrame.new(-6437.87793, 250.645355, -4498.92773, 0.502376854, -1.01223634e-08, -0.864648759, 2.34106086e-08, 1, 1.89508653e-09, 0.864648759, -2.11940012e-08, 0.502376854))
		        elseif _G.SelectNPC == "Awakening Expert" then
		            topos(CFrame.new(-408.098846, 16.0459061, 247.432846, 0.028394036, 6.17599138e-10, 0.999596894, -5.57905944e-09, 1, -4.59372484e-10, -0.999596894, -5.56376767e-09, 0.028394036))
		        elseif _G.SelectNPC == "Nerd" then
		            topos(CFrame.new(-401.783722, 73.0859299, 262.306702, 1, 0, 0, 0, 1, 0, 0, 0, 1))
		        elseif _G.SelectNPC == "Bar Manager" then
		            topos(CFrame.new(-385.84726, 73.0458984, 316.088806, 1, 0, 0, 0, 1, 0, 0, 0, 1))
		        elseif _G.SelectNPC == "Blox Fruits Dealer" then
		            topos(CFrame.new(-450.725464, 73.0458984, 355.636902, -0.780352175, -2.7266168e-08, 0.625340283, 9.78516468e-09, 1, 5.58128797e-08, -0.625340283, 4.96727601e-08, -0.780352175))
		        elseif _G.SelectNPC == "Trevor" then
		            topos(CFrame.new(-341.498322, 331.886444, 643.024963, 1, 0, 0, 0, 1, 0, 0, 0, 1))
		        elseif _G.SelectNPC == "Plokster" then
		            topos( CFrame.new(-1885.16016, 88.3838196, -1912.28723, -0.513468027, 0, 0.858108759, 0, 1, 0, -0.858108759, 0, -0.513468027))
		        elseif _G.SelectNPC == "Enhancement Editor" then  
		            topos(CFrame.new(-346.820221, 72.9856339, 1194.36218, 1, 0, 0, 0, 1, 0, 0, 0, 1))
		        elseif _G.SelectNPC == "Pirate Recruiter" then
		            topos(CFrame.new(-428.072998, 72.9495239, 1445.32422, 1, 0, 0, 0, 1, 0, 0, 0, 1))
		        elseif _G.SelectNPC == "Marines Recruiter" then
		            topos(CFrame.new(-1349.77295, 72.9853363, -1045.12964, 0.866493046, 0, -0.499189168, 0, 1, 0, 0.499189168, 0, 0.866493046))
		        elseif _G.SelectNPC == "Chemist" then
		            topos( CFrame.new(-2777.45288, 72.9919434, -3572.25732, 1, 0, 0, 0, 1, 0, 0, 0, 1))
		        elseif _G.SelectNPC == "Ghoul Mark" then
		            topos(CFrame.new(635.172546, 125.976357, 33219.832, 1, 0, 0, 0, 1, 0, 0, 0, 1))
		        elseif _G.SelectNPC == "Cyborg" then
		            topos(CFrame.new(629.146851, 312.307373, -531.624146, 1, 0, 0, 0, 1, 0, 0, 0, 1))
		        elseif _G.SelectNPC == "Guashiem" then
		            topos(CFrame.new(937.953003, 181.083359, 33277.9297, 1, -8.60126406e-08, 3.81773896e-17, 8.60126406e-08, 1, -1.89969598e-16, -3.8177373e-17, 1.89969598e-16, 1))
		        elseif _G.SelectNPC == "El Admin" then
		            topos(CFrame.new(1322.80835, 126.345039, 33135.8789, 0.988783717, -8.69797603e-08, -0.149354503, 8.62223786e-08, 1, -1.15461916e-08, 0.149354503, -1.46101409e-09, 0.988783717))
		        elseif _G.SelectNPC == "El Rodolfo" then
		            topos(CFrame.new(941.228699, 40.4686775, 32778.9922, -0.818029106, -1.19524382e-08, 0.575176775, -1.28741648e-08, 1, 2.47053866e-09, -0.575176775, -5.38394795e-09, -0.818029106))
		        elseif _G.SelectNPC == "Arowe" then
		            topos(CFrame.new(-1994.51038, 125.519142, -72.2622986, -0.16715166, -6.55417338e-08, -0.985931218, -7.13315558e-08, 1, -5.43836585e-08, 0.985931218, 6.12376851e-08, -0.16715166))
		        elseif _G.SelectNPC == "Random Devil Fruit" then
		            topos(CFrame.new(-1436.19727, 61.8777695, 4.75247526, -0.557794094, 2.74216543e-08, 0.829979479, 5.83273234e-08, 1, 6.16037932e-09, -0.829979479, 5.18467118e-08, -0.557794094))
		        elseif _G.SelectNPC == "Blox Fruits Dealer" then
		            topos(CFrame.new(-923.255066, 7.67800522, 1608.61011, 1, 0, 0, 0, 1, 0, 0, 0, 1))
		        elseif _G.SelectNPC == "Remove Devil Fruit" then
		            topos(CFrame.new(5664.80469, 64.677681, 867.85907, 1, 0, 0, 0, 1, 0, 0, 0, 1))
		        elseif _G.SelectNPC == "Ability Teacher" then
		            topos(CFrame.new(-1057.67822, 9.65220833, 1799.49146, -0.865874112, -9.26330159e-08, 0.500262439, -7.33759435e-08, 1, 5.816689e-08, -0.500262439, 1.36579752e-08, -0.865874112))
		        elseif _G.SelectNPC == "Dark Step" then
		            topos( CFrame.new(-987.873047, 13.7778397, 3989.4978, 1, 0, 0, 0, 1, 0, 0, 0, 1))
		        elseif _G.SelectNPC == "Electro" then
		            topos(CFrame.new(-5389.49561, 13.283, -2149.80151, 1, 0, 0, 0, 1, 0, 0, 0, 1))
		        elseif _G.SelectNPC == "Fishman Karate" then
		            topos( CFrame.new(61581.8047, 18.8965912, 987.832703, 1, 0, 0, 0, 1, 0, 0, 0, 1))
		        elseif _G.SelectNPC == "Random Devil Fruit" then
		            topos(CFrame.new(-12491, 337, -7449))
		        elseif _G.SelectNPC == "Blox Fruits Dealer" then
		            topos(CFrame.new(-12511, 337, -7448))
		        elseif _G.SelectNPC == "Remove Devil Fruit" then
		            topos(CFrame.new(-5571, 1089, -2661))
		        elseif _G.SelectNPC == "Horned Man" then
		            topos(CFrame.new(-11890, 931, -8760))
		        elseif _G.SelectNPC == "Hungey Man" then
		            topos(CFrame.new(-10919, 624, -10268))
		        elseif _G.SelectNPC == "Previous Hero" then
		            topos(CFrame.new(-10368, 332, -10128))
		        elseif _G.SelectNPC == "Butler" then
		            topos(CFrame.new(-5125, 316, -3130))
		        elseif _G.SelectNPC == "Lunoven" then
		            topos(CFrame.new(-5117, 316, -3093))
		        elseif _G.SelectNPC == "Elite Hunter" then
		            topos(CFrame.new(-5420, 314, -2828))
		        elseif _G.SelectNPC == "Player Hunter" then
		            topos(CFrame.new(-5559, 314, -2840))
		elseif _G.SelectNPC == "Uzoth" then
		topos(CFrame.new(-9785, 852, 6667))
		        end
		    until not _G.TeleportNPC
		end
    end)         
LGa:AddButton({
    Title = "Stop Tween",
    Description = "",
    Callback = function()        
        topos(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
    end
})
Ui = Window:AddTab({ Title = "Tab Config", Icon = "star" })
SaveManager:SetLibrary(Fluent)
InterfaceManager:SetLibrary(Fluent)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({})
InterfaceManager:SetFolder("HiruXFolder")
SaveManager:SetFolder("HiruXFolder/specific-game")
InterfaceManager:BuildInterfaceSection(Ui)
SaveManager:BuildConfigSection(Ui)
SaveManager:LoadAutoloadConfig()
Settings = Window:AddTab({ Title = "Tab Setting", Icon = "rbxassetid://10734950309" }) 
Dropdown = Settings:AddDropdown("DropdownFarm", {
    Title = "Select Weapon",
    Values = {"Melee","Sword","Blox Fruit"},
    Multi = false,
})
Dropdown:SetValue("Melee")
Dropdown:OnChanged(function(value)
_G.SelectWeapon = value
end)
task.spawn(function()
	while wait() do
		pcall(function()
			if _G.SelectWeapon == "Melee" then
				for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
					if v.ToolTip == "Melee" then
						if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
							_G.SelectWeapon = v.Name
						end
					end
				end
			elseif _G.SelectWeapon == "Sword" then
				for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
					if v.ToolTip == "Sword" then
						if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
							_G.SelectWeapon = v.Name
						end
					end
				end
			elseif _G.SelectWeapon == "Blox Fruit" then
				for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
					if v.ToolTip == "Blox Fruit" then
						if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
							_G.SelectWeapon = v.Name
						end
					end
				end
			end
		end)
	end
    end)     
SelectSpeedAttack = (SelectSpeedAttack or "Super Fast Attack")
SelectedFastAttackMode = {"Normal Attack","Fast Attack","Super Fast Attack"}
function ChangeModeFastAttack(SelectSpeedAttack)
	if SelectSpeedAttack == "Normal Attack" then
		FireCooldown = 0.1
	elseif SelectSpeedAttack == "Fast Attack" then
		FireCooldown = 0.07
	elseif SelectSpeedAttack == "Super Fast Attack" then
		FireCooldown = 0.02				
	end
end
SelectedAttack = Settings:AddDropdown("SelectedAttack", {
	Title = "Select Speed Attack",
	Values = SelectedFastAttackMode,
	Multi = false,
	Default = 3,
})
SelectedAttack:OnChanged(function(value)
	SelectSpeedAttack = value
	ChangeModeFastAttack(SelectSpeedAttack)
end)
ToggleAutoClick = Settings:AddToggle("ToggleAutoClick", {Title = "Auto Click", Description = "", Default = false })
ToggleAutoClick:OnChanged(function(Value)
   UFFF = Value
end)
spawn(function()
        while task.wait() do 
            if UFFF then 
                pcall(function()
                    local Fastflux = getupvalues(require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework))[2]
                    Fastflux.activeController.hitboxMagnitude = 55
                    Fastflux.activeController.timeToNextAttack = 0
                    Fastflux.activeController.attacking = false
                    Fastflux.activeController.increment = 3
                    Fastflux.activeController.blocking = false
                    Fastflux.activeController.timeToNextBlock = 0
                    a = math.random(1,5)
                    if a > 1 then 
                        game:GetService "VirtualUser":CaptureController()
                        game:GetService "VirtualUser":Button1Down(Vector2.new(50, 50))
                    end
                    task.wait(0.2)
                end)
            end
        end
    end)
ToggleOnHaki = Settings:AddToggle("ToggleOnHaki", {Title = "Auto Turn On Buso", Default = true })
ToggleOnHaki:OnChanged(function(Value)
    _G.AUTOHAKI = Value
end)
spawn(function()
    while wait(.1) do
        if _G.AUTOHAKI then 
            if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                local args = {
                    [1] = "Buso"
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            end
        end
    end
end)    
ToggleOnKenHaki = Settings:AddToggle("ToggleOnKenHaki", {Title = "Auto Turn Ken Haki", Default = _G.AUTOKen })
ToggleOnKenHaki:OnChanged(function(Value)
    _G.AUTOKen = Value
end)
spawn(function()
        while wait() do
            pcall(function()
                if _G.AUTOKen then
                    repeat task.wait()
                        if not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
                            game:GetService('VirtualUser'):CaptureController()
                            game:GetService('VirtualUser'):SetKeyDown('0x65')
                            wait(2)
                            game:GetService('VirtualUser'):SetKeyUp('0x65')
                        end
                    until game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") or not _G.AUTOKen
                end
            end)
        end
    end)    
ToggleOnRaceV3 = Settings:AddToggle("ToggleOnRaceV3", {Title = "Auto Turn On Race V3", Description = "", Default = false })
ToggleOnRaceV3:OnChanged(function(Value)
    _G.AutoT = Value
end)
spawn(function()
    while wait() do
        pcall(function()
            if _G.AutoT then
                game:GetService("ReplicatedStorage").Remotes.CommE:FireServer("ActivateAbility")
            end
        end)
    end
    end)
ToggleOnRaceV4 = Settings:AddToggle("ToggleOnRaceV4", { Title = "Auto Turn On Race V4", Default = false })
ToggleOnRaceV4:OnChanged(function(Value)
    RaceNguLon = Value
end)
task.spawn(
    function()
        while task.wait() do
            task.wait()
            if RaceNguLon then
                if
                game.Players.LocalPlayer.Character:FindFirstChild("RaceEnergy") and
                game.Players.LocalPlayer.Character.RaceEnergy.Value >= 1 and
                not game.Players.LocalPlayer.Character.RaceTransformed.Value
                then
                    local be = game:service("VirtualInputManager")
                    be:SendKeyEvent(true, "Y", false, game)
                    task.wait()
                    be:SendKeyEvent(false, "Y", false, game)
                end
            end
        end
    end
)
ToggleSetSpawnPoint = Settings:AddToggle("ToggleSetSpawnPoint", {Title = "Auto Set Spawn Point", Default = false })
ToggleSetSpawnPoint:OnChanged(function(Value)
    _G.Set = Value
end)
spawn(function()
    while wait(1) do
        if _G.Set then
            pcall(function()
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
            end)
        end
    end
end)    			    	
ToggleDodgeWhenFarm = Settings:AddToggle("ToggleDodgeWhenFarm", {
    Title = "Auto Dodge When Farm",
    Description = "",
    Default = _G.SpinPos })
ToggleDodgeWhenFarm:OnChanged(function(Value)
    _G.SpinPos = Value
end)
ToggleAntiAfk = Settings:AddToggle("ToggleAntiAfk", {Title = "Anti AFK", Default = true })
ToggleAntiAfk:OnChanged(function(Value)
Value = game:GetService("VirtualUser")
		repeat wait() until game:IsLoaded() 
			game:GetService("Players").LocalPlayer.Idled:connect(function()
		    game:GetService("VirtualUser"):ClickButton2(Vector2.new())
				vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
				wait(1)
				vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
		   end)
		end) 
ToggleOnPvp = Settings:AddToggle("ToggleOnPvp", {Title = "Auto Turn On PvP", Description = "",Default = false })
ToggleOnPvp:OnChanged(function(Value)
    _G.EnabledPvP = Value
end)
spawn(function()
  pcall(function()
      while wait() do
          if _G.EnabledPvP then
              if game:GetService("Players").LocalPlayer.PlayerGui.Main.PvpDisabled.Visible == true then
                  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EnablePvp")
              end
          end
      end
  end)
end)
ToggleResetTeleport = Settings:AddToggle("ToggleResetTeleport", {Title = "Reset Teleport", Default = false })
ToggleResetTeleport:OnChanged(function(Value)
    BypassTP = Value 
end)
Toggle = Settings:AddToggle("Bypass TP", { Title = "Stop Reset Teleport When Have Legendary", Default = false })
Toggle:OnChanged(function(Value)
    _G.StopTP = Value
end)
spawn(function()
	while wait() do
		if _G.StopTP then
			if game.Players.LocalPlayer.Backpack:FindFirstChild("Fist of Darkness") or game.Players.LocalPlayer.Character:FindFirstChild("Fist of Darkness") or game.Players.LocalPlayer.Backpack:FindFirstChild("God's Chalice") or game.Players.LocalPlayer.Character:FindFirstChild("God's Chalice") then
				BypassTP = false
			end
		end
	end
end)
ToggleFastAttack = Settings:AddToggle("ToggleFastAttack", {Title = "Fast Attack", Default = true })
ToggleFastAttack:OnChanged(function(value)
	Fast_Attack = value
	DamageAura = value
	ClickNoCooldown = value
	DmgAttack.Enabled = not value	
end)
local Mouse = game:GetService("Players").LocalPlayer:GetMouse()
Mouse.Button1Down:Connect(function()
	if ClickNoCooldown then
		local ac = CombatFrameworkR.activeController
		if ac and ac.equipped then
			ac.hitboxMagnitude = 55
			pcall(AttackFunction,2)
		end
	end
end)
ToggleNoClip = Settings:AddToggle("ToggleNoClip", {Title = "No Clip", Default = _G.NoClip })
ToggleNoClip:OnChanged(function(value)
    _G.NoClip = value
end)    
spawn(function()
        pcall(function()
            game:GetService("RunService").Stepped:Connect(function()
                if _G.NoClip then
                    for _, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                        if v:IsA("BasePart") or v:IsA("Part") then
                            v.CanCollide = false    
                        end
                    end
                end
            end)
        end)
    end)
ToggleAntiScanSecurity = Settings:AddToggle("ToggleAntiScanSecurity", {Title = "Anti-Scan Security[Premium]", Default = true })
ToggleAntiScanSecurity:OnChanged(function(Value)
    _G.ResetFlags = Value
end)
spawn(function()
    while wait() do
        pcall(function()
if _G.ResetFlags then
    for i,v in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
        if v:IsA("LocalScript") then
            if v.Name == "General" or v.Name == "Shiftlock"  or v.Name == "FallDamage" or v.Name == "4444" or v.Name == "CamBob" or v.Name == "JumpCD" or v.Name == "Looking" or v.Name == "Run" then
                v:Destroy()
            end
        end
     end
     for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerScripts:GetDescendants()) do
        if v:IsA("LocalScript") then
            if v.Name == "RobloxMotor6DBugFix" or v.Name == "Clans"  or v.Name == "Codes" or v.Name == "CustomForceField" or v.Name == "MenuBloodSp"  or v.Name == "PlayerList" then
                v:Destroy()
            end
        end
     end
    end
end)
end
end)
ToggleBringMob = Settings:AddToggle("ToggleBringMob", {Title = "Bring Mob", Default = true})
ToggleBringMob:OnChanged(
    function(Mag)
        _G.BringMonster = Mag
    end
)
task.spawn(
    function()
        while task.wait() do
            if _G.BringMonster then
                pcall(
                    function()
                        for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                            if
                                not string.find(v.Name, "Boss") and v.Name == MonFarm and
                                    (v.HumanoidRootPart.Position -
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 300
                             then
                                if InMyNetWork(v.HumanoidRootPart) then
                                    if InMyNetWork(v.HumanoidRootPart) then
                                        v.HumanoidRootPart.CFrame = PosMon
                                        v.HumanoidRootPart.CanCollide = false
                                        v.HumanoidRootPart.Size = Vector3.new(1, 1, 1)
                                        if v.Humanoid:FindFirstChild("Animator") then
                                            v.Humanoid.Animator:Destroy()
                                        end
                                        task.wait(0.1)
                                    end
                                end
                            end
                        end
                    end
                )
            end
        end
    end
)
spawn(
    function()
        while task.wait() do
            spawn(
                function()
                    if _G.BringMonster then
                        CheckQuest()
                        for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if
                                _G.AutoFarm and StartMagnet and v.Name == Mon and
                                    (Mon == "Factory Staff" or Mon == "Monkey" or Mon == "Dragon Crew Warrior" or
                                        Mon == "Dragon Crew Archer") and
                                    v:FindFirstChild("Humanoid") and
                                    v:FindFirstChild("HumanoidRootPart") and
                                    v.Humanoid.Health > 0 and
                                    (v.HumanoidRootPart.Position -
                                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <=
                                        220
                             then
                                v.HumanoidRootPart.Size = Vector3.new(70, 70, 70)
                                v.HumanoidRootPart.CFrame = PosMon
                                v.Humanoid:ChangeState(14)
                                v.HumanoidRootPart.CanCollide = false
                                v.Head.CanCollide = false
                                if v.Humanoid:FindFirstChild("Animator") then
                                    v.Humanoid.Animator:Destroy()
                                end
                                sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                                task.wait(0.1)
                            elseif
                                _G.AutoFarm and StartMagnet and v.Name == Mon and v:FindFirstChild("Humanoid") and
                                    v:FindFirstChild("HumanoidRootPart") and
                                    v.Humanoid.Health > 0 and
                                    (v.HumanoidRootPart.Position -
                                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <=
                                        _G.BringMode
                             then
                                v.HumanoidRootPart.Size = Vector3.new(70, 70, 70)
                                v.HumanoidRootPart.CFrame = PosMon
                                v.Humanoid:ChangeState(14)
                                v.HumanoidRootPart.CanCollide = false
                                v.Head.CanCollide = false
                                if v.Humanoid:FindFirstChild("Animator") then
                                    v.Humanoid.Animator:Destroy()
                                end
                                sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                                task.wait(0.1)
                            end
                        end
                    end
                end
            )
        end
    end
)
spawn(
    function()
        while wait() do
            pcall(
                function()
                    for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if _G.BringMob and bringmob then
                            if v.Name == MonFarm and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                if v.Name == "Factory Staff" then
                                    if (v.HumanoidRootPart.Position - FarmPos.Position).Magnitude <= 500 then
                                        v.Head.CanCollide = false
                                        v.HumanoidRootPart.CanCollide = false
                                        v.HumanoidRootPart.Size = Vector3.new(1, 1, 1)
                                        v.HumanoidRootPart.CFrame = FarmPos
                                        if v.Humanoid:FindFirstChild("Animator") then
                                            v.Humanoid.Animator:Destroy()
                                        end
                                        sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                                        task.wait(0.1)
                                    end
                                elseif v.Name == MonFarm then
                                    if (v.HumanoidRootPart.Position - FarmPos.Position).Magnitude <= 450 then
                                        v.Head.CanCollide = false
                                        v.HumanoidRootPart.CanCollide = false
                                        v.HumanoidRootPart.Size = Vector3.new(1, 1, 1)
                                        v.HumanoidRootPart.CFrame = FarmPos
                                        if v.Humanoid:FindFirstChild("Animator") then
                                            v.Humanoid.Animator:Destroy()
                                        end
                                        sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                                    end
                                end
                            end
                            if _G.AutoDoughtBoss and MagnetDought then
                                if
                                    (v.Name == "Cookie Crafter" or v.Name == "Cake Guard" or v.Name == "Baking Staff" or
                                        v.Name == "Head Baker") and
                                        (v.HumanoidRootPart.Position - PosMonDoughtOpenDoor.Position).Magnitude <=
                                            _G.BringMode and
                                        v:FindFirstChild("Humanoid") and
                                        v:FindFirstChild("HumanoidRootPart") and
                                        v.Humanoid.Health > 0
                                 then
                                    v.Head.CanCollide = false
                                    v.HumanoidRootPart.CanCollide = false
                                    v.HumanoidRootPart.Size = Vector3.new(1, 1, 1)
                                    v.HumanoidRootPart.CFrame = FarmPos
                                    if v.Humanoid:FindFirstChild("Animator") then
                                        v.Humanoid.Animator:Destroy()
                                    end
                                    sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                                end
                            end
                        end
                    end
                end
            )
        end
    end
)
task.spawn(
    function()
        while true do
            wait()
            if setscriptable then
                setscriptable(game.Players.LocalPlayer, "SimulationRadius", true)
            end
            if sethiddenproperty then
                sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
            end
        end
    end
)
function InMyNetWork(object)
    if isnetworkowner then
        return isnetworkowner(object)
    else
        if (object.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= _G.BringMode then
            return true
        end
        return false
    end
end
task.spawn(
    function()
        while task.wait() do
            if MakoriGayMag and _G.BringMonster then
                for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                    if
                        not string.find(v.Name, "Boss") and
                            (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <=
                                450
                     then
                        if InMyNetWork(v.HumanoidRootPart) then
                            v.HumanoidRootPart.CFrame = PosGay
                            v.Humanoid.JumpPower = 0
                            v.Humanoid.WalkSpeed = 0
                            v.HumanoidRootPart.Size = Vector3.new(70, 70, 70)
                            v.HumanoidRootPart.Transparency = 1
                            v.HumanoidRootPart.CanCollide = false
                            v.Head.CanCollide = false
                            if v.Humanoid:FindFirstChild("Animator") then
                                v.Humanoid.Animator:Destroy()
                            end
                            v.Humanoid:ChangeState(11)
                            v.Humanoid:ChangeState(14)
                            task.wait(0.1)
                        end
                    end
                end
            end
        end
    end
)
function BringMob()
    if not BringMobChoosen then
        repeat
            task.wait()
        until BringMobChoosen
    end
    sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
    if LockCFrame then
        for r, v in pairs(game.Workspace.Enemies:GetChildren()) do
            if
                (LockCFrame.Position - v.HumanoidRootPart.Position).Magnitude < 350 and
                    (LockCFrame.Position - v.HumanoidRootPart.Position).Magnitude > 3 and
                    chodonandngu(v.HumanoidRootPart.Position)
             then
                v.HumanoidRootPart.CFrame = LockCFrame
                SizePart(v)
                for al, ax in pairs(v:GetDescendants()) do
                    if ax:IsA("BasePart") or ax:IsA("Part") then
                        ax.CanCollide = false
                    end
                end
                task.wait(0.1)
            end
        end
    end
    if BringMobChoosen then
        for r, v in pairs(game.Workspace.Enemies:GetChildren()) do
            if
                (BringMobChoosen.HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude < 350 and
                    (BringMobChoosen.HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude > 3 and
                    GetNearestPlayer(v.HumanoidRootPart.Position)
             then
                v.HumanoidRootPart.CFrame = BringMobChoosen.HumanoidRootPart.CFrame
                SizePart(v)
                for al, ax in pairs(v:GetDescendants()) do
                    if ax:IsA("BasePart") or ax:IsA("Part") then
                        ax.CanCollide = false
                    end
                end
                task.wait(0.1)
            end
        end
    end
end
function tvk1308deptraiso1()
    local c = function1()
    local ao = game.workspace.Enemies:GetChildren()
    if #ao > 1 then
        for ap = 1, #ao do
            for k, v in pairs(game.workspace.Enemies:GetChildren()) do
                if function0(v) and (v.HumanoidRootPart.Position - c.Position).Magnitude < 350 then
                    v.HumanoidRootPart.CFrame = c
                    v.Humanoid:ChangeState(11)
                    v.HumanoidRootPart.CanCollide = false
                    v.HumanoidRootPart.Size = Vector3.new(1, 1, 1)
                    v.HumanoidRootPart.Transparency = 1
                    for al, f in pairs(v:GetChildren()) do
                        if v:IsA("BasePart") then
                            v.Velocity = Vector3.new(0, 0, 0)
                            v.CanCollide = 0
                            v.Anchored = true
                        end
                    end
                    if v:FindFirstChild("Humanoid") then
                        v.Humanoid.WalkSpeed = 0
                        v.Humanoid.JumpPower = 0
                    else
                        return
                    end
                    if v.Humanoid:FindFirstChild("Animator") then
                        v.Humanoid.Animator:Destroy()
                    end
                    v.Humanoid:ChangeState(11)
                    task.wait(0.1)
                end
            end
        end
    end
end
local az = {}
for r, v in pairs(game:GetService("Workspace")["_WorldOrigin"].EnemySpawns:GetChildren()) do
    if not az[v.Name] or az[v.Name] == nil then
        az[v.Name] = {v.CFrame}
    elseif az[v.Name] then
        table.insert(az[v.Name], v.CFrame)
    end
end
function CheckMobInDistance(aA)
    idot = {["Workspace"] = false, ["ReplicatedStorage"] = false, ["NilInstace"] = false}
    for r, v in pairs(game.Workspace.Enemies:GetChildren()) do
        if table.find(aA, v.Name) then
            idot["Workspace"] = true
        end
    end
    for r, v in pairs(game.ReplicatedStorage:GetChildren()) do
        if table.find(aA, v.Name) then
            idot["ReplicatedStorage"] = true
        end
    end
    allnilinstance = getnilinstances()
    for r, v in pairs(allnilinstance) do
        if table.find(aA, v.Name) then
            idot["NilInstace"] = true
        end
    end
    return idot
end
function deobiettengi(aB, aC)
    for r, v in pairs(aB) do
        for O, P in pairs(aC) do
            if string.find(v, O) then
                return true
            end
        end
    end
    return false
end
function deobiettengi2(aD, aC)
    for r, v in pairs(aC) do
        if string.find(r, aD) then
            return true
        end
    end
end
function getLargestNumber(aE)
    s = 0
    for r, v in pairs(aE) do
        if type(r) == "number" and r > s then
            s = r
        end
    end
    return s
end
function removeNumber(aD)
    if type(aD) ~= "string" then
        return ""
    end
    str2 = aD:split(" ")
    str3 = ""
    str5 = getLargestNumber(str2)
    for r, v in pairs(str2) do
        if r < str5 then
            if r == 0 then
                str3 = v
            else
                str3 = str3 .. " " .. v
            end
        end
    end
    return str3
end
task.spawn(
    function()
        while task.wait() do
            if bringmob then
                pcall(
                    function()
                        BringMob()
                    end
                )
            end
        end
    end
)
function InMyNetWork(object)
    if isnetworkowner then
        return isnetworkowner(object)
    else
        if (object.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= _G.BringMode then
            return true
        end
        return false
    end
end
task.spawn(
    function()
        while task.wait() do
            pcall(
                function()
                    if _G.AutoFarmNearest and AutoFarmNearestMagnet or SelectMag and _G.BringMonster then
                        for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                            if
                                not string.find(v.Name, "Boss") and
                                    (v.HumanoidRootPart.Position -
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <=
                                        _G.BringMode
                             then
                                if InMyNetWork(v.HumanoidRootPart) then
                                    v.HumanoidRootPart.CFrame = PosMon
                                    v.Humanoid.JumpPower = 0
                                    v.Humanoid.WalkSpeed = 0
                                    v.HumanoidRootPart.Size = Vector3.new(70, 70, 70)
                                    v.HumanoidRootPart.Transparency = 1
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Head.CanCollide = false
                                    if v.Humanoid:FindFirstChild("Animator") then
                                        v.Humanoid.Animator:Destroy()
                                    end
                                    v.Humanoid:ChangeState(11)
                                    v.Humanoid:ChangeState(14)
                                end
                            end
                        end
                    end
                end
            )
        end
    end
)
Dropdown = Settings:AddDropdown("Dropdown", {
    Title = "Bring Mob",
    Values = {"Low", "Normal", "Super Bring"},
    Multi = false,
    Default = 1,
})
Dropdown:SetValue("Super Bring")
Dropdown:OnChanged(function(Value)
    _G.BringMode = Value      
end)    
spawn(function()
    while wait(.1) do
        if _G.BringMode then
            pcall(function()
                if _G.BringMode == "Low" then
                    _G.BringMode = 250
                elseif _G.BringMode == "Normal" then
                    _G.BringMode = 300
                elseif _G.BringMode == "Super Bring" then
                    _G.BringMode = 350
                end
            end)
        end
    end
end)
SelectedFarmDistnace = Settings:AddDropdown("SelectedFarmDistnace", {
    Title = "Farm Distance",
    Values = { "0", "10", "20", "30", "35", "40", "45"},
    Multi = false,
    Default = 45,
})
SelectedFarmDistnace:OnChanged(function(Value)
    PosY = Value
end)
Settings:AddParagraph({
        Title = "Farm Distance When Farm Should be 35 - 45,\nAnd Can Be Customized",
    })   
KillAtHs = {
   "10",
   "15",
   "20",
   "25",
   "30",
   "40",
   "50",
   "60",
   "70",
   "85",
   "90",
   "100"
}  
KillAtHpane = Settings:AddDropdown("KillAtHpane", {
     Title = "MobHealth",
     Values = KillAtHs,
     Multi = false,
     Default = 85,
})
KillAtHpane:OnChanged(function(Value)
    _G.Kill_At = Value
end)
Toggle = Settings:AddToggle("MyToggle", {Title = "Skill Z", Default = true })
Toggle:OnChanged(function(Value)
    _G.SkillZ = Value
end)
local Hold = {
  "0",
  "1",
  "2",
  "3",
  "4",
  "5"
}
HoldSkillZ = Settings:AddDropdown("HoldSkillZ", {
      Title = "Hold Skill Z",
      Values = Hold,
      Multi = false,
      Default = 0,
})
HoldSkillZ:OnChanged(function(Value)
    _G.HoldZ = Value
end)
Toggle = Settings:AddToggle("MyToggle", {Title = "Skill X", Default = false })
Toggle:OnChanged(function(Value)
    _G.SkillX = Value
end)
HoldSkillX = Settings:AddDropdown("HoldSkillX", {
        Title = "Hold Skill X",
        Values = Hold,
        Multi = false,
        Default = 0,
})
HoldSkillX:OnChanged(function(Value)
    _G.HoldX = Value
end)     
Toggle = Settings:AddToggle("MyToggle", {Title = "Skill C", Default = false })
Toggle:OnChanged(function(Value)
    _G.SkillC = Value
end)
HoldSkillC = Settings:AddDropdown("HoldSkillC", {
        Title = "Hold Skill C",
        Values = Hold,
        Multi = false,
        Default = 0,
})
HoldSkillC:OnChanged(function(Value)
    _G.HoldC = Value
end)
Toggle = Settings:AddToggle("MyToggle", {Title = "Skill V", Default = false })
Toggle:OnChanged(function(Value)
    _G.SkillV = Value
end)
HoldSkillV = Settings:AddDropdown("HoldSkillV", {
        Title = "Hold Skill V",
        Values = Hold,
        Multi = false,
        Default = 0,
})
HoldSkillV:OnChanged(function(Value)
    _G.HoldV = Value
end)
Toggle = Settings:AddToggle("MyToggle", {Title = "Skill F", Default = false })
Toggle:OnChanged(function(Value)
    _G.SkillF = Value
end)
HoldSkillF = Settings:AddDropdown("HoldSkillF", {
        Title = "Hold Skill F",
        Values = Hold,
        Multi = false,
        Default = 0,
})
HoldSkillF:OnChanged(function(Value)
    _G.HoldF = Value
end)
Main = Window:AddTab({ Title = "Tab Farming", Icon = "rbxassetid://10723407389" })
Main:AddParagraph({
        Title = "Main Farm",
        Content = "---------------------"
    })   
Dropdown = Main:AddDropdown("DropdownFarm", {
    Title = "Select Mode Farm",
    Values = {"Farm Level", "Farm Bone", "Farm Katakuri"},
    Multi = false,
})
Dropdown:SetValue("Farm Level")
Dropdown:OnChanged(function(Value)
FarmMode = Value
end)
spawn(function()
        while wait() do
            if FarmMode == "Farm Level" and _G.AutoFarm then
                spawn(function()
                    QuestTitle = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
                    if not string.find(QuestTitle, NameMon) then
                        StartMagnet = false
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                    end
                    if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                        StartMagnet = false
                        CheckQuest()
                        if BypassTP then
                        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuest.Position).Magnitude > 1500 then
						BTP(CFrameQuest * CFrame.new(0,20,5))
						elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuest.Position).Magnitude < 1500 then
						topos(CFrameQuest)
						end
					else
						topos(CFrameQuest)
					end
					if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuest.Position).Magnitude <= 20 then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest",NameQuest,LevelQuest)
                    end
                    elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                        CheckQuest()
                        if game:GetService("Workspace").Enemies:FindFirstChild(Mon) then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                    if v.Name == Mon then
                                        if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
                                            repeat task.wait()
                                                AutoHaki()
                                                EquipWeapon(_G.SelectWeapon)                        
                                                PosMon = v.HumanoidRootPart.CFrame
                                                topos(v.HumanoidRootPart.CFrame * CFrame.new(PosX,PosY,PosZ))
                                                v.HumanoidRootPart.CanCollide = false
                                                v.Humanoid.WalkSpeed = 0
                                                v.Head.CanCollide = false                                                
                                                StartMagnet = true
                                                if not Fast_Attack then
                                               game:GetService("VirtualUser"):CaptureController()
				       	                    game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672), game.Workspace.CurrentCamera.CFrame)
				                            end
                                            until not _G.AutoFarm or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                        else
                                            StartMagnet = false
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                                        end
                                    end
                                end
                            end
                        else
                            topos(CFrameMon)
                            StartMagnet = false
                            if game:GetService("ReplicatedStorage"):FindFirstChild(Mon) then
                             topos(game:GetService("ReplicatedStorage"):FindFirstChild(Mon).HumanoidRootPart.CFrame * CFrame.new(-16748.5273, 127.239319, 1013.28766, 0.924117982, 1.14822631e-08, 0.382107258, -6.77835166e-09, 1, -1.36565497e-08, -0.382107258, 1.00302051e-08, 0.924117982))
                            end
                        end
                    end
                end)
            end
        end
    end)
BonePos = CFrame.new(-9506.234375, 172.130615234375, 6117.0771484375)
spawn(function()
    while wait() do 
        if FarmMode == "Farm Bone" and _G.AutoFarm and World3 then
            pcall(function()
                if game:GetService("Workspace").Enemies:FindFirstChild("Reborn Skeleton") or 
                   game:GetService("Workspace").Enemies:FindFirstChild("Living Zombie") or 
                   game:GetService("Workspace").Enemies:FindFirstChild("Demonic Soul") or 
                   game:GetService("Workspace").Enemies:FindFirstChild("Posessed Mummy") then
                    for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if (v.Name == "Reborn Skeleton" or v.Name == "Living Zombie" or 
                            v.Name == "Demonic Soul" or v.Name == "Posessed Mummy") and 
                            v:FindFirstChild("Humanoid") and 
                            v:FindFirstChild("HumanoidRootPart") and 
                            v.Humanoid.Health > 0 then
                            repeat 
                                task.wait()
                                AutoHaki()
                                EquipWeapon(_G.SelectWeapon)
                                v.HumanoidRootPart.CanCollide = false
                                v.Humanoid.WalkSpeed = 0
                                v.Head.CanCollide = false 
                                topos(v.HumanoidRootPart.CFrame * Pos)
                                NameBoneMon = v.Name
                                if v.Name == "Demonic Soul" then
                                    BringMobBone(v.Name, CFrame.new(-9497.908203125, 172.1048126220703, 6148.97119140625))
                                elseif v.Name == "Living Zombie" then
                                    BringMobBone(v.Name, CFrame.new(-10143.466796875, 138.6266632080078, 5974.3330078125))
                                elseif v.Name == "Reborn Skeleton" then
                                    BringMobBone(v.Name, CFrame.new(-8760.986328125, 142.1048126220703, 6039.1083984375))
                                elseif v.Name == "Posessed Mummy" then
                                    BringMobBone(v.Name, CFrame.new(-9575.4267578125, 5.792530536651611, 6226.22900390625))
                                end
                            until not _G.AutoFarm or not v.Parent or v.Humanoid.Health <= 0
                        end
                    end
                else
                    if BypassTP then
                        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - BonePos.Position).Magnitude > 1500 then
                            BTP(BonePos)
                        else
                            topos(BonePos)
                        end
                    else
                        topos(BonePos)
                    end
                    UnEquipWeapon(_G.SelectWeapon)
                    topos(CFrame.new(-9506.234375, 172.130615234375, 6117.0771484375))
                end
            end)
        end
    end
end)
CakePos = CFrame.new(-2091.911865234375, 70.00884246826172, -12142.8359375)
spawn(function()
       while wait() do
         if FarmMode == "Farm Katakuri" and _G.AutoFarm and World3 then
         pcall(function()                        
      if game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Cake Prince" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        NeedAttacking = true
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(0, 35, 0))
                                        v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                        if game:GetService("Workspace")["_WorldOrigin"]:FindFirstChild("Ring") or game:GetService("Workspace")["_WorldOrigin"]:FindFirstChild("Fist") or game:GetService("Workspace")["_WorldOrigin"]:FindFirstChild("MochiSwirl") then
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(0, -35, 0))
                                       else
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(4, 10, 10))
                                       end
                                    until not _G.AutoFarm == false or not v.Parent or v.Humanoid.Health <= 0 or tween:Cancel() or game:GetService("Workspace").Enemies:FindFirstChild("Ring") and game:GetService("Workspace").Enemies:FindFirstChild("Fist") and game:GetService("Workspace").Enemies:FindFirstChild("MochiSwirl")
                                if game:GetService("Workspace").Enemies:FindFirstChild("Ring") and game:GetService("Workspace").Enemies:FindFirstChild("Fist") and game:GetService("Workspace").Enemies:FindFirstChild("MochiSwirl")  then
                                    end
                                end
                            end
                        end
                    else
               if game:GetService("Workspace").Map.CakeLoaf.BigMirror.Other.Transparency == 0 and (CFrame.new(-1990.672607421875, 4532.99951171875, -14973.6748046875).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >= 500 then
                        topos(CFrame.new(-2151.82153, 149.315704, -12404.9053))
                         else
                            if KillMob == 0 then
                            end                    
                            if game:GetService("Workspace").Map.CakeLoaf.BigMirror.Other.Transparency == 1 then
                                if game:GetService("Workspace").Enemies:FindFirstChild("Cookie Crafter") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Guard") or game:GetService("Workspace").Enemies:FindFirstChild("Baking Staff") or game:GetService("Workspace").Enemies:FindFirstChild("Head Baker") then
                                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                        if v.Name == "Cookie Crafter" or v.Name == "Cake Guard" or v.Name == "Baking Staff" or v.Name == "Head Baker" then
                                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                                repeat wait()
                                                    NeedAttacking = true
                                                    AutoHaki()
                                                    EquipWeapon(_G.SelectWeapon)
                                                    v.HumanoidRootPart.CanCollide = false
                                                    v.Humanoid.WalkSpeed = 0
                                                    v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                                    PosMon = v.HumanoidRootPart.CFrame
                                                    MonFarm = v.Name
                                                    v.Head.CanCollide = false
                                                    topos(v.HumanoidRootPart.CFrame * CFrame.new(5, 40, 7))
                                                    if v.Name == "Cookie Crafter" then
														BringMobCake(v.Name, CFrame.new(-2351.32861328125, 37.7981071472168, -12108.84375))
													elseif v.Name == "Cake Guard" then
														BringMobCake(v.Name, CFrame.new(-1608.6195068359375, 37.79800796508789, -12381.6044921875))
													elseif v.Name == "Baking Staff" then
														BringMobCake(v.Name, CFrame.new(-1865.7054443359375, 37.79812240600586, -12856.1416015625))
													elseif v.Name == "Head Baker" then
														BringMobCake(v.Name, CFrame.new(-2241.444091796875, 53.50244140625, -12868.287109375))
													end
                                                until not _G.AutoFarm or not v.Parent or v.Humanoid.Health <= 0 or game:GetService("Workspace").Map.CakeLoaf.BigMirror.Other.Transparency == 0 or game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") or KillMob == 0
                                            end
                                        end
                                    end
                                else
                                if BypassTP then
                                        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CakePos.Position).Magnitude > 1500 then
                                            BTP(CakePos)
                                        elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CakePos.Position).Magnitude < 1500 then
                                            topos(CakePos)
                                        end
                                    else
                                        topos(CakePos)
                                    end                     
                             RandomTele = math.random(1, 3)
                                if RandomTele == 1 then
                                    topos(CFrame.new(-1436.86011, 167.753616, -12296.9512))
                                elseif RandomTele == 2 then
                                    topos(CFrame.new(-2383.78979, 150.450592, -12126.4961))
                                elseif RandomTele == 3 then
                                    topos(CFrame.new(-2231.2793, 168.256653, -12845.7559))
                                end
                                    if game:GetService("ReplicatedStorage"):FindFirstChild("Cookie Crafter") then
                                        topos(game:GetService("ReplicatedStorage"):FindFirstChild("Cookie Crafter").HumanoidRootPart.CFrame * CFrame.new(2,20,2)) 
                                    else
                                        if game:GetService("ReplicatedStorage"):FindFirstChild("Cake Guard") then
                                            topos(game:GetService("ReplicatedStorage"):FindFirstChild("Cake Guard").HumanoidRootPart.CFrame * CFrame.new(2,20,2)) 
                                        else
                                            if game:GetService("ReplicatedStorage"):FindFirstChild("Baking Staff") then
                                                topos(game:GetService("ReplicatedStorage"):FindFirstChild("Baking Staff").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                                            else
                                                if game:GetService("ReplicatedStorage"):FindFirstChild("Head Baker") then
                                                    topos(game:GetService("ReplicatedStorage"):FindFirstChild("Head Baker").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                                                end
                                            end
                                        end
                                    end                       
                                end
                            else
                                if game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince") then
                                    topos(game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                                else
                                    if game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince") then
                                        topos(game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                                end
                            end
                        end
                    end
                end
            end)
        end
    end
end)
Toggle = Main:AddToggle("Start Farm", { Title = "Start Farm", Description = "", Default = false })
Toggle:OnChanged(function(Value)
    _G.AutoFarm = Value
    StopTween(_G.AutoFarm)
end)
Toggle = Main:AddToggle("MyToggle", {Title = "Auto Mob Aura", Default = false })
Toggle:OnChanged(function(Value)
    _G.AutoFarmNearest = Value
    StopTween(_G.AutoFarmNearest)
end)
spawn(function()
        while wait(.1) do
        if _G.AutoFarmNearest then
        pcall(function()
          for i,v in pairs (game.Workspace.Enemies:GetChildren()) do
          if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
          if v.Name then
          if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v:FindFirstChild("HumanoidRootPart").Position).Magnitude <= 5000 then
            repeat wait()
                AutoHaki()
                EquipWeapon(_G.SelectWeapon)
                topos(v.HumanoidRootPart.CFrame * CFrame.new(PosX,PosY,PosZ))
                v.HumanoidRootPart.CanCollide = false
                v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                game:GetService("VirtualUser"):CaptureController()
                game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672), game.Workspace.CurrentCamera.CFrame)
                AutoFarmNearestMagnet = true
                PosMon = v.HumanoidRootPart.CFrame
            until not _G.AutoFarmNearest or not v.Parent or v.Humanoid.Health <= 0 or not game.Workspace.Enemies:FindFirstChild(v.Name)
                AutoFarmNearestMagnet = false
                          end
                       end
                   end
               end
           end)
        end
    end
end)
Main:AddParagraph({
        Title = "Mastery Farm",
        Content = "---------------------"
    })
Dropdown = Main:AddDropdown("DropdownFarm", {
    Title = "Select Level Mastery Farm",
    Values = {"Fruit", "Gun"},
    Multi = false,
})
Dropdown:SetValue("")
Dropdown:OnChanged(function(Value)
FarmMode2 = Value
end)
spawn(function()
        while wait() do
            if FarmMode2 == "Fruit" and _G.MasteryFarm then
                pcall(function()
                    QuestTitle = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
                    if not string.find(QuestTitle, NameMon) then
                        Magnet = false
                        UseSkill = false
                        Skillaimbot = false
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                    end
                    if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                        StartMasteryFruitMagnet = false
                        UseSkill = false
                        CheckQuest()
                        if BypassTP then
                            if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuest.Position).Magnitude > 2000 then
						        BTP(CFrameQuest)
                            elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuest.Position).Magnitude <= 2000 then
                                topos(CFrameQuest)
                            else
						        topos(CFrameQuest)
					        end
                        end
                        repeat wait()
                            topos(CFrameQuest)
                        until (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not _G.MasteryFarm
                        if (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5 then
                            wait(0.1)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest",NameQuest,LevelQuest)
                            wait(0.1)
                        end
                    elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                        CheckQuest()
                        if game:GetService("Workspace").Enemies:FindFirstChild(Mon) then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                    if v.Name == Mon then
                                        if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
                                            HealthMs = v.Humanoid.MaxHealth * _G.Kill_At/100
                                            repeat task.wait()
                                                if v.Humanoid.Health <= HealthMs then
                                                    AutoHaki()
                                                    EquipWeapon(game:GetService("Players").LocalPlayer.Data.DevilFruit.Value)
                                                    topos(v.HumanoidRootPart.CFrame * CFrame.new(0,10,0))
                                                    v.HumanoidRootPart.CanCollide = false
                                                    PosMonMasteryFruit = v.HumanoidRootPart.CFrame
                                                    MonFarm = v.Name                
                                                    PosMon = v.HumanoidRootPart.CFrame
                                                    v.Humanoid.WalkSpeed = 0
                                                    v.Head.CanCollide = false
                                                    UseSkill = true
                                                    Skillaimbot = true
                                                else           
                                                    UseSkill = false 
                                                    Skillaimbot = false
                                                    AutoHaki()
                                                    EquipWeapon(_G.SelectWeapon)
                                                    MonFarm = v.Name                
                                                    PosMon = v.HumanoidRootPart.CFrame
                                                    topos(v.HumanoidRootPart.CFrame * CFrame.new(PosX,PosY,PosZ))
                                                    v.HumanoidRootPart.CanCollide = false           
                                                    PosMonMasteryFruit = v.HumanoidRootPart.CFrame
                                                    v.Humanoid.WalkSpeed = 0
                                                    v.Head.CanCollide = false
                                                end
                                                StartMasteryFruitMagnet = true
                                                game:GetService'VirtualUser':CaptureController()
                                                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                            until not _G.MasteryFarm or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                        else
                                            UseSkill = false
                                            StartMasteryFruitMagnet = false
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                                        end
                                    end
                                end
                            end
                        else
                        topos(CFrameMon)
                            StartMasteryFruitMagnet = false   
                            UseSkill = false 
                            Skillaimbot = false
                            Mob = game:GetService("ReplicatedStorage"):FindFirstChild(Mon) 
                            if Mob then
                                topos(Mob.HumanoidRootPart.CFrame * CFrame.new(0,0,10))
                            else
                                if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame.Y <= 1 then
                                    game:GetService("Players").LocalPlayer.Character.Humanoid.Jump = true
                                    task.wait()
                                    game:GetService("Players").LocalPlayer.Character.Humanoid.Jump = false
                                end
                            end
                        end
                    end
                end)
            end
        end
    end)
spawn(function()
        while wait() do
            if UseSkill then
                pcall(function()
                    CheckQuest()
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if game:GetService("Players").LocalPlayer.Character:FindFirstChild(game:GetService("Players").LocalPlayer.Data.DevilFruit.Value) then
                            MasBF = game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Data.DevilFruit.Value].Level.Value
                        elseif game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(game:GetService("Players").LocalPlayer.Data.DevilFruit.Value) then
                            MasBF = game:GetService("Players").LocalPlayer.Backpack[game:GetService("Players").LocalPlayer.Data.DevilFruit.Value].Level.Value
                        end
                        if game:GetService("Players").LocalPlayer.Character:FindFirstChild(game:GetService("Players").LocalPlayer.Data.DevilFruit.Value) then
                            if _G.SkillZ and _G.HoldZ then 
                                local args = {
                                    [1] = PosMonMasteryFruit.Position
                                }
                                game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))                         
                                game:GetService("VirtualInputManager"):SendKeyEvent(true,"Z",false,game)
                                wait(_G.HoldZ)
                                game:GetService("VirtualInputManager"):SendKeyEvent(false,"Z",false,game)
                            end
                            if _G.SkillX and _G.HoldX then
                                local args = {
                                    [1] = PosMonMasteryFruit.Position
                                }
                                game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))                           
                                game:GetService("VirtualInputManager"):SendKeyEvent(true,"X",false,game)
                                wait(_G.HoldX)
                                game:GetService("VirtualInputManager"):SendKeyEvent(false,"X",false,game)
                            end
                            if _G.SkillC and _G.HoldC then
                                local args = {
                                    [1] = PosMonMasteryFruit.Position
                                }
                                game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))                           
                                game:GetService("VirtualInputManager"):SendKeyEvent(true,"C",false,game)
                                wait(_G.HoldC)
                                game:GetService("VirtualInputManager"):SendKeyEvent(false,"C",false,game)
                            end
                            if _G.SkillV and _G.HoldV then
                                local args = {
                                    [1] = PosMonMasteryFruit.Position
                                }
                                game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))
                                game:GetService("VirtualInputManager"):SendKeyEvent(true,"V",false,game)
                                wait(_G.HoldV)
                                game:GetService("VirtualInputManager"):SendKeyEvent(false,"V",false,game)
                            end
                            if _G.SkillF and _G.HoldF then
                                local args = {
                                    [1] = PosMonMasteryFruit.Position
                                }
                                game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))
                                game:GetService("VirtualInputManager"):SendKeyEvent(true,"F",false,game)
                                wait(_G.HoldF)
                                game:GetService("VirtualInputManager"):SendKeyEvent(false,"F",false,game)
                            end
                        end
                    end
                end)
            end
        end
    end)    
spawn(function()
        game:GetService("RunService").RenderStepped:Connect(function()
            pcall(function()
                if UseSkill then
                    for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Notifications:GetChildren()) do
                        if v.Name == "NotificationTemplate" then
                            if string.find(v.Text,"Skill locked!") then
                                v:Destroy()
                            end
                        end
                    end
                end
            end)
        end)
    end)    
spawn(function()
        pcall(function()
            game:GetService("RunService").RenderStepped:Connect(function()
                if UseSkill then
                    local args = {
                        [1] = PosMonMasteryFruit.Position
                    }
                    game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Data.DevilFruit.Value].RemoteEvent:FireServer(unpack(args))
                end
            end)
        end)
    end)    
spawn(function()
    pcall(function()
        while wait() do
            if FarmMode2 == "Gun" and _G.MasteryFarm then
                QuestTitle = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
                if not string.find(QuestTitle, NameMon) then
                    Magnet = false                            
                     Skillaimbot = false          
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                end
                if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                    SStartMasteryGunMagnet= false
                    CheckQuest()
                        if BypassTP then
                            if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuest.Position).Magnitude > 2000 then
						        BTP(CFrameQuest)
                            elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuest.Position).Magnitude <= 2000 then
                                topos(CFrameQuest)
                            else
                                topos(CFrameQuest)
                            end
                        else                                 
                             topos(CFrameQuest)
                        end
                    if (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
                        wait(1.1)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NameQuest, LevelQuest)
                    end
                elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                    CheckQuest()
                    if game:GetService("Workspace").Enemies:FindFirstChild(Mon) then
                        pcall(function()
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == Mon then
                                    repeat task.wait()
                                        if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
                                            HealthMin = v.Humanoid.MaxHealth * _G.Kill_At/100
                                            if v.Humanoid.Health <= HealthMin then 
                                                EquipWeapon(SelectWeaponGun)
                                                Skillaimbot = true
                                                AimSkill = v.Engine.CFrame * CFrame.new(0, -15, 0)
                                                AimBotSkillPosition = AimSkill.Position
                                                MonFarm = v.Name                
                                                PosMon = v.HumanoidRootPart.CFrame
                                                topos(v.HumanoidRootPart.CFrame * CFrame.new(0,0,10))
                                                v.Humanoid.WalkSpeed = 0
                                                v.HumanoidRootPart.CanCollide = false
                                                v.HumanoidRootPart.Size = Vector3.new(2,2,1)
                                                v.Head.CanCollide = false                                                
                                                local args = {
                                                    [1] = v.HumanoidRootPart.Position,
                                                    [2] = v.HumanoidRootPart
                                                }
                                                game:GetService("Players").LocalPlayer.Character[SelectWeaponGun].RemoteFunctionShoot:InvokeServer(unpack(args))
                                                wait(.1)
                                                game:GetService("VirtualInputManager"):SendKeyEvent(true,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                                                game:GetService("VirtualInputManager"):SendKeyEvent(false,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                                                wait(.1)
                                                game:GetService("VirtualInputManager"):SendKeyEvent(true,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                                                game:GetService("VirtualInputManager"):SendKeyEvent(false,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                                            else
                                                AutoHaki()
                                                EquipWeapon(_G.SelectWeapon)
                                                MonFarm = v.Name                
                                                PosMon = v.HumanoidRootPart.CFrame
                                                v.Humanoid.WalkSpeed = 0
                                                v.HumanoidRootPart.CanCollide = false
                                                v.Head.CanCollide = false    
                                                topos(v.HumanoidRootPart.CFrame * CFrame.new(PosX,PosY,PosZ))
                                                game:GetService'VirtualUser':CaptureController()
                                                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                            end
                                            StartMasteryGunMagnet = true 
                                            PosMonMasteryGun = v.HumanoidRootPart.CFrame
                                        else
                                            StartMasteryGunMagnet = true 
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                                        end
                                    until v.Humanoid.Health <= 0 or not _G.MasteryFarm or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                    StartMasteryGunMagnet = true 
                                end
                            end
                        end)
                    else
                       topos(CFrameMon)
                        SStartMasteryGunMagnet= false
                        Mob = game:GetService("ReplicatedStorage"):FindFirstChild(Mon) 
                        if Mob then
                            topos(Mob.HumanoidRootPart.CFrame * CFrame.new(0,0,10))
                        else
                            if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame.Y <= 1 then
                                game:GetService("Players").LocalPlayer.Character.Humanoid.Jump = true
                                task.wait()
                                game:GetService("Players").LocalPlayer.Character.Humanoid.Jump = false
                            end
                        end
                    end 
                end
            end
        end
    end)
end)
spawn(function()
    pcall(function()
        if _G.MasteryFarm then
            while wait() do
                for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                    if v:IsA("Tool") then
                        if v:FindFirstChild("RemoteFunctionShoot") then
                            SelectWeaponGun = v.Name
                        end
                    end
                end
            end
        end
    end)
end)    
Toggle = Main:AddToggle("Auto Farm", { Title = "Auto Farm", Description = "", Default = false })
Toggle:OnChanged(function(Value)
    _G.MasteryFarm = Value
    StopTween(_G.MasteryFarm)
end)
Main:AddParagraph({
        Title = "Other Farm",
        Content = "---------------------"
    })	
Quetsi2 = Main:AddToggle("Quetsi2", {
    Title = "Auto New World",
    Description = "",
    Default = _G.AutoSecondSea })
    Quetsi2:OnChanged(function(Value)
    _G.AutoSecondSea = Value
end)
if World2 then
spawn(function()
            while wait() do 
                if _G.AutoSecondSea and World1 then
                    spawn(function()
                        MyLevel = game:GetService("Players").LocalPlayer.Data.Level.Value
                        if MyLevel >= 700 and World1 then
                            if game:GetService("Workspace").Map.Ice.Door.CanCollide == false and game:GetService("Workspace").Map.Ice.Door.Transparency == 1 then
                                CFrame1 = CFrame.new(4849.29883, 5.65138149, 719.611877)
                                repeat topos(CFrame1) wait() until (CFrame1.Position-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or _G.AutoSecondSea == false
                                wait(1.1)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("DressrosaQuestProgress","Detective")
                                wait(0.1)
                                EquipWeapon("Key")
                                repeat topos(CFrame.new(1347.7124, 37.3751602, -1325.6488)) wait() until (Vector3.new(1347.7124, 37.3751602, -1325.6488)-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or _G.AutoSecondSea == false
                                wait(0.1)
                            else
                                if game:GetService("Workspace").Map.Ice.Door.CanCollide == false and game:GetService("Workspace").Map.Ice.Door.Transparency == 1 then
                                    if game:GetService("Workspace").Enemies:FindFirstChild("Ice Admiral [Lv. 700] [Boss]") then
                                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                            if v.Name == "Ice Admiral" then
                                                if not v.Humanoid.Health <= 0 then
                                                    if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                                        OldCFrameSecond = v.HumanoidRootPart.CFrame
                                                        repeat task.wait()
                                                            AutoHaki()
                                                            EquipWeapon(_G.SelectWeapon)
                                                            v.HumanoidRootPart.CanCollide = false
                                                            v.Humanoid.WalkSpeed = 0
                                                            v.Head.CanCollide = false
                                                            
                                                            v.HumanoidRootPart.CFrame = OldCFrameSecond
                                                            topos(v.HumanoidRootPart.CFrame * CFrame.new(PosX,PosY,PosZ))
                                                            sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                                        until not _G.AutoSecondSea or not v.Parent or v.Humanoid.Health <= 0
                                                    end
                                                else 
                                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
                                                end
                                            end
                                        end
                                    else
                                        if game:GetService("ReplicatedStorage"):FindFirstChild("Ice Admiral") then
                                            topos(game:GetService("ReplicatedStorage"):FindFirstChild("Ice Admiral").HumanoidRootPart.CFrame * CFrame.new(5,10,7))
                                        end
                                    end
                                end
                            end
                        end
                    end)
                end
            end
        end)
    end        
Quetsi3 = Main:AddToggle("Quetsi3", {
    Title = "Auto Third world",
    Description = "",
    Default = _G.AutoThirdSea })
    Quetsi3:OnChanged(function(Value)
    _G.AutoThirdSea = Value
end)
if World3 then
spawn(function()
            while wait() do
                if _G.AutoThirdSea and World2 then
                    pcall(function()
                        if game:GetService("Players").LocalPlayer.Data.Level.Value >= 1500 and World2 then
                            _G.AutoFarm = false
                            if game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("ZQuestProgress", "General") == 0 then
                                topos(CFrame.new(-1926.3221435547, 12.819851875305, 1738.3092041016))
                                if (CFrame.new(-1926.3221435547, 12.819851875305, 1738.3092041016).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
                                    wait(1.1)
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ZQuestProgress","Begin")
                                end
                                wait(1.3)
                                if game:GetService("Workspace").Enemies:FindFirstChild("rip_indra [Lv. 1500] [Boss]") then
                                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                        if v.Name == "rip_indra" then
                                            OldCFrameThird = v.HumanoidRootPart.CFrame
                                            repeat task.wait()
                                                AutoHaki()
                                                EquipWeapon(_G.SelectWeapon)
                                                topos(v.HumanoidRootPart.CFrame * CFrame.new(PosX,PosY,PosZ))
                                                v.HumanoidRootPart.CFrame = OldCFrameThird
                                                
                                                v.HumanoidRootPart.CanCollide = false
                                                v.Humanoid.WalkSpeed = 0
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
                                                sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                            until _G.AutoThirdSea == false or v.Humanoid.Health <= 0 or not v.Parent
                                        end
                                    end
                                elseif not game:GetService("Workspace").Enemies:FindFirstChild("rip_indra") and (CFrame.new(-26880.93359375, 22.848554611206, 473.18951416016).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1000 then
                                    topos(CFrame.new(-26880.93359375, 22.848554611206, 473.18951416016))
                                end
                            end
                        end
                    end)
                end
            end
        end)
    end        
badilo = Main:AddToggle("badilo", {Title = "Auto Bartilo", Default = _G.AutoBartilo })
badilo:OnChanged(function(value)
    _G.AutoBartilo = value
end)
spawn(function()
        pcall(function()
            while wait(.1) do
                if _G.AutoBartilo and World2 then
                    if game:GetService("Players").LocalPlayer.Data.Level.Value >= 800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 0 then
                        if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Swan Pirates") and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "50") and game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then 
                            if game:GetService("Workspace").Enemies:FindFirstChild("Swan Pirate") then
                                Ms = "Swan Pirate"
                                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if v.Name == Ms then
                                        pcall(function()
                                            repeat task.wait()
                                                sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                                                AutoHaki()
                                                EquipWeapon(_G.SelectWeapon)
                                                v.HumanoidRootPart.Transparency = 1
                                                v.HumanoidRootPart.CanCollide = false
                                                topos(v.HumanoidRootPart.CFrame * Pos)
                                                NameSwanMon = v.Name
                                                if v.Name == "Swan Pirate" then
					                                BringMobSwan(v.Name, CFrame.new(946.045898, 72.9597092, 1228.28796, 0.241395146, 2.32742075e-08, -0.970426917, -1.1568777e-08, 1, 2.11057216e-08, 0.970426917, 6.13183415e-09, 0.241395146))
								            	end
                                            until not v.Parent or v.Humanoid.Health <= 0 or _G.AutoBartilo == false or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                        end)
                                    end
                                end
                            else
                                repeat topos(CFrame.new(932.624451, 156.106079, 1180.27466, -0.973085582, 4.55137119e-08, -0.230443969, 2.67024713e-08, 1, 8.47491108e-08, 0.230443969, 7.63147128e-08, -0.973085582)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(932.624451, 156.106079, 1180.27466, -0.973085582, 4.55137119e-08, -0.230443969, 2.67024713e-08, 1, 8.47491108e-08, 0.230443969, 7.63147128e-08, -0.973085582)).Magnitude <= 10
                            end
                        else
                            repeat topos(CFrame.new(-456.28952, 73.0200958, 299.895966)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-456.28952, 73.0200958, 299.895966)).Magnitude <= 10
                            wait(1.1)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest","BartiloQuest",1)
                        end 
                    elseif game:GetService("Players").LocalPlayer.Data.Level.Value >= 800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 1 then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Jeremy") then
                            Ms = "Jeremy"
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == Ms then
                                    OldCFrameBartlio = v.HumanoidRootPart.CFrame
                                    repeat task.wait()
                                        sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.Transparency = 1
                                        v.HumanoidRootPart.CanCollide = false
                                        
                                        v.HumanoidRootPart.CFrame = OldCFrameBartlio
                                        topos(v.HumanoidRootPart.CFrame * Pos)
                                        -- sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                    until not v.Parent or v.Humanoid.Health <= 0 or _G.AutoBartilo == false
                                end
                            end
                        elseif game:GetService("ReplicatedStorage"):FindFirstChild("Jeremy [Lv. 850] [Boss]") then
                            repeat topos(CFrame.new(-456.28952, 73.0200958, 299.895966)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-456.28952, 73.0200958, 299.895966)).Magnitude <= 10
                            wait(1.1)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo")
                            wait(1)
                            repeat topos(CFrame.new(2099.88159, 448.931, 648.997375)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(2099.88159, 448.931, 648.997375)).Magnitude <= 10
                            wait(1)
                        else
                            repeat topos(CFrame.new(2099.88159, 448.931, 648.997375)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(2099.88159, 448.931, 648.997375)).Magnitude <= 10
                        end
                    elseif game:GetService("Players").LocalPlayer.Data.Level.Value >= 800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 2 then
                        repeat topos(CFrame.new(-1850.49329, 13.1789551, 1750.89685)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1850.49329, 13.1789551, 1750.89685)).Magnitude <= 10
                        wait(1)
                        repeat topos(CFrame.new(-1858.87305, 19.3777466, 1712.01807)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1858.87305, 19.3777466, 1712.01807)).Magnitude <= 10
                        wait(1)
                        repeat topos(CFrame.new(-1803.94324, 16.5789185, 1750.89685)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1803.94324, 16.5789185, 1750.89685)).Magnitude <= 10
                        wait(1)
                        repeat topos(CFrame.new(-1858.55835, 16.8604317, 1724.79541)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1858.55835, 16.8604317, 1724.79541)).Magnitude <= 10
                        wait(1)
                        repeat topos(CFrame.new(-1869.54224, 15.987854, 1681.00659)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1869.54224, 15.987854, 1681.00659)).Magnitude <= 10
                        wait(1)
                        repeat topos(CFrame.new(-1800.0979, 16.4978027, 1684.52368)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1800.0979, 16.4978027, 1684.52368)).Magnitude <= 10
                        wait(1)
                        repeat topos(CFrame.new(-1819.26343, 14.795166, 1717.90625)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1819.26343, 14.795166, 1717.90625)).Magnitude <= 10
                        wait(1)
                        repeat topos(CFrame.new(-1813.51843, 14.8604736, 1724.79541)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1813.51843, 14.8604736, 1724.79541)).Magnitude <= 10
                    end
                end 
            end
        end)
    end)        	
Toggle = Main:AddToggle("MyToggle", {Title = "Auto Pray", Default = false })
Toggle:OnChanged(function(Value)
    _G.Pray = Value
    StopTween(_G.Pray)
end)
spawn(function()
        pcall(function()
            while wait(.1) do
                if _G.Pray and World3 then    
                    topos(CFrame.new(-8652.99707, 143.450119, 6170.50879, -0.983064115, -2.48005533e-10, 0.18326205, -1.78910387e-09, 1, -8.24392288e-09, -0.18326205, -8.43218029e-09, -0.983064115))
                    wait()
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("gravestoneEvent",1)
                end
            end
        end)
    end)    
Toggle = Main:AddToggle("MyToggle", {Title = "Auto Try Luck", Default = false })
Toggle:OnChanged(function(Value)
    _G.Trylux = Value
    StopTween(_G.Trylux)
end)
spawn(function()
        pcall(function()
            while wait(.1) do
                if _G.Trylux and World3 then    
                    topos(CFrame.new(-8652.99707, 143.450119, 6170.50879, -0.983064115, -2.48005533e-10, 0.18326205, -1.78910387e-09, 1, -8.24392288e-09, -0.18326205, -8.43218029e-09, -0.983064115))
                    wait()
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("gravestoneEvent",2)
                end
            end
        end)
    end)    
Toggle = Main:AddToggle("MyToggle", {Title = "Auto Arena Trainer", Default = _G.Namfon })
Toggle:OnChanged(function(Value)
    _G.Namfon = Value
end)
spawn(function()
            while wait() do
                if _G.Namfon and World3 then
                    pcall(function()
                        if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                            if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Training Dummy") or string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Training Dummy") or string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Training Dummy") then
                                if game:GetService("Workspace").Enemies:FindFirstChild("Training Dummy") or game:GetService("Workspace").Enemies:FindFirstChild("Training Dummy") or game:GetService("Workspace").Enemies:FindFirstChild("Training Dummy") then
                                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                        if v.Name == "Training Dummy" or v.Name == "Training Dummy" or v.Name == "Training Dummy" then
                                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                                repeat wait()
                                                    AutoHaki()
                                                    EquipWeapon(_G.SelectWeapon)
                                                    v.HumanoidRootPart.CanCollide = false
                                                    v.Humanoid.WalkSpeed = 0
                                                    v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                                    topos(v.HumanoidRootPart.CFrame * Pos)
                                                until _G.Namfon == false or v.Humanoid.Health <= 0 or not v.Parent
                                            end
                                        end
                                    end
                                else
                                    topos(CFrame.new(3757.732421875, 91.99540710449219, 253.65066528320312))
                                    if game:GetService("ReplicatedStorage"):FindFirstChild("Training Dummy") then
                                        topos(game:GetService("ReplicatedStorage"):FindFirstChild("Training Dummy").HumanoidRootPart.CFrame * MethodFarm)
                                    elseif game:GetService("ReplicatedStorage"):FindFirstChild("Training Dummy") then
                                        topos(game:GetService("ReplicatedStorage"):FindFirstChild("Training Dummy").HumanoidRootPart.CFrame * MethodFarm)
                                    elseif game:GetService("ReplicatedStorage"):FindFirstChild("Training Dummy") then
                                        topos(game:GetService("ReplicatedStorage"):FindFirstChild("Training Dummy").HumanoidRootPart.CFrame * MethodFarm)
                                    end
                                end                    
                            end
                        else
                            if _G.AutoArenaTrainerHop and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ArenaTrainer") == "I don't have anything for you right now. Come back later." then
                                hop()
                            else
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ArenaTrainer")
                            end
                        end
                    end)
                end
            end
        end)        
Toggle = Main:AddToggle("MyToggle", {Title = "Auto Kill Elite", Default = _G.AutoElitehunter })
Toggle:OnChanged(function(Value)
    _G.AutoElitehunter = Value
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
end)
Toggle = Main:AddToggle("MyToggle", {Title = "Auto Kill Elite Hop", Default = _G.AutoEliteHunterHop })
Toggle:OnChanged(function(Value)
    _G.AutoEliteHunterHop = Value
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
end)
spawn(function()
        while wait() do
            if _G.AutoElitehunter and World3 then
                pcall(function()
                    if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
						if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Diablo") or string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Deandre") or string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Urban") then
							if game:GetService("Workspace").Enemies:FindFirstChild("Diablo") or game:GetService("Workspace").Enemies:FindFirstChild("Deandre") or game:GetService("Workspace").Enemies:FindFirstChild("Urban") then
								for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
									if v.Name == "Diablo" or v.Name == "Deandre" or v.Name == "Urban" then
										if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
											repeat wait()
                                                AutoHaki()
                                                EquipWeapon(_G.SelectWeapon)
                                                v.HumanoidRootPart.CanCollide = false
                                                v.Humanoid.WalkSpeed = 0                                                
                                                topos(v.HumanoidRootPart.CFrame * CFrame.new(PosX,PosY,PosZ))
                                                game:GetService("VirtualUser"):CaptureController()
                                                game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                                sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                            until _G.AutoElitehunter == false or v.Humanoid.Health <= 0 or not v.Parent
										end
									end
								end
							else
                            if game:GetService("ReplicatedStorage"):FindFirstChild("Diablo") then
                                    topos(game:GetService("ReplicatedStorage"):FindFirstChild("Diablo").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                                elseif game:GetService("ReplicatedStorage"):FindFirstChild("Deandre") then
                                    topos(game:GetService("ReplicatedStorage"):FindFirstChild("Deandre").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                                elseif game:GetService("ReplicatedStorage"):FindFirstChild("Urban") then
                                    topos(game:GetService("ReplicatedStorage"):FindFirstChild("Urban").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
								end
							end                    
						end
					else					
						if _G.AutoEliteHunterHop and game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("EliteHunter") == "I don't have anything for you right now. Come back later." then
							Hop()
						else
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter")
						end
					end
				end)
			end
		end
	end)
Item = Window:AddTab({ Title = "Tab Get Item", Icon = "rbxassetid://10734975692" })  
Toggle = Item:AddToggle("MyToggle", {Title = "Auto Saber", Default = _G.AutoSaber })
Toggle:OnChanged(function(autosaberfunc)
    _G.AutoSaber = autosaberfunc
end)
spawn(function()
        while task.wait() do
            if _G.AutoSaber and game.Players.LocalPlayer.Data.Level.Value >= 200 then
                pcall(function()
                    if game:GetService("Workspace").Map.Jungle.Final.Part.Transparency == 0 then
                        if game:GetService("Workspace").Map.Jungle.QuestPlates.Door.Transparency == 0 then
                            if (CFrame.new(-1612.55884, 36.9774132, 148.719543, 0.37091279, 3.0717151e-09, -0.928667724, 3.97099491e-08, 1, 1.91679348e-08, 0.928667724, -4.39869794e-08, 0.37091279).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 100 then
                                topos(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
                                wait(1)
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate1.Button.CFrame
                                wait(1)
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate2.Button.CFrame
                                wait(1)
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate3.Button.CFrame
                                wait(1)
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate4.Button.CFrame
                                wait(1)
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate5.Button.CFrame
                                wait(1)
                            else
                                topos(CFrame.new(-1612.55884, 36.9774132, 148.719543, 0.37091279, 3.0717151e-09, -0.928667724, 3.97099491e-08, 1, 1.91679348e-08, 0.928667724, -4.39869794e-08, 0.37091279))
                            end
                        else
                            if game:GetService("Workspace").Map.Desert.Burn.Part.Transparency == 0 then
                                if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Torch") or game.Players.LocalPlayer.Character:FindFirstChild("Torch") then
                                    EquipWeapon("Torch")
                                    topos(CFrame.new(1114.61475, 5.04679728, 4350.22803, -0.648466587, -1.28799094e-09, 0.761243105, -5.70652914e-10, 1, 1.20584542e-09, -0.761243105, 3.47544882e-10, -0.648466587))
                                  else
                                  topos(CFrame.new(-1610.00757, 11.5049858, 164.001587, 0.984807551, -0.167722285, -0.0449818149, 0.17364943, 0.951244235, 0.254912198, 3.42372805e-05, -0.258850515, 0.965917408))
                                end
                            else
                                if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","SickMan") ~= 0 then
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","GetCup")
                                    wait(0.1)
                                    EquipWeapon("Cup")
                                    wait(0.1)
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","FillCup",game:GetService("Players").LocalPlayer.Character.Cup)
                                    wait(0)
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","SickMan")
                                else
                                    if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon") == nil then
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon")
                                    elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon") == 0 then
                                    if game:GetService("Workspace").Enemies:FindFirstChild("Mob Leader") or game:GetService("ReplicatedStorage"):FindFirstChild("Mob Leader") then
										topos(CFrame.new(-2967.59521, -4.91089821, 5328.70703, 0.342208564, -0.0227849055, 0.939347804, 0.0251603816, 0.999569714, 0.0150796166, -0.939287126, 0.0184739735, 0.342634559)) 
                                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                                if v.Name == "Mob Leader" then
                                                   if game:GetService("Workspace").Enemies:FindFirstChild("Mob Leader") then
                                                    if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                                        repeat task.wait()
                                                        AutoHaki()
                                                        EquipWeapon(_G.SelectWeapon)
                                                        v.HumanoidRootPart.CanCollide = false
                                                        v.Humanoid.WalkSpeed = 0                                   
                                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(PosX,PosY,PosZ))
                                                        game:GetService("VirtualUser"):CaptureController()
                                                        game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                                        sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                                        until v.Humanoid.Health <= 0 or not _G.AutoSaber
                                                     end
                                                end
                                                if game:GetService("ReplicatedStorage"):FindFirstChild("Mob Leader [Lv. 120] [Boss]") then
                                                    topos(game:GetService("ReplicatedStorage"):FindFirstChild("Mob Leader [Lv. 120] [Boss]").HumanoidRootPart.CFrame * Farm_Mode)
                                                end
                                            end
                                        end
                                     end
                                    elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon") == 1 then
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon")
                                        wait(0.1)
                                        EquipWeapon("Relic")
                                        wait(0.1)
                                        topos(CFrame.new(-1404.91504, 29.9773273, 3.80598116, 0.876514494, 5.66906877e-09, 0.481375456, 2.53851997e-08, 1, -5.79995607e-08, -0.481375456, 6.30572643e-08, 0.876514494))
                                    end
                                end
                            end
                        end
                    else
                        if game:GetService("Workspace").Enemies:FindFirstChild("Saber Expert") or game:GetService("ReplicatedStorage"):FindFirstChild("Saber Expert") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    if v.Name == "Saber Expert" then
                                        repeat task.wait()
                                            EquipWeapon(_G.SelectWeapon)
                                            topos(v.HumanoidRootPart.CFrame * CFrame.new(PosX,PosY,PosZ))
                                            v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                            v.HumanoidRootPart.Transparency = 1
                                            v.Humanoid.JumpPower = 0
                                            v.Humanoid.WalkSpeed = 0
                                            v.HumanoidRootPart.CanCollide = false
                                            --v.Humanoid:ChangeState(11)
                                            --v.Humanoid:ChangeState(14)
                                            FarmPos = v.HumanoidRootPart.CFrame
                                            MonFarm = v.Name
                                            game:GetService'VirtualUser':CaptureController()
                                            game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672),workspace.CurrentCamera.CFrame)
                                        until v.Humanoid.Health <= 0 or not _G.AutoSaber
                                        if v.Humanoid.Health <= 0 then
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","PlaceRelic")
                                        end
                                    end
                                end
                            end
                        end
                    end
                end)
            end
        end
    end)        
Toggle = Item:AddToggle("MyToggle", {Title = "Auto Pole", Default = _G.Autopole})
Toggle:OnChanged(function(Value)
    _G.Autopole = Value
end)
Toggle = Item:AddToggle("MyToggle", {Title = "Auto Pole Hop", Default = _G.Autopolehop})
Toggle:OnChanged(function(Value)
    _G.Autopolehop = Value
end)
spawn(function()
        while wait() do
            if  _G.Autopole and World1 then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("Thunder God") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Thunder God" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(PosX,PosY,PosZ))
                                        game:GetService("VirtualUser"):CaptureController()
                                        game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                        sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
                                    until not  _G.Autopole or not v.Parent or v.Humanoid.Health <= 0
                                end
                            end
                        end
                    else
                    topos(CFrame.new(-7748.0185546875, 5606.80615234375, -2305.898681640625))
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Thunder God") then
                            topos(game:GetService("ReplicatedStorage"):FindFirstChild("Thunder God").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                        else
                            if  _G.Autopolehop then
                                Hop()
                            end
                        end
                    end
                end)
            end
        end
    end)
Toggle = Item:AddToggle("MyToggle", {Title = "Auto Sharks saw", Default = _G.Autosaw})
Toggle:OnChanged(function(Value)
    _G.Autosaw = Value
end)
Toggle = Item:AddToggle("MyToggle", {Title = "Auto Shark Saw Hop", Default = _G.Autosawhop})
Toggle:OnChanged(function(Value)
    _G.Autosawhop = Value
end)
spawn(function()
        while wait() do
            if  _G.Autosaw and World1 then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("The Saw") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "The Saw" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(PosX,PosY,PosZ))
                                        game:GetService("VirtualUser"):CaptureController()
                                        game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                        sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
                                    until not  _G.Autosaw or not v.Parent or v.Humanoid.Health <= 0
                                end
                            end
                        end
                    else
                    topos(CFrame.new(-690.33081054688, 15.09425163269, 1582.2380371094))
                        if game:GetService("ReplicatedStorage"):FindFirstChild("The Saw") then
                            topos(game:GetService("ReplicatedStorage"):FindFirstChild("The Saw").HumanoidRootPart.CFrame * CFrame.new(2,40,2))
                        else
                            if  _G.Autosawhop then
                                Hop()
                            end
                        end
                    end
                end)
            end
        end
    end)
spawn(function()
        pcall(function()
            while wait(.1) do
                if (_G.AutoFarmSwanGlasses and _G.AutoFarmSwanGlasses_Hop) and World2 and not game:GetService("ReplicatedStorage"):FindFirstChild("Don Swan") and not game:GetService("Workspace").Enemies:FindFirstChild("Don Swan") then
                    Hop()
                end
            end
        end)
    end)        
Toggle = Item:AddToggle("MyToggle", {Title = "Auto Waden Sword", Default = _G.Autowaden})
Toggle:OnChanged(function(Value)
    _G.Autowaden = Value
end)
Toggle = Item:AddToggle("MyToggle", {Title = "Auto Waden Sword Hop", Default = _G.Autowadenhop})
Toggle:OnChanged(function(Value)
    _G.Autowadenhop = Value
end)
spawn(function()
        while wait() do
            if  _G.Autowaden and World1 then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("Chief Warden") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Chief Warden" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(PosX,PosY,PosZ))
                                        game:GetService("VirtualUser"):CaptureController()
                                        game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                        sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
                                    until not  _G.Autowaden or not v.Parent or v.Humanoid.Health <= 0
                                end
                            end
                        end
                    else
                    topos(CFrame.new(5186.14697265625, 24.86684226989746, 832.1885375976562))
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Chief Warden") then
                            topos(game:GetService("ReplicatedStorage"):FindFirstChild("Chief Warden").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                        else
                            if  _G.Autowadenhop then
                                Hop()
                            end
                        end
                    end
                end)
            end
        end
    end)    
Toggle = Item:AddToggle("MyToggle", {Title = "Auto Soul Guitar", Default = _G.QuestSoulGuitar })
Toggle:OnChanged(function(Value)
    _G.QuestSoulGuitar = Value
end)
function getTrophies(Amount)
    for i,v in pairs(game:GetService("Workspace").Map["Haunted Castle"].Trophies.Quest:GetChildren()) do
        if v.Handle.Orientation then
            local NameTro = tonumber(tostring(v.Name:match("%d+")))
            if tonumber(Amount) == tonumber(NameTro) then
                if tonumber(v.Handle.Orientation.Y) == 90 or tonumber(v.Handle.Orientation.Y) == -90 then
                    return {"A", 180, -180}
                elseif tonumber(v.Handle.Orientation.Y) == 0 or tonumber(v.Handle.Orientation.Y) == 180 then
                    return {"B", -90, 90}
                end
            end
        end
    end
end
function GetFirePlacard(Number,Side)
    if tostring(game:GetService("Workspace").Map["Haunted Castle"]["Placard"..Number][Side].Indicator.BrickColor) ~= "Pearl" then
        fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Placard"..Number][Side].ClickDetector)
    end
end
task.spawn(function()
    repeat task.wait() until _G.QuestSoulGuitar
    while task.wait() do
        pcall(function()
            if _G.QuestSoulGuitar then
                if ThirdWorld then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("gravestoneEvent", 2)
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("gravestoneEvent", 2, true)
                    if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GuitarPuzzleProgress","Check") == nil then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("gravestoneEvent", 2)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("gravestoneEvent", 2, true)
                    elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GuitarPuzzleProgress","Check").Swamp == false then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Living Zombie") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Living Zombie" then
                                    if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v:FindFirstChild("Humanoid").Health > 0 then
                                        repeat task.wait()
                                            EquipWeapon(_G.SelectWeapon)
                                            AutoHaki()
                                            v.HumanoidRootPart.CanCollide = false
                                            v.Head.CanCollide = false 
                                            topos(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
                                            PosMonGuiTar = v.HumanoidRootPart.CFrame
                                            GuiTarMsHealth = v.Humanoid
                                            MagnetGuiTar = true
                                            GuiTarMon = v.Name
                                        until not _G.QuestSoulGuitar or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Workspace").Map["Haunted Castle"].SwampWater.Color ~= Color3.fromRGB(117, 0, 0)
                                    end
                                end
                            end
                        else
                            MagnetGuiTar = false
                            topos(CFrame.new(-10170.7275390625, 138.6524658203125, 5934.26513671875))
                        end
                    elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GuitarPuzzleProgress","Check").Gravestones == false then
                        GetFirePlacard("7","Left")
                        GetFirePlacard("6","Left")
                        GetFirePlacard("5","Left")
                        GetFirePlacard("4","Right")
                        GetFirePlacard("3","Left")
                        GetFirePlacard("2","Right")
                        GetFirePlacard("1","Right")
                    elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GuitarPuzzleProgress","Check").Ghost == false then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GuitarPuzzleProgress", "Ghost")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GuitarPuzzleProgress", "Ghost", true)
                    elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GuitarPuzzleProgress","Check").Trophies == false then
                        repeat wait()
                            fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Tablet.Segment2:FindFirstChild("ClickDetector"))
                        until game:GetService("Workspace").Map["Haunted Castle"].Tablet.Segment2.Line.Position.Y == -1000 or not _G.QuestSoulGuitar
                        repeat wait()
                            fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Tablet.Segment5:FindFirstChild("ClickDetector"))
                        until game:GetService("Workspace").Map["Haunted Castle"].Tablet.Segment5.Line.Position.Y == -1000 or not _G.QuestSoulGuitar
                        repeat wait()
                            fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Tablet.Segment6:FindFirstChild("ClickDetector"))
                        until game:GetService("Workspace").Map["Haunted Castle"].Tablet.Segment6.Line.Position.Y == -1000 or not _G.QuestSoulGuitar
                        repeat wait()
                            fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Tablet.Segment8:FindFirstChild("ClickDetector"))
                        until game:GetService("Workspace").Map["Haunted Castle"].Tablet.Segment8.Line.Position.Y == -1000 or not _G.QuestSoulGuitar
                        repeat wait()
                            fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Tablet.Segment9:FindFirstChild("ClickDetector"))
                        until game:GetService("Workspace").Map["Haunted Castle"].Tablet.Segment9.Line.Position.Y == -1000 or not _G.QuestSoulGuitar
                        if getTrophies(1)[1] then
                            repeat wait()
                                fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Tablet.Segment1:FindFirstChild("ClickDetector"))
                            until game:GetService("Workspace").Map["Haunted Castle"].Tablet.Segment1.Line.Rotation.Z == getTrophies(1)[2] or game:GetService("Workspace").Map["Haunted Castle"].Tablet.Segment1.Line.Rotation.Z == getTrophies(1)[3] or not _G.QuestSoulGuitar or game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GuitarPuzzleProgress","Check").Trophies == true
                        end
                        if getTrophies(2)[1] then
                            repeat wait()
                                fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Tablet.Segment3:FindFirstChild("ClickDetector"))
                            until game:GetService("Workspace").Map["Haunted Castle"].Tablet.Segment3.Line.Rotation.Z == getTrophies(2)[2] or game:GetService("Workspace").Map["Haunted Castle"].Tablet.Segment3.Line.Rotation.Z == getTrophies(1)[3] or not _G.QuestSoulGuitar or game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GuitarPuzzleProgress","Check").Trophies == true
                        end
                        if getTrophies(3)[1] then
                            repeat wait()
                                fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Tablet.Segment4:FindFirstChild("ClickDetector"))
                            until game:GetService("Workspace").Map["Haunted Castle"].Tablet.Segment4.Line.Rotation.Z == getTrophies(3)[2] or game:GetService("Workspace").Map["Haunted Castle"].Tablet.Segment4.Line.Rotation.Z == getTrophies(1)[3] or not _G.QuestSoulGuitar or game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GuitarPuzzleProgress","Check").Trophies == true
                        end
                        if getTrophies(4)[1] then
                            repeat wait()
                                fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Tablet.Segment7:FindFirstChild("ClickDetector"))
                            until game:GetService("Workspace").Map["Haunted Castle"].Tablet.Segment7.Line.Rotation.Z == getTrophies(4)[2] or game:GetService("Workspace").Map["Haunted Castle"].Tablet.Segment7.Line.Rotation.Z == getTrophies(1)[3] or not _G.QuestSoulGuitar or game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GuitarPuzzleProgress","Check").Trophies == true
                        end
                        if getTrophies(5)[1] then
                            repeat wait()
                                fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Tablet.Segment10:FindFirstChild("ClickDetector"))
                            until game:GetService("Workspace").Map["Haunted Castle"].Tablet.Segment10.Line.Rotation.Z == getTrophies(5)[2] or  game:GetService("Workspace").Map["Haunted Castle"].Tablet.Segment10.Line.Rotation.Z == getTrophies(1)[3] or not _G.QuestSoulGuitar or game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GuitarPuzzleProgress","Check").Trophies == true
                        end
                    elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GuitarPuzzleProgress","Check").Pipes == false then
                        topos(CFrame.new(-9628.02734375, 6.13064432144165, 6157.47802734375))
                        repeat task.wait() until not _G.QuestSoulGuitar or GetDistance(CFrame.new(-9628.02734375, 6.13064432144165, 6157.47802734375)) <= 10                      
                        for i = 10,10 do
                            if game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model["Part"..tostring(i)].BrickColor ~= "Storm blue" then
                                repeat task.wait()
                                    fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model["Part"..tostring(i)].ClickDetector)
                                until game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model["Part"..tostring(i)].BrickColor == "Storm blue" or not _G.QuestSoulGuitar or game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GuitarPuzzleProgress","Check").Pipes == true
                            end
                        end
                        for i = 8,8 do
                            if game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model["Part"..tostring(i)].BrickColor ~= game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].Pipes["Part"..tostring(i)]["Part"..tostring(i)].BrickColor then
                                repeat task.wait()
                                    fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model["Part"..tostring(i)].ClickDetector)
                                until game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model["Part"..tostring(i)].BrickColor == game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].Pipes["Part"..tostring(i)]["Part"..tostring(i)].BrickColor or not _G.QuestSoulGuitar or game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GuitarPuzzleProgress","Check").Pipes == true
                            end
                        end
                        for i = 6,6 do
                            if game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model["Part"..tostring(i)].BrickColor ~= game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].Pipes["Part"..tostring(i)]["Part"..tostring(i)].BrickColor then
                                repeat task.wait()
                                    fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model["Part"..tostring(i)].ClickDetector)
                                until game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model["Part"..tostring(i)].BrickColor == game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].Pipes["Part"..tostring(i)]["Part"..tostring(i)].BrickColor or not _G.QuestSoulGuitar or game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GuitarPuzzleProgress","Check").Pipes == true
                            end
                        end
                        for i = 3,4 do
                            if game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model["Part"..tostring(i)].BrickColor ~= game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].Pipes["Part"..tostring(i)]["Part"..tostring(i)].BrickColor then
                                repeat task.wait(5)
                                    fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model["Part"..tostring(i)].ClickDetector)
                                until game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model["Part"..tostring(i)].BrickColor == game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].Pipes["Part"..tostring(i)]["Part"..tostring(i)].BrickColor or not _G.QuestSoulGuitar or game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GuitarPuzzleProgress","Check").Pipes == true
                            end
                        end
                        if game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part1.BrickColor ~= game:GetService("Workspace").Map["Haunted Castle"].IslandModel["gamma_Cube.275"].BrickColor then
                            repeat task.wait()
                                fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part1.ClickDetector)
                            until game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part1.BrickColor == game:GetService("Workspace").Map["Haunted Castle"].IslandModel["gamma_Cube.275"].BrickColor or not _G.QuestSoulGuitar or game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GuitarPuzzleProgress","Check").Pipes == true
                        end
                    end
                end
            end
        end)
    end
end)
task.spawn(function()
    repeat task.wait() until _G.QuestSoulGuitar
    while task.wait() do
        pcall(function()
            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                if _G.QuestSoulGuitar and MagnetGuiTar and game:GetService("Workspace").Map["Haunted Castle"].SwampWater.Color == Color3.fromRGB(117, 0, 0) then
                    if v:FindFirstChild("Humanoid") and v:FindFirstChild("Humanoid").Health > 0 and v:FindFirstChild("HumanoidRootPart") and v.Name == "Living Zombie" then
                        if (v.HumanoidRootPart.Position - CFrame.new(-10170.7275390625, 138.6524658203125, 5934.26513671875).Position).Magnitude <= 300 then
                            v:FindFirstChild("HumanoidRootPart").CanCollide = false
                            v:FindFirstChild("HumanoidRootPart").Transparency = 1
                            if not v:FindFirstChild("HumanoidRootPart"):FindFirstChild("BV") then
                                local u = Instance.new("BodyVelocity")
                                u.Parent = v:FindFirstChild("HumanoidRootPart")
                                u.Name = "BV"
                                u.MaxForce = Vector3.new(100000, 100000, 100000)
                                u.Velocity = Vector3.new(0, 0, 0)
                            end
                            if v:FindFirstChild("Humanoid"):FindFirstChild("Animator") then
                                v:FindFirstChild("Humanoid"):FindFirstChild("Animator"):Remove()
                            end
                            v:FindFirstChild("HumanoidRootPart").CFrame = CFrame.new(-10165.7880859375, 138.6524658203125, 5973.7724609375)
                            if v.Humanoid.Health ~= GuiTarMsHealth.Health then
                                _G.BreakGuiTarQuest = true
                                v.Humanoid.Health = 0
                                v:BreakJoints()
                            else
                                _G.BreakGuiTarQuest = false
                            end
                        end
                    end
                end
            end
        end)
    end
end)    
Toggle = Item:AddToggle("MyToggle", {Title = "Auto Yama", Description = "Need to Kill 30 Elites" ,Default = _G.AutoYama })
Toggle:OnChanged(function(value)
    _G.AutoYama = value
end)
spawn(function()
        while wait() do
            if _G.AutoYama then
                if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter","Progress") >= 30 then
                    repeat wait(.1)
                        fireclickdetector(game:GetService("Workspace").Map.Waterfall.SealedKatana.Handle.ClickDetector)
                    until game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Yama") or not _G.AutoYama
                end
            end
        end
    end)                  
Toggle = Item:AddToggle("MyToggle", {Title = "Auto Tushita", Default = _G.Autotushita })
Toggle:OnChanged(function(Value)
    _G.Autotushita = value
end)
spawn(function()
        while wait() do
            if _G.Autotushita and World3 then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("Longma") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Longma" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                    NeedAttacking = true
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(PosX,PosY,PosZ))
                                        sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
                                    until not  _G.Autotushita or not v.Parent or v.Humanoid.Health <= 0
                                end
                            end
                        end
                    else
                    topos(CFrame.new(-10238.875976563, 389.7912902832, -9549.7939453125))
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Longma") then
                            TP(game:GetService("ReplicatedStorage"):FindFirstChild("Longma").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                        else
                            if  _G.Autotushitahop then
                                Hop()
                            end
                        end
                    end
                end)
            end
        end
    end)        
Toggle = Item:AddToggle("MyToggle", {Title = "Auto Get Cursed Dual Katana", Default = false })
Toggle:OnChanged(function(Value)
    Auto_Cursed_Dual_Katana = Value
end)        
task.spawn(function()
    repeat task.wait() until Auto_Cursed_Dual_Katana
    while task.wait() do
        pcall(function()
            if Auto_Cursed_Dual_Katana then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Good")
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Evil")
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Boss")
                if game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton Boss") then
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v.Name == "Cursed Skeleton Boss" then
                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                repeat task.wait()
                                    if game.Players.LocalPlayer.Character:FindFirstChild("Yama") or game.Players.LocalPlayer.Backpack:FindFirstChild("Yama") then
                                        EquipWeapon("Yama")
                                    elseif game.Players.LocalPlayer.Character:FindFirstChild("Tushita") or game.Players.LocalPlayer.Backpack:FindFirstChild("Tushita") then
                                        EquipWeapon("Tushita")
                                    else
                                        game.StarterGui:SetCore("SendNotification", {
                                              Title = "Hiru Hub Premium",
                                              Text = "Use! - Yama or Tushita",
                                              con = "rbxassetid://11995210995",
                                              Duration = 10,
                                        })
                                        wait(8)
                                    end
                                    Buso()
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid.WalkSpeed = 0
                                    topos(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
                                    if syn then
                                        sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
                                    end
                                until not Auto_Cursed_Dual_Katana or not v.Parent or v.Humanoid.Health <= 0
                            end
                        end
                    end
                else
                    topos(CFrame.new(-12318.193359375, 601.9518432617188, -6538.662109375))
                    task.wait(.5)
                    topos(game:GetService("Workspace").Map.Turtle.Cursed.BossDoor.CFrame)
                end
            end
        end)
    end
end)    
Toggle = Item:AddToggle("MyToggle", {Title = "Auto Holy Torch", Default = _G.AutoHoly })
Toggle:OnChanged(function(Value)
    _G.AutoHoly = Value
end)
spawn(function()
        while wait() do
            if _G.AutoHoly and World3 then
                pcall(function()
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(5749.7861328125, 611.9736938476562, -276.2497863769531))
                    wait(1)
                     topos(CFrame.new(5154.54785, 142.129684, 916.826294, 0.00160392188, 7.16881203e-08, 0.999998689, 4.34501235e-09, 1, -7.1695176e-08, -0.999998689, 4.45999992e-09, 0.00160392188))
                    wait(15)
                    EquipWeapon("Holy Torch")
                    repeat topos(CFrame.new(-10752, 417, -9366)) wait() until not _G.AutoHoly or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-10752, 417, -9366)).Magnitude <= 10
					wait(1)
					repeat topos(CFrame.new(-11672, 334, -9474)) wait() until not _G.AutoHoly or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-11672, 334, -9474)).Magnitude <= 10
					wait(1)
					repeat topos(CFrame.new(-12132, 521, -10655)) wait() until not _G.AutoHoly or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-12132, 521, -10655)).Magnitude <= 10
					wait(1)
					repeat topos(CFrame.new(-13336, 486, -6985)) wait() until not _G.AutoHoly or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-13336, 486, -6985)).Magnitude <= 10
					wait(1)
					repeat topos(CFrame.new(-13489, 332, -7925)) wait() until not _G.AutoHoly or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-13489, 332, -7925)).Magnitude <= 10
                end)
            end
        end
    end)              
quanxilotkhe = Item:AddToggle("quanxilotkhe", {Title = "Auto Rengoku", Default = _G.AutoRengoku })
quanxilotkhe:OnChanged(function(value)
    _G.AutoRengoku = value
end)    
spawn(function()
        pcall(function()
            while wait() do
                if _G.AutoRengoku and World2 then
                    if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Hidden Key") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Hidden Key") then
                        EquipWeapon("Hidden Key")
                        topos(CFrame.new(6571.1201171875, 299.23028564453, -6967.841796875))
                    elseif game:GetService("Workspace").Enemies:FindFirstChild("Snow Lurker") or game:GetService("Workspace").Enemies:FindFirstChild("Arctic Warrior") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if (v.Name == "Snow Lurker" or v.Name == "Arctic Warrior") and v.Humanoid.Health > 0 then
                                repeat task.wait()
                                    AutoHaki()
                                    EquipWeapon(_G.SelectWeapon)
                                    v.HumanoidRootPart.CanCollide = false
                                    topos(v.HumanoidRootPart.CFrame * Pos)
                                   NameRengokuMon = v.Name
                                   if v.Name == "Snow Lurker" then
					                   BringMobRengoku(v.Name, CFrame.new(5542.33447, 28.1321411, -6786.04199, 0.746223629, 0, 0.665695369, 0, 1, 0, -0.665695369, 0, 0.746223629))
					              elseif v.Name == "Arctic Warrior" then
					                   BringMobRengoku(v.Name, CFrame.new(6092.98975, 28.3671188, -6236.60791, -0.951801181, 0, -0.306715637, 0, 1, 0, 0.306715637, 0, -0.951801181))
								  end
                                until game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Hidden Key") or _G.AutoRengoku == false or not v.Parent or v.Humanoid.Health <= 0
                            end
                        end
                    else
                        topos(CFrame.new(5439.716796875, 84.420944213867, -6715.1635742188))
                    end
                end
            end
        end)
    end)        
Toggle = Item:AddToggle("MyToggle", {Title = "Auto Buddy Sword", Default = _G.AutoBudySword})
Toggle:OnChanged(function(Value)
    _G.AutoBudySword = Value
end)
Toggle = Item:AddToggle("MyToggle", {Title = "Auto Buddy Sword Hop", Default = _G.AutoBudySwordHop})
Toggle:OnChanged(function(Value)
    _G.AutoBudySwordHop = Value
end)
BigMomPos = CFrame.new(-731.2034301757812, 381.5658874511719, -11198.4951171875)
spawn(function()
        while wait() do
            if _G.AutoBudySword and World3 then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("Cake Queen") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Cake Queen" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(PosX,PosY,PosZ))
                                        game:GetService("VirtualUser"):CaptureController()
                                        game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                        sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
                                    until not _G.AutoBudySword or not v.Parent or v.Humanoid.Health <= 0
                                end
                            end
                        end
                    else
                    if BypassTP then
                    if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - BigMomPos.Position).Magnitude > 1500 then
			        BTP(BigMomPos)
				    elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - BigMomPos.Position).Magnitude < 1500 then
				    topos(BigMomPos)
					end
				else
				    topos(BigMomPos)
				end
				    UnEquipWeapon(_G.SelectWeapon)
                    topos(CFrame.new(-731.2034301757812, 381.5658874511719, -11198.4951171875))
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Cake Queen") then
                            topos(game:GetService("ReplicatedStorage"):FindFirstChild("Cake Queen").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                        else
                            if _G.AutoBudySwordHop then
                                Hop()
                            end
                        end
                    end
                end)
            end
        end
    end)    
Toggle = Item:AddToggle("MyToggle", {Title = "Auto Dragon Trident", Default = _G.Auto_Dragon_Trident})
Toggle:OnChanged(function(Value)
    _G.Auto_Dragon_Trident = Value
end)
Toggle = Item:AddToggle("MyToggle", {Title = "Auto Dragon Trident Hop", Default = _G.Auto_Dragon_Trident_Hop})
Toggle:OnChanged(function(Value)
    _G.Auto_Dragon_Trident_Hop = Value
end)
spawn(function()
        while wait() do
            if  _G.Auto_Dragon_Trident and World2 then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("Tide Keeper") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Tide Keeper" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(PosX,PosY,PosZ))
                                        game:GetService("VirtualUser"):CaptureController()
                                        game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                        sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
                                    until not  _G.Auto_Dragon_Trident or not v.Parent or v.Humanoid.Health <= 0
                                end
                            end
                        end
                    else
                    topos(CFrame.new(-3914.830322265625, 123.29389190673828, -11516.8642578125))
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Tide Keeper") then
                            topos(game:GetService("ReplicatedStorage"):FindFirstChild("Tide Keeper").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                        else
                            if  _G.Auto_Dragon_Trident_Hop then
                                Hop()
                            end
                        end
                    end
                end)
            end
        end
    end)           
Toggle = Item:AddToggle("MyToggle", {Title = "Auto Cavender", Default = _G.AutoCarvender})
Toggle:OnChanged(function(Value)
    _G.AutoCarvender = Value
end)
CavandisPos = CFrame.new(5314.58203, 22.8796749, -125.942276, 1, 1.69639192e-10, 1.5617945e-15, -1.69639192e-10, 1, 5.38001999e-08, -1.55266783e-15, -5.38001999e-08, 1)
spawn(function()
    while wait() do
        if _G.AutoCarvender and World3 then
            pcall(function()
                enemies = game:GetService("Workspace").Enemies
                beautifulPirate = enemies:FindFirstChild("Beautiful Pirate")
                if beautifulPirate then
                    for _, v in pairs(enemies:GetChildren()) do
                        if v.Name == "Beautiful Pirate" then
                            humanoid = v:FindFirstChild("Humanoid")
                            humanoidRootPart = v:FindFirstChild("HumanoidRootPart")
                            if humanoid and humanoidRootPart and humanoid.Health > 0 then
                                repeat
                                    task.wait()
                                    AutoHaki()
                                    EquipWeapon(_G.SelectWeapon)
                                    humanoidRootPart.CanCollide = false
                                    humanoid.WalkSpeed = 0
                                    humanoidRootPart.Size = Vector3.new(50, 50, 50)
                                    topos(humanoidRootPart.CFrame * Pos)
                                    game:GetService("VirtualUser"):CaptureController()
                                    game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
                                    sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                                until not _G.AutoCarvender or not v.Parent or humanoid.Health <= 0
                            end
                        end
                    end
                else
                    player = game.Players.LocalPlayer
                    hrp = player.Character and player.Character:FindFirstChild("HumanoidRootPart")
                    if hrp then
                        distance = (hrp.Position - CavandisPos.Position).Magnitude
                        if BypassTP then
                            if distance > 1500 then
                                print("bat dau ")
                            else
                                topos(CavandisPos)
                            end
                        else
                            topos(CavandisPos)
                        end
                        topos(CFrame.new(5311.07421875, 426.0243835449219, 165.12762451171875))
                        replicatedStorage = game:GetService("ReplicatedStorage")
                        storedPirate = replicatedStorage:FindFirstChild("Beautiful Pirate")
                        if storedPirate then
                            topos(storedPirate.HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                        elseif _G.AutoCavanderhop then
                            Hop()
                        end
                    end
                end
            end)
        end
    end
end)
Toggle = Item:AddToggle("MyToggle", {Title = "Auto Cavender Hop", Default = _G.Hop})
Toggle:OnChanged(function(Value)
_G.Hop = Value
end)
Toggle = Item:AddToggle("MyToggle", {Title = "Auto Twin Hook", Default = _G.AutoTwinHook})
Toggle:OnChanged(function(Value)
_G.AutoTwinHook = Value
end)
ElephantPos = CFrame.new(-13348.0654296875, 405.8904113769531, -8570.62890625)
spawn(function()
        while wait() do
            if  _G.AutoTwinHook and World3 then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("Captain Elephant") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Captain Elephant" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0                                        
                                        topos(v.HumanoidRootPart.CFrame * Pos)
                                        game:GetService("VirtualUser"):CaptureController()
                                        game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                        sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
                                    until not  _G.AutoTwinHook or not v.Parent or v.Humanoid.Health <= 0
                                end
                            end
                        end
                    else
                    if BypassTP then
                    if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - ElephantPos.Position).Magnitude > 1500 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-12471.169921875, 374.94024658203, -7551.677734375))
                    elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - ElephantPos.Position).Magnitude < 1500 then
                    topos(ElephantPos)
                    end
                else
                    topos(ElephantPos)
                end
                    topos(CFrame.new(-13348.0654296875, 405.8904113769531, -8570.62890625))
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Captain Elephant") then
                            topos(game:GetService("ReplicatedStorage"):FindFirstChild("Captain Elephant").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                        else
                            if  _G.AutoTwinHook_Hop then
                                Hop()
                            end
                        end
                    end
                end)
            end
        end
    end)        
Toggle = Item:AddToggle("MyToggle", {Title = "Auto Twin Hook Hop", Default = _G.Hop})
Toggle:OnChanged(function(Value)
_G.Hop = Value
end)
stack = Window:AddTab({ Title = "Tab Stack Farm", Icon = "rbxassetid://10723405360" })
TelepiToFut = stack:AddToggle("MyToggle", {Title = "Teleport To Fruit", Description = "" ,Default = _G.TeleportToFruit })
TelepiToFut:OnChanged(function(Value)
  _G.TeleportToFruit = Value
end)
spawn(function()
    while wait(.1) do
        if _G.TeleportToFruit then
            for i,v in pairs(game.Workspace:GetChildren()) do
                if string.find(v.Name, "Fruit") then
                    topos(v.Handle.CFrame)
                end
            end
        end
    end
end)
TelepiToFutHop = stack:AddToggle("MyToggle", {Title = "Teleport To Fruit Hop", Description = "" ,Default = _G.TelepiToFutHop })
TelepiToFutHop:OnChanged(function(Value)
  _G.TelepiToFutHop = Value
end)
spawn(function()
  while wait(.1) do
    if _G.TeleportToFruit and _G.TelepiToFutHop then
      for i,v in pairs(game.Workspace:GetChildren()) do
        if string.find(v.Name, "Fruit") then
          topos(v.Handle.CFrame)
        elseif not string.find(v.Name, "Fruit") then
          wait(1)
          game.StarterGui:SetCore("SendNotification", {
          Title = "Server Hop..",
          Text = "",
          Duration = 5,
          })
          Hop()
        end
      end
    end
  end
end)                    
Toggle = stack:AddToggle("MyToggle", {Title = "Auto Factory", Default = _G.AutoFactory })
Toggle:OnChanged(function(Value)
    _G.AutoFactory = Value
    StopTween(_G.AutoFactory)
end)
spawn(function()
            while wait() do
                spawn(function()
                    if _G.AutoFactory and World2 then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Core") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Core" and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        AutoHaki()         
                                        EquipWeapon(_G.SelectWeapon)           
                                        topos(CFrame.new(448.46756, 199.356781, -441.389252))                       
                                        game:GetService("VirtualUser"):CaptureController()
                                        game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                    until v.Humanoid.Health <= 0 or _G.AutoFactory == false
                                end
                            end
                        else
                        topos(CFrame.new(448.46756, 199.356781, -441.389252))
                        end
                    end
                end)
            end
        end)
Toggle = stack:AddToggle("MyToggle", {Title = "Auto Pirate Raid", Default = _G.AutoRaidPirate })
Toggle:OnChanged(function(Value)
    _G.AutoRaidPirate = Value
end)        
spawn(function()
	while wait() do
		if _G.AutoRaidPirate and World3 then
			pcall(function()
				CFrameBoss = CFrame.new(-5496.17432, 313.768921, -2841.53027, 0.924894512, 7.37058015e-09, 0.380223751, 3.5881019e-08, 1, -1.06665446e-07, -0.380223751, 1.12297109e-07, 0.924894512)
				if (CFrame.new(-5539.3115234375, 313.800537109375, -2972.372314453125).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 500 then
					for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if _G.AutoRaidPirate and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
							if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 2000 then
								repeat wait()
									AutoHaki()
									EquipWeapon(_G.SelectWeapon)
									v.HumanoidRootPart.CanCollide = false
									v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
									topos(v.HumanoidRootPart.CFrame * CFrame.new(PosX,PosY,PosZ))
								until v.Humanoid.Health <= 0 or not v.Parent or _G.AutoRaidPirate == false
								StartMagnet = false
							end
						end
					end
				else
					if ((CFrameBoss).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 1500 then
						topos(CFrameBoss)
					else
						game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5085.23681640625, 316.5072021484375, -3156.202880859375)
					end
				end
			end)
		end
	end
    end)                
Toggle = stack:AddToggle("MyToggle", {Title = "Auto Dark Fragment", Default = _G.Auto_DarkBoss })
Toggle:OnChanged(function(Value)
    _G.Auto_DarkBoss = Value
    StopTween(_G.Auto_DarkBoss)
end)
spawn(function()
    while wait() do
        if _G.Auto_DarkBoss and World2 then
            pcall(function()
                if game:GetService("Workspace").Enemies:FindFirstChild("Darkbeard") then
                    for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v.Name == "Darkbeard" then
                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                repeat
                                    task.wait()
                                    NeedAttacking = true
                                    AutoHaki()
                                    EquipWeapon(_G.SelectWeapon)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid.WalkSpeed = 0           
                                    topos(v.HumanoidRootPart.CFrame * Pos)
                                    sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                                until not _G.Auto_DarkBoss or not v.Parent or v.Humanoid.Health <= 0
                            end
                        end
                    end
                elseif game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Fist of Darkness") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Fist of Darkness") then
                    repeat
                        topos(CFrame.new(3778.584228515625, 15.790505409240723, -3499.404052734375))
                        EquipWeapon("Fist of Darkness")
                    until not _G.Auto_DarkBoss
                elseif game:GetService("ReplicatedStorage"):FindFirstChild("Darkbeard") then
                    topos(game:GetService("ReplicatedStorage"):FindFirstChild("Darkbeard").HumanoidRootPart.CFrame * Pos)
                end
            end)
        end
    end
end) 
Toggle = stack:AddToggle("MyToggle", {Title = "Auto Soul Reaper", Default = _G.AutoFarmBossHallow })
Toggle:OnChanged(function(Value)
    _G.AutoFarmBossHallow = Value
    StopTween(_G.AutoFarmBossHallow)
end)
spawn(function()
    while wait() do
        if _G.AutoFarmBossHallow and World3 then
            pcall(function()
                if game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper") then
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if string.find(v.Name , "Soul Reaper") then
                            repeat task.wait()
                                AutoHaki()
                                EquipWeapon(_G.SelectWeapon)                                
                                topos(v.HumanoidRootPart.CFrame*Pos)
                                game:GetService("VirtualUser"):CaptureController()
                                game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 670))
                                v.HumanoidRootPart.Transparency = 1
                                -- sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
                            until v.Humanoid.Health <= 0 or _G.AutoFarmBossHallow == false
                        end
                    end
                elseif game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Hallow Essence") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Hallow Essence") then
                    repeat topos(CFrame.new(-8932.322265625, 146.83154296875, 6062.55078125)) wait() until (CFrame.new(-8932.322265625, 146.83154296875, 6062.55078125).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 8                        
                    EquipWeapon("Hallow Essence")
                else
                    if game:GetService("ReplicatedStorage"):FindFirstChild("Soul Reaper") then
                        topos(game:GetService("ReplicatedStorage"):FindFirstChild("Soul Reaper").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                   
                    end
                end
            end)
        end
    end
end)
spawn(function()
           while wait(0.001) do
           if _G.AutoFarmBossHallow then
           local args = {
            [1] = "Bones",
            [2] = "Buy",
            [3] = 1,
            [4] = 1
           }          
           game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
           end
           end
           end)    
Toggle = stack:AddToggle("MyToggle", {Title = "Auto Open Haki Pad", Default = false })
Toggle:OnChanged(function(Value)
    Open_Color_Haki = Value
    StopTween(Open_Color_Haki)
end)
spawn(function()
    while wait(.3) do
        pcall(function()
            if Open_Color_Haki then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("activateColor","Winter Sky")
            	wait(0.5)
            	repeat topos(CFrame.new(-5420.16602, 1084.9657, -2666.8208)) wait() 
                until _G.StopTween == true or Open_Color_Haki == false or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-5420.16602, 1084.9657, -2666.8208)).Magnitude <= 10
                wait(0.5)
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("activateColor","Pure Red")
                wait(0.5)
                repeat topos(CFrame.new(-5414.41357, 309.865753, -2212.45776)) wait() 
                until _G.StopTween == true or Open_Color_Haki == false or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-5414.41357, 309.865753, -2212.45776)).Magnitude <= 10
                wait(0.5)
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("activateColor","Snow White")
                wait(0.5)
                repeat topos(CFrame.new(-4971.47559, 331.565765, -3720.02954)) wait() 
                until _G.StopTween == true or Open_Color_Haki == false or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-4971.47559, 331.565765, -3720.02954)).Magnitude <= 10
                wait(0.5)
                game:GetService'VirtualUser':Button1Down(Vector2.new(1280,600))
                wait(3)
                game:GetService'VirtualUser':Button1Down(Vector2.new(1280,600))
            end
        end) 
    end
end)   
Toggle = stack:AddToggle("MyToggle", {Title = "Auto Rip Indra", Default = _G.KillRipindra })
Toggle:OnChanged(function(Value)
    _G.KillRipindra = Value
end)
spawn(function()
    pcall(function()
        while wait() do
            if _G.KillRipindra and World3 then
                if game:GetService("Workspace").Enemies:FindFirstChild("rip_indra True Form") or game:GetService("Workspace").Enemies:FindFirstChild("rip_indra") then
                    for _, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if (v.Name == "rip_indra True Form" or v.Name == "rip_indra") and v.Humanoid.Health > 0 and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
                            repeat wait()
                                pcall(function()
                                    AutoHaki()
                                    EquipWeapon(_G.SelectWeapon)
                                    v.HumanoidRootPart.CanCollide = false
                                    topos(v.HumanoidRootPart.CFrame * Pos)
                                    NeedAttacking = true
                                end)
                            until _G.KillRipindra == false or v.Humanoid.Health <= 0
                        end
                    end
                elseif game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("God's Chalice") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("God's Chalice") then
                    repeat
                        topos(CFrame.new(-5563.75048828125, 320.4276123046875, -2662.509521484375))
                        EquipWeapon("God's Chalice")
                    until not (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("God's Chalice") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("God's Chalice"))
                elseif game:GetService("ReplicatedStorage"):FindFirstChild("rip_indra True Form") then
                    topos(game:GetService("ReplicatedStorage"):FindFirstChild("rip_indra True Form").HumanoidRootPart.CFrame * Pos)
                end
            end
        end
    end)
end)
AtikiDoughKing = stack:AddToggle("MyToggle", {Title = "Auto Dough King", Description = "Do everything To Get Mirror Fractal" ,Default = _G.Autodoughking })
AtikiDoughKing:OnChanged(function(Value)
    _G.Autodoughking = Value
    StopTween(_G.Autodoughking)
end)
spawn(function()
	game:GetService("RunService").Heartbeat:Connect(function()
			pcall(function()
				for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
					if _G.Autodoughking and StartCakeStartMagnet and (v.Name == "Cookie Crafter" or v.Name == "Cake Guard" or v.Name == "Baking Staff" or v.Name == "Head Baker") and (v.HumanoidRootPart.Position - POSCAKE.Position).magnitude <= 300 then
						v.HumanoidRootPart.CFrame = POSCAKE
						v.HumanoidRootPart.CanCollide = false
						if v.Humanoid:FindFirstChild("Animator") then
							v.Humanoid.Animator:Destroy()
						end
	sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
					end
				end
			end)
		end)
	end)
spawn(function()
		while wait() do
			if _G.Autodoughking and World3 then
				pcall(function()
					if game.Players.LocalPlayer.Backpack:FindFirstChild("God's Chalice") or game.Players.LocalPlayer.Character:FindFirstChild("God's Chalice") then
						if string.find(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SweetChaliceNpc"),"Where") then
							game.StarterGui:SetCore("SendNotification", {
								Title = "Notification", 
								Text = "Not Have Enough Material" ,
								Icon = "http://www.roblox.com/asset/?id=",
								Duration = 2.5
							})
						else
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SweetChaliceNpc")
						end
					elseif game.Players.LocalPlayer.Backpack:FindFirstChild("Sweet Chalice") or game.Players.LocalPlayer.Character:FindFirstChild("Sweet Chalice") then
						if string.find(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),"Do you want to open the portal now?") then
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")
						else
							if game.Workspace.Enemies:FindFirstChild("Baking Staff") or game.Workspace.Enemies:FindFirstChild("Head Baker") or game.Workspace.Enemies:FindFirstChild("Cake Guard") or game.Workspace.Enemies:FindFirstChild("Cookie Crafter")  then
								for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do  
									if (v.Name == "Baking Staff" or v.Name == "Head Baker" or v.Name == "Cake Guard" or v.Name == "Cookie Crafter") and v.Humanoid.Health > 0 then
										repeat wait()
											AutoHaki()
											EquipWeapon(_G.SelectWeapon)
											StartCakeStartMagnet = true
											POSCAKE = v.HumanoidRootPart.CFrame
											topos(v.HumanoidRootPart.CFrame * Pos)											
										until _G.Autodoughking == false or game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince") or not v.Parent or v.Humanoid.Health <= 0
									end
								end
							else
								StartCakeStartMagnet = false
								topos(CFrame.new(-1820.0634765625, 210.74781799316406, -12297.49609375))
							end
						end						
					elseif game.ReplicatedStorage:FindFirstChild("Dough King") or game:GetService("Workspace").Enemies:FindFirstChild("Dough King") then
						if game:GetService("Workspace").Enemies:FindFirstChild("Dough King") then
							for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do 
								if v.Name == "Dough King" then
									repeat wait()
										AutoHaki()
										EquipWeapon(_G.SelectWeapon)
										v.HumanoidRootPart.CanCollide = false
										topos(v.HumanoidRootPart.CFrame * Pos)
									until _G.Autodoughking == false or not v.Parent or v.Humanoid.Health <= 0
								end    
							end    
						else
							topos(CFrame.new(-2009.2802734375, 4532.97216796875, -14937.3076171875)) 
						end
					elseif game.Players.LocalPlayer.Backpack:FindFirstChild("Red Key") or game.Players.LocalPlayer.Character:FindFirstChild("Red Key") then
						local args = {
							[1] = "CakeScientist",
							[2] = "Check"
						}

						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
					else
						if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
							if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Diablo") or string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Deandre") or string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Urban") then
								if game:GetService("Workspace").Enemies:FindFirstChild("Diablo") or game:GetService("Workspace").Enemies:FindFirstChild("Deandre") or game:GetService("Workspace").Enemies:FindFirstChild("Urban") then
									for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
										if v.Name == "Diablo" or v.Name == "Deandre" or v.Name == "Urban" then
											if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
												repeat wait()
													AutoHaki()
													EquipWeapon(_G.SelectWeapon)	
													v.HumanoidRootPart.CanCollide = false
													v.Humanoid.WalkSpeed = 0
													topos(v.HumanoidRootPart.CFrame * CFrame.new(PosX,PosY,PosZ))
													
													sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
												until _G.Autodoughking == false or v.Humanoid.Health <= 0 or not v.Parent or game.Players.LocalPlayer.Backpack:FindFirstChild("God's Chalice") or game.Players.LocalPlayer.Character:FindFirstChild("God's Chalice")
											end
										end
									end
					            end
							end
						end
					end
				end)
			end
		end
	end)
Toggle = stack:AddToggle("MyToggle", {Title = "Auto Kill Dough King", Default = _G.Autokilldoughking })
Toggle:OnChanged(function(Value)
    _G.Autokilldoughking = Value
end)
spawn(function()
        while wait() do
            if  _G.Autodoughking and World3 then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("Dough King") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Dough King" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                        topos(v.HumanoidRootPart.CFrame * Pos)
                                        sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
                                    until not _G.Autokilldoughking or not v.Parent or v.Humanoid.Health <= 0
                                end
                            end
                        end
                    else
                    topos(CFrame.new(-2151.82153, 149.315704, -12404.9053))
                    end
                end)
            end
        end
    end)        	
Toggle = stack:AddToggle("MyToggle", {Title = "Auto Kill Cake Prince", Default = _G.AutoCakePrince })
Toggle:OnChanged(function(Value)
    _G.AutoCakePrince = Value
end)
spawn(function()
        while wait() do
            if  _G.AutoCakePrince and World3 then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Cake Prince" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(0, 35, 0))
                                        v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                        if game:GetService("Workspace")["_WorldOrigin"]:FindFirstChild("Ring") or game:GetService("Workspace")["_WorldOrigin"]:FindFirstChild("Fist") or game:GetService("Workspace")["_WorldOrigin"]:FindFirstChild("MochiSwirl") then
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(0, 200, 0))
                                       else
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(0, 35, 0))
                                       end
                                    until not _G.AutoCakePrince or not v.Parent or v.Humanoid.Health <= 0
                                end
                            end
                        end
                    else
                    topos(CFrame.new(-2151.82153, 149.315704, -12404.9053))
                    end
                end)
            end
        end
    end)
Sub = Window:AddTab({ Title = "Tab Sub-Farming", Icon = "trophy" })
sphm = Sub:AddToggle("sphm", {Title = "Auto SuperHuman ", Default = _G.AutoSuperhuman })
sphm:OnChanged(function(value)
    _G.AutoSuperhuman = value
end)        
spawn(function()
        pcall(function()
            while wait() do 
                if _G.AutoSuperhuman and World2 then
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Combat") or game.Players.LocalPlayer.Character:FindFirstChild("Combat") and game:GetService("Players")["LocalPlayer"].Data.Beli.Value >= 150000 then
                        UnEquipWeapon("Combat")
                        wait(.1)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBlackLeg")
                    end   
                    if game.Players.LocalPlayer.Character:FindFirstChild("Superhuman") or game.Players.LocalPlayer.Backpack:FindFirstChild("Superhuman") then
                        _G.SelectWeapon = "Superhuman"
                    end  
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") or game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") or game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") or game.Players.LocalPlayer.Character:FindFirstChild("Electro") or game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") or game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") or game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") or game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") then
                        if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value <= 299 then
                            _G.SelectWeapon = "Black Leg"
                        end
                        if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value <= 299 then
                            _G.SelectWeapon = "Electro"
                        end
                        if game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value <= 299 then
                            _G.SelectWeapon = "Fishman Karate"
                        end
                        if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value <= 299 then
                            _G.SelectWeapon = "Dragon Claw"
                        end
                        if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value >= 300 and game:GetService("Players")["LocalPlayer"].Data.Beli.Value >= 300000 then
                            UnEquipWeapon("Black Leg")
                            wait(.1)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro")
                        end
                        if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 300 and game:GetService("Players")["LocalPlayer"].Data.Beli.Value >= 300000 then
                            UnEquipWeapon("Black Leg")
                            wait(.1)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro")
                        end
                        if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value >= 300 and game:GetService("Players")["LocalPlayer"].Data.Beli.Value >= 750000 then
                            UnEquipWeapon("Electro")
                            wait(.1)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate")
                        end
                        if game.Players.LocalPlayer.Character:FindFirstChild("Electro") and game.Players.LocalPlayer.Character:FindFirstChild("Electro").Level.Value >= 300 and game:GetService("Players")["LocalPlayer"].Data.Beli.Value >= 750000 then
                            UnEquipWeapon("Electro")
                            wait(.1)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate")
                        end
                        if game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value >= 300 and game:GetService("Players")["Localplayer"].Data.Fragments.Value >= 1500 then
                            UnEquipWeapon("Fishman Karate")
                            wait(.1)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","1")
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","2") 
                        end
                        if game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate").Level.Value >= 300 and game:GetService("Players")["Localplayer"].Data.Fragments.Value >= 1500 then
                            UnEquipWeapon("Fishman Karate")
                            wait(.1)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","1")
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","2") 
                        end
                        if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value >= 300 and game:GetService("Players")["LocalPlayer"].Data.Beli.Value >= 3000000 then
                            UnEquipWeapon("Dragon Claw")
                            wait(.1)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman")
                        end
                        if game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw").Level.Value >= 300 and game:GetService("Players")["LocalPlayer"].Data.Beli.Value >= 3000000 then
                            UnEquipWeapon("Dragon Claw")
                            wait(.1)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman")
                        end 
                    end
                end
            end
        end)
    end)        
deathstep = Sub:AddToggle("deathstep", {Title = "Auto Death Step", Default = _G.AutoDeathStep })
deathstep:OnChanged(function(value)
    _G.AutoDeathStep = value
end)        
spawn(function()
        while wait() do wait()
            if _G.AutoDeathStep and World2 then
                if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Black Leg") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Black Leg") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Death Step") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Death Step") then
                    if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Black Leg") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value >= 450 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep")
                        _G.SelectWeapon = "Death Step"
                    end  
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Black Leg") and game:GetService("Players").LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 450 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep")
                        _G.SelectWeapon = "Death Step"
                    end  
                    if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Black Leg") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value <= 449 then
                        _G.SelectWeapon = "Black Leg"
                    end 
                else 
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBlackLeg")
                end
            end
        end
    end)        
skrt = Sub:AddToggle("skrt", {Title = "Auto Sharkman Karate", Default = _G.AutoSharkman })
skrt:OnChanged(function(value)
    _G.AutoSharkman = value
end)        
spawn(function()
        pcall(function()
            while wait() do
                if _G.AutoSharkman and World2 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate")
                    if string.find(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate"), "keys") then  
                        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Water Key") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Water Key") then
                            topos(CFrame.new(-2604.6958, 239.432526, -10315.1982, 0.0425701365, 0, -0.999093413, 0, 1, 0, 0.999093413, 0, 0.0425701365))
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
                        elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Fishman Karate") and game:GetService("Players").LocalPlayer.Character:FindFirstChild("Fishman Karate").Level.Value >= 400 then
                        else 
                            Ms = "Tide Keeper"
                            if game:GetService("Workspace").Enemies:FindFirstChild(Ms) then   
                                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if v.Name == Ms then    
                                        OldCFrameShark = v.HumanoidRootPart.CFrame
                                        repeat task.wait()
                                            AutoHaki()
                                            EquipWeapon(_G.SelectWeapon)
                                            v.Head.CanCollide = false
                                            v.Humanoid.WalkSpeed = 0
                                            v.HumanoidRootPart.CanCollide = false
                                            
                                            v.HumanoidRootPart.CFrame = OldCFrameShark
                                            topos(v.HumanoidRootPart.CFrame*CFrame.new(2,20,2))
                                            -- sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                        until not v.Parent or v.Humanoid.Health <= 0 or _G.AutoSharkman == false or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Water Key") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Water Key")
                                    end
                                end
                            else
                                topos(CFrame.new(-3570.18652, 123.328949, -11555.9072, 0.465199202, -1.3857326e-08, 0.885206044, 4.0332897e-09, 1, 1.35347511e-08, -0.885206044, -2.72606271e-09, 0.465199202))
                                wait(1)
                            end
                        end
                    else 
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
                    end
                end
            end
        end)
    end)        
electricslaw = Sub:AddToggle("electricslaw", {Title = "Auto Electric Claw", Default = _G.AutoElectricClaw })
electricslaw:OnChanged(function(value)
    _G.AutoElectricClaw = value
end)        
spawn(function()
        pcall(function()
            while wait() do 
                if _G.AutoElectricClaw and World3 then
                    if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electro") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Electro") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electric Claw") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Electric Claw") then
                        if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electro") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value >= 400 then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
                            _G.SelectWeapon = "Electric Claw"
                        end  
                        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Electro") and game:GetService("Players").LocalPlayer.Character:FindFirstChild("Electro").Level.Value >= 400 then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
                            _G.SelectWeapon = "Electric Claw"
                        end  
                        if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electro") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value <= 399 then
                            _G.SelectWeapon = "Electro"
                        end 
                    else
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro")
                    end
                end
                if _G.AutoElectricClaw then
                    if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electro") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Electro") then
                        if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electro") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Electro") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value >= 400 or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Electro").Level.Value >= 400 then
                            if _G.AutoFarm == false then
                                repeat task.wait()
                                    topos(CFrame.new(-10371.4717, 330.764496, -10131.4199))
                                until not _G.AutoElectricClaw or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - CFrame.new(-10371.4717, 330.764496, -10131.4199).Position).Magnitude <= 10
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw","Start")
                                wait(1)
                                repeat task.wait()
                                    topos(CFrame.new(-12550.532226563, 336.22631835938, -7510.4233398438))
                                until not _G.AutoElectricClaw or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - CFrame.new(-12550.532226563, 336.22631835938, -7510.4233398438).Position).Magnitude <= 10
                                wait(1)
                                repeat task.wait()
                                    topos(CFrame.new(-10371.4717, 330.764496, -10131.4199))
                                until not _G.AutoElectricClaw or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - CFrame.new(-10371.4717, 330.764496, -10131.4199).Position).Magnitude <= 10
                                wait(1)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
                            elseif _G.AutoFarm == true then
                                _G.AutoFarm = false
                                wait(1)
                                repeat task.wait()
                                    topos(CFrame.new(-10371.4717, 330.764496, -10131.4199))
                                until not _G.AutoElectricClaw or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - CFrame.new(-10371.4717, 330.764496, -10131.4199).Position).Magnitude <= 10
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw","Start")
                                wait(1)
                                repeat task.wait()
                                    topos(CFrame.new(-12550.532226563, 336.22631835938, -7510.4233398438))
                                until not _G.AutoElectricClaw or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - CFrame.new(-12550.532226563, 336.22631835938, -7510.4233398438).Position).Magnitude <= 10
                                wait(1)
                                repeat task.wait()
                                    topos(CFrame.new(-10371.4717, 330.764496, -10131.4199))
                                until not _G.AutoElectricClaw or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - CFrame.new(-10371.4717, 330.764496, -10131.4199).Position).Magnitude <= 10
                                wait(1)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
                                _G.SelectWeapon = "Electric Claw"
                                wait(.1)
                                _G.AutoFarm = true
                            end
                        end
                    end
                end
            end
        end)
    end)        
dratol = Sub:AddToggle("dratol", {Title = "Auto Dragon Talon", Default = _G.AutoDragonTalon })
dratol:OnChanged(function(value)
    _G.AutoDragonTalon = value
end)        
spawn(function()
        while wait() do
            if _G.AutoDragonTalon and World3 then
                if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Claw") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Claw") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Talon") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Talon") then
                    if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value >= 400 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")
                        _G.SelectWeapon = "Dragon Talon"
                    end  
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Claw") and game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Claw").Level.Value >= 400 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")
                        _G.SelectWeapon = "Dragon Talon"
                    end  
                    if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value <= 399 then
                        _G.SelectWeapon = "Dragon Claw"
                    end 
                else 
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","2")
                end
            end
        end
    end)        
godhucu = Sub:AddToggle("godhucu", {Title = "Auto GodHuman", Default = _G.Auto_God_Human })
godhucu:OnChanged(function(value)
    _G.Auto_God_Human = value
end)        
spawn(function()
    while task.wait() do
		if _G.Auto_God_Human and World3 then
			pcall(function()
				if game.Players.LocalPlayer.Character:FindFirstChild("Superhuman") or game.Players.LocalPlayer.Backpack:FindFirstChild("Superhuman") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Black Leg") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Black Leg") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Death Step") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Death Step") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Fishman Karate") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Fishman Karate") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Sharkman Karate") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Sharkman Karate") or game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") or game.Players.LocalPlayer.Character:FindFirstChild("Electro") or game.Players.LocalPlayer.Backpack:FindFirstChild("Electric Claw") or game.Players.LocalPlayer.Character:FindFirstChild("Electric Claw") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Claw") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Claw") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Talon") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Talon") or game.Players.LocalPlayer.Character:FindFirstChild("Godhuman") or game.Players.LocalPlayer.Backpack:FindFirstChild("Godhuman") then
					if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman",true) == 1 then
						if game.Players.LocalPlayer.Backpack:FindFirstChild("Superhuman") and game.Players.LocalPlayer.Backpack:FindFirstChild("Superhuman").Level.Value >= 400 or game.Players.LocalPlayer.Character:FindFirstChild("Superhuman") and game.Players.LocalPlayer.Character:FindFirstChild("Superhuman").Level.Value >= 400 then
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep")
						end
					else
						game.StarterGui:SetCore("SendNotification", {
                        Title = "Not Have SuperHuman!!",
                        Text = "",
                        Duration = 5,
                        })
					end
					if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep",true) == 1 then
						if game.Players.LocalPlayer.Backpack:FindFirstChild("Death Step") and game.Players.LocalPlayer.Backpack:FindFirstChild("Death Step").Level.Value >= 400 or game.Players.LocalPlayer.Character:FindFirstChild("Death Step") and game.Players.LocalPlayer.Character:FindFirstChild("Death Step").Level.Value >= 400 then
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
						end
					else
						game.StarterGui:SetCore("SendNotification", {
                        Title = "Not Have Death Step!!",
                        Text = "",
                        Duration = 5,
                        })
					end
					if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate",true) == 1 then
						if game.Players.LocalPlayer.Backpack:FindFirstChild("Sharkman Karate") and game.Players.LocalPlayer.Backpack:FindFirstChild("Sharkman Karate").Level.Value >= 400 or game.Players.LocalPlayer.Character:FindFirstChild("Sharkman Karate") and game.Players.LocalPlayer.Character:FindFirstChild("Sharkman Karate").Level.Value >= 400 then
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
						end
					else
						game.StarterGui:SetCore("SendNotification", {
                        Title = "Not Have SharkMan Karate!!",
                        Text = "",
                        Duration = 5,
                        })
					end
					if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw",true) == 1 then
						if game.Players.LocalPlayer.Backpack:FindFirstChild("Electric Claw") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electric Claw").Level.Value >= 400 or game.Players.LocalPlayer.Character:FindFirstChild("Electric Claw") and game.Players.LocalPlayer.Character:FindFirstChild("Electric Claw").Level.Value >= 400 then
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")
						end
					else
						game.StarterGui:SetCore("SendNotification", {
                        Title = "Not Have Electric Claw!!",
                        Text = "",
                        Duration = 5,
                        })
					end
					if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon",true) == 1 then
						if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Talon") and game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Talon").Level.Value >= 400 or game.Players.LocalPlayer.Character:FindFirstChild("Dragon Talon") and game.Players.LocalPlayer.Character:FindFirstChild("Dragon Talon").Level.Value >= 400 then
							if string.find(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman",true), "Bring") then
								Alert:create("Not Have Enough Material")
							else
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman")
							end
						end
					else
						game.StarterGui:SetCore("SendNotification", {
                        Title = "Not Have Dragon Talon!!",
                        Text = "",
                        Duration = 5,
                        })
					end
				else
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman")
				end
			end)
		end
	end
end)        
Toggle = Sub:AddToggle("MyToggle", {Title = "Auto Cursed Captaint", Default = false })
Toggle:OnChanged(function(Value)
    _G.CursedCaptain = Value
    StopTween(_G.CursedCaptain)
end) 
spawn(function()
        while wait() do
            if _G.CursedCaptain then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("Cursed Captain") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Cursed Captain" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.Size = Vector3.new(80,80,80)      
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(PosX,PosY,PosZ))
                                        sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                    until not _G.CursedCaptain or not v.Parent or v.Humanoid.Health <= 0
                                end
                            end
                        end
                    else
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Cursed Captain") then
                            topos(game:GetService("ReplicatedStorage"):FindFirstChild("Cursed Captain").HumanoidRootPart.CFrame * CFrame.new(5,10,2))
                        end
                    end
                end)
            end
        end
    end) 
Toggle = Sub:AddToggle("MyToggle", {Title = "Auto Farm Ectoplasm", Default = _G.AutoEctoplasm })
Toggle:OnChanged(function(Value)
    _G.AutoEctoplasm = Value
    StopTween(_G.AutoEctoplasm)
end)
spawn(function()
	pcall(function()
		while wait() do
			if _G.AutoEctoplasm then
				if (game:GetService("Workspace")).Enemies:FindFirstChild("Ship Deckhand") or (game:GetService("Workspace")).Enemies:FindFirstChild("Ship Engineer") or (game:GetService("Workspace")).Enemies:FindFirstChild("Ship Steward") or (game:GetService("Workspace")).Enemies:FindFirstChild("Ship Officer") then
					for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
						if v.Name == "Ship Deckhand" or v.Name == "Ship Engineer" or v.Name == "Ship Steward" or v.Name == "Ship Officer" then
							repeat
								task.wait()
								EquipWeapon(_G.SelectWeapon)
								AutoHaki()
								NeedAttacking = true
								if string.find(v.Name, "Ship") then
									v.HumanoidRootPart.CanCollide = false
									v.Head.CanCollide = false
									v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
									topos(v.HumanoidRootPart.CFrame * Pos)				
									PosMon = v.HumanoidRootPart.CFrame
									MonFarm = v.Name
									StartMagnet = true
								else
									StartMagnet = false
									topos(CFrame.new(911.35827636719, 125.95812988281, 33159.5390625))
								end
							until _G.AutoEctoplasm == false or (not v.Parent) or v.Humanoid.Health <= 0
							StartMagnet = false
						end
					end
				else
					local Distance = (Vector3.new(911.35827636719, 125.95812988281, 33159.5390625) - (game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
					if Distance > 18000 then
						(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
					end
					topos(CFrame.new(911.35827636719, 125.95812988281, 33159.5390625))
				end
			end
		end
	end)
end)
Toggle = Sub:AddToggle("MyToggle", {Title = "Auto Look Moon", Default = false })
Toggle:OnChanged(function(Value)
    _G.AutoDooHee = Value	
end)
spawn(function()
    while wait() do
		pcall(function()
			if _G.AutoDooHee then
			    wait()
				local moonDir = game.Lighting:GetMoonDirection()
                local lookAtPos = game.Workspace.CurrentCamera.CFrame.p + moonDir * 100
                game.Workspace.CurrentCamera.CFrame = CFrame.lookAt(game.Workspace.CurrentCamera.CFrame.p, lookAtPos)
			end
		end)
    end
end)    
lawrit = Sub:AddToggle("MyToggle", {Title = "Auto Buy Chip Law [Private]", Description = "" ,Default = _G.Auto_Buy_Law_Chip })
lawrit:OnChanged(function(state)
    _G.Auto_Buy_Law_Chip = state
end)
spawn(function()
	while wait() do
		if _G.Auto_Buy_Law_Chip and World2 then
			pcall(function()
				if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Microchip") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Microchip") or game:GetService("Workspace").Enemies:FindFirstChild("Order [Lv. 1250] [Raid Boss]") or game:GetService("ReplicatedStorage"):FindFirstChild("Order [Lv. 1250] [Raid Boss]") then
				
				else
					local args = {
						[1] = "BlackbeardReward",
						[2] = "Microchip",
						[3] = "2"
					}
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				end
			end)
		end
	end
end)
lawrit = Sub:AddToggle("MyToggle", {Title = "Auto Start Law [Private]", Description = "" ,Default = _G.Auto_Start_Law_Dungeon })
lawrit:OnChanged(function(state)
    _G.Auto_Start_Law_Dungeon = state
end)
spawn(function()
	while wait() do
		if _G.Auto_Start_Law_Dungeon and World2 then
			pcall(function()
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Microchip") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Microchip") then
					fireclickdetector(game:GetService("Workspace").Map.CircleIsland.RaidSummon.Button.Main.ClickDetector)
				end
			end)
		end
	end
end)
Toggle = Sub:AddToggle("MyToggle", {Title = "Auto Kill Law [Private]", Default = false })
Toggle:OnChanged(function(Value)
    _G.AutoKillLaw = Value
    StopTween(_G.AutoKillLaw)	
end)    
spawn(function()
        while wait() do
            if _G.AutoKillLaw and World2 then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("Order") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Order" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0                        
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(PosX,PosY,PosZ))
                                        sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                    until not _G.AutoKillLaw or not v.Parent or v.Humanoid.Health <= 0
                                end
                            end
                        end
                    else
                    if game:GetService("ReplicatedStorage"):FindFirstChild("Order") then
                            topos(game:GetService("ReplicatedStorage"):FindFirstChild("Order").HumanoidRootPart.CFrame * CFrame.new(5,10,2))
                        end
                    end
                end)
            end
        end
    end)
lawrit = Sub:AddToggle("MyToggle", {Title = "Auto Law", Description = "" ,Default = _G.autoLawRaid })
lawrit:OnChanged(function(state)
    _G.autoLawRaid = state
    StopTween(_G.autoLawRaid)
end)
spawn(
    function()
        pcall(
            function()
                while wait() do
                    if _G.autoLawRaid then
                        if
                            not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Microchip") and
                                not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Microchip") and
                                not game:GetService("Workspace").Enemies:FindFirstChild("Order") and
                                not game:GetService("ReplicatedStorage"):FindFirstChild("Order")
                         then
                            wait(0.3)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                "BlackbeardReward",
                                "Microchip",
                                "1"
                            )
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                "BlackbeardReward",
                                "Microchip",
                                "2"
                            )
                        end
                    end
                end
            end
        )
    end
)
spawn(
    function()
        pcall(
            function()
                while wait(0.4) do
                    if _G.autoLawRaid then
                        if
                            not game:GetService("Workspace").Enemies:FindFirstChild("Order") and
                                not game:GetService("ReplicatedStorage"):FindFirstChild("Order")
                         then
                            if
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("Microchip") or
                                    game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Microchip")
                             then
                                fireclickdetector(
                                    game:GetService("Workspace").Map.CircleIsland.RaidSummon.Button.Main.ClickDetector
                                )
                            end
                        end
                        if
                            game:GetService("ReplicatedStorage"):FindFirstChild("Order") or
                                game:GetService("Workspace").Enemies:FindFirstChild("Order")
                         then
                            if game:GetService("Workspace").Enemies:FindFirstChild("Order") then
                                for h, i in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if i.Name == "Order" then
                                        repeat task.wait()
                                            AutoHaki()
                                            EquipWeapon(_G.SelectWeapon)
                                            topos(i.HumanoidRootPart.CFrame * Pos)
                                            i.HumanoidRootPart.CanCollide = false
                                            i.HumanoidRootPart.Size = Vector3.new(120, 120, 120)
                                        until not i.Parent or i.Humanoid.Health <= 0 or Auto_Law == false
                                    end
                                end
                            elseif game:GetService("ReplicatedStorage"):FindFirstChild("Order") then
                                topos(CFrame.new(-6217.2021484375, 28.047645568848, -5053.1357421875))
                            end
                        end
                    end
                end
            end
        )
    end
)
Toggle = Sub:AddToggle("MyToggle", {Title = "Auto Kill Greybeard", Default = _G.Autogay})
Toggle:OnChanged(function(Value)
    _G.Autogay = Value
end)
Toggle = Sub:AddToggle("MyToggle", {Title = "Auto Kill Greybeard Hop", Default = _G.Autogayhop})
Toggle:OnChanged(function(Value)
    _G.Autogayhop = Value
end)
spawn(function()
        while wait() do
            if  _G.Autogay and World1 then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("Greybeard") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Greybeard" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(PosX,PosY,PosZ))
                                        game:GetService("VirtualUser"):CaptureController()
                                        game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                        sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
                                    until not  _G.Autogay or not v.Parent or v.Humanoid.Health <= 0
                                end
                            end
                        end
                    else
                    topos(CFrame.new(-5023.38330078125, 28.65203285217285, 4332.3818359375))
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Greybeard") then
                            topos(game:GetService("ReplicatedStorage"):FindFirstChild("Greybeard").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                        else
                            if  _G.Autogayhop then
                                Hop()
                            end
                        end
                    end
                end)
            end
        end
    end)
Toggle = Sub:AddToggle("MyToggle", {Title = "Auto Swan Glasses", Default = _G.AutoFarmSwanGlasses})
Toggle:OnChanged(function(Value)
    _G.AutoFarmSwanGlasses = Value
end)
spawn(function()
        pcall(function()
            while wait() do
                if _G.AutoFarmSwanGlasses and World2 then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Don Swan") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Don Swan" and v.Humanoid.Health > 0 and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
                                repeat task.wait()
                                    pcall(function()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(PosX,PosY,PosZ))
                                        game:GetService("VirtualUser"):CaptureController()
                                        game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 670))
                                        sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                    end)
                                until _G.AutoFarmSwanGlasses == false or v.Humanoid.Health <= 0
                            end
                        end
                    else 
                        repeat task.wait()
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(2284.912109375, 15.537666320801, 905.48291015625)) 
                        until (CFrame.new(2284.912109375, 15.537666320801, 905.48291015625).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4 or _G.AutoFarmSwanGlasses == false
                    end
                end
            end
        end)
    end)    
Toggle = Sub:AddToggle("MyToggle", {Title = "Auto Swan Glasses Hop", Default = _G.AutoFarmSwanGlasses_Hop})
Toggle:OnChanged(function(Value)
    _G.AutoFarmSwanGlasses_Hop = Value
end)
Toggle = Sub:AddToggle("MyToggle", {Title = "Auto Citizen Quest", Default = _G.CitizenQuest})
Toggle:OnChanged(function(Value)
    _G.CitizenQuest = Value
end)
spawn(function()
		while wait() do
			if _G.CitizenQuest and World3 then
				if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
					repeat 
						topos(CFrame.new(-12444.78515625, 332.40396118164, -7673.1806640625)) 
						wait() 
					until _G.StopTween == true or not _G.CitizenQuest or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-12444.78515625, 332.40396118164, -7673.1806640625)).Magnitude <= 10
					wait(.1)
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress","Citizen")
					wait(1)
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest","CitizenQuest",1)
				else
					if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Defeat 50 Forest Pirates") then
						if game:GetService("Workspace").Enemies:FindFirstChild("Forest Pirate") then
							for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if v.Name == "Forest Pirate" then
									repeat wait()
										if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
										end
										EquipWeapon(_G.SelectWeapon)
										topos(v.HumanoidRootPart.CFrame * CFrame.new(1,20,1))
										PosHee =  v.HumanoidRootPart.CFrame
										v.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
										v.HumanoidRootPart.CanCollide = false
										v.HumanoidRootPart.Size = Vector3.new(50,50,50)
										game:GetService'VirtualUser':CaptureController()
										game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
										Mangnetcitzenmon = true
									until _G.CitizenQuest == false or v.Humanoid.Health <= 0
									Mangnetcitzenmon = false
								end
							end
						else
							repeat 
								topos(CFrame.new(-13277.568359375, 370.34185791016, -7821.1572265625)) 
								wait() 
							until _G.StopTween == true or not _G.CitizenQuest or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-13277.568359375, 370.34185791016, -7821.1572265625)).Magnitude <= 10
						end
					elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text ==  "Defeat  Captain Elephant (0/1)" then 
						if game:GetService("Workspace").Enemies:FindFirstChild("Captain Elephant") then
							for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if v.Name == "Captain Elephant" then
									repeat wait()
										if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
										end
										EquipWeapon(_G.SelectWeapon)
										topos(v.HumanoidRootPart.CFrame * CFrame.new(1,20,1))										
										if sethiddenproperty then
											sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
										end
										v.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
										v.HumanoidRootPart.CanCollide = false
										v.HumanoidRootPart.Size = Vector3.new(50,50,50)
										game:GetService'VirtualUser':CaptureController()
										game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
									until _G.CitizenQuest == false or v.Humanoid.Health <= 0
								end
							end
						else
							repeat 
								topos(CFrame.new(-13493.12890625, 318.89553833008, -8373.7919921875)) 
								wait() 
							until _G.StopTween == true or not _G.CitizenQuest or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-13493.12890625, 318.89553833008, -8373.7919921875)).Magnitude <= 10
						end        
					end
				end
				if game.Players.LocalPlayer.Backpack:FindFirstChild("Banana") and  game.Players.LocalPlayer.Backpack:FindFirstChild("Apple") and game.Players.LocalPlayer.Backpack:FindFirstChild("Pineapple") then
					repeat 
						topos(CFrame.new(-12444.78515625, 332.40396118164, -7673.1806640625)) 
						wait() 
					until _G.StopTween == true or not _G.CitizenQuest or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-12444.78515625, 332.40396118164, -7673.1806640625)).Magnitude <= 10
					wait(.1)
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress","Citizen")
				elseif game.Players.LocalPlayer.Backpack:FindFirstChild("Fruit Bowl") or game.Players.LocalPlayer.Character:FindFirstChild("Fruit Bowl") then
					repeat 
						topos(CFrame.new(-10920.125, 624.20275878906, -10266.995117188)) 
						wait() 
					until _G.StopTween == true or not _G.CitizenQuest or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-10920.125, 624.20275878906, -10266.995117188)).Magnitude <= 10
					wait(.1)
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk2","Start")
					wait(1)
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk2","Buy")
				else
					for i,v in pairs(game.Workspace:GetDescendants()) do
						if v.Name == "Apple" or v.Name == "Banana" or v.Name == "Pineapple" then
							v.Handle.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,1,10)
							wait()
							firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart,v.Handle,0)    
							wait()
						end
					end   
				end
			end
		end
	end)
spawn(function()
		while wait() do
			pcall(function()
				if _G.CitizenQuest and World3 then
					if sethiddenproperty then
						sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
					end
				end
			end)
			game:GetService("RunService").Heartbeat:Wait()
		end
	end)
spawn(function()
		game:GetService("RunService").Heartbeat:connect(function()
			pcall(function()
				if _G.CitizenQuest and World3 then
					if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid") then
						game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
					end
				end
			end)
		end)
	end)
spawn(function()
		pcall(function()
			game:GetService("RunService").Heartbeat:Connect(function()
				game:GetService("RunService").Heartbeat:Wait()
				if _G.CitizenQuest and StatrMagnet then
					for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
						if v.Name == "Forest Pirate" and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
							if v.Name == "Forest Pirate" then
								v.HumanoidRootPart.CanCollide = false
								v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
								v.HumanoidRootPart.CFrame = PosHee
							end
						end
					end
				end
			end)
		end)
	end)
spawn(function()
		game:GetService("RunService").Heartbeat:connect(function()
			game:GetService("RunService").Heartbeat:Wait()
			pcall(function()
				if _G.CitizenQuest and StatrMagnet then
					CheckQuest()
					for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
						if v.Name == Ms then
							v.Humanoid:ChangeState(11)
						end
					end
				end
			end)
			game:GetService("RunService").Heartbeat:Wait()
		end)
	end)
Toggle = Sub:AddToggle("MyToggle", {Title = "Auto Musketeer Hat", Default = false })
Toggle:OnChanged(function(Value)
    _G.AutoMusketeerHat = Value
    StopTween(_G.AutoMusketeerHat)
end)
spawn(function()
        pcall(function()
            while wait(.1) do
                if _G.AutoMusketeerHat and World3 then
                    if game:GetService("Players").LocalPlayer.Data.Level.Value >= 1800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress").KilledBandits == false then
                        if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Forest Pirate") and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "50") and game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                            if game:GetService("Workspace").Enemies:FindFirstChild("Forest Pirate") then
                                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if v.Name == "Forest Pirate" then
                                        repeat task.wait()
                                            pcall(function()
                                                AutoHaki()
                                                EquipWeapon(_G.SelectWeapon)
                                                v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                                topos(v.HumanoidRootPart.CFrame * Pos)
                                                v.HumanoidRootPart.CanCollide = false
                                                game:GetService'VirtualUser':CaptureController()
                                                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                                MusketeerHatMon = v.HumanoidRootPart.CFrame
                                                StartMagnetMusketeerhat = true
                                            end)
                                        until _G.AutoMusketeerHat == false or not v.Parent or v.Humanoid.Health <= 0 or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                        StartMagnetMusketeerhat = false
                                    end
                                end
                            else
                                StartMagnetMusketeerhat = false
                                topos(CFrame.new(-13206.452148438, 425.89199829102, -7964.5537109375))
                            end
                        else
                            topos(CFrame.new(-12443.8671875, 332.40396118164, -7675.4892578125))
                            if (Vector3.new(-12443.8671875, 332.40396118164, -7675.4892578125) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30 then
                                wait(1.1)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest","CitizenQuest",1)
                            end
                        end
                    elseif game:GetService("Players").LocalPlayer.Data.Level.Value >= 1800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress").KilledBoss == false then
                        if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Captain Elephant") and game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                            if game:GetService("Workspace").Enemies:FindFirstChild("Captain Elephant") then
                                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if v.Name == "Captain Elephant" then
                                        OldCFrameElephant = v.HumanoidRootPart.CFrame
                                        repeat task.wait()
                                            pcall(function()
                                                AutoHaki()
                                                EquipWeapon(_G.SelectWeapon)
                                                v.HumanoidRootPart.CanCollide = false
                                                v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                                topos(v.HumanoidRootPart.CFrame * Pos)
                                                v.HumanoidRootPart.CanCollide = false
                                                v.HumanoidRootPart.CFrame = OldCFrameElephant
                                                game:GetService("VirtualUser"):CaptureController()
                                                game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
                                                sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                            end)
                                        until _G.AutoMusketeerHat == false or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                    end
                                end
                            else
                                topos(CFrame.new(-13374.889648438, 421.27752685547, -8225.208984375))
                            end
                        else
                            topos(CFrame.new(-12443.8671875, 332.40396118164, -7675.4892578125))
                            if (CFrame.new(-12443.8671875, 332.40396118164, -7675.4892578125).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4 then
                                wait(1.1)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress","Citizen")
                            end
                        end
                    elseif game:GetService("Players").LocalPlayer.Data.Level.Value >= 1800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress","Citizen") == 2 then
                        topos(CFrame.new(-12512.138671875, 340.39279174805, -9872.8203125))
                    end
                end
            end
        end)
    end)    
Toggle = Sub:AddToggle("MyToggle", {Title = "Auto Rainbow Haki", Default = _G.Auto_Rainbow_Haki})
Toggle:OnChanged(function(Value)
    _G.Auto_Rainbow_Haki = Value
end)
spawn(function()
        pcall(function()
            while wait(.1) do
                if _G.Auto_Rainbow_Haki and World3 then
                    if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                        topos(CFrame.new(-11892.0703125, 930.57672119141, -8760.1591796875))
                        if (Vector3.new(-11892.0703125, 930.57672119141, -8760.1591796875) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30 then
                            wait(1.1)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("HornedMan","Bet")
                        end
                    elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Stone") then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Stone") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Stone" then
                                    OldCFrameRainbow = v.HumanoidRootPart.CFrame
                                    repeat task.wait()
                                        EquipWeapon(_G.SelectWeapon)
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(PosX,PosY,PosZ))
                                        v.HumanoidRootPart.CanCollide = false
                                        v.HumanoidRootPart.CFrame = OldCFrameRainbow
                                        v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                        game:GetService("VirtualUser"):CaptureController()
                                        game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
                                        sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                    until _G.Auto_Rainbow_Haki == false or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                end
                            end
                        else
                            topos(CFrame.new(-1086.11621, 38.8425903, 6768.71436, 0.0231462717, -0.592676699, 0.805107772, 2.03251839e-05, 0.805323839, 0.592835128, -0.999732077, -0.0137055516, 0.0186523199))
                        end
                    elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Island Empress") then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Island Empress") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Island Empress" then
                                    OldCFrameRainbow = v.HumanoidRootPart.CFrame
                                    repeat task.wait()
                                        EquipWeapon(_G.SelectWeapon)
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(PosX,PosY,PosZ))
                                        v.HumanoidRootPart.CanCollide = false
                                        v.HumanoidRootPart.CFrame = OldCFrameRainbow
                                        v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                        game:GetService("VirtualUser"):CaptureController()
                                        game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
                                        sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                    until _G.Auto_Rainbow_Haki == false or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                end
                            end
                        else
                            topos(CFrame.new(5713.98877, 601.922974, 202.751251, -0.101080291, -0, -0.994878292, -0, 1, -0, 0.994878292, 0, -0.101080291))
                        end
                    elseif string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Kilo Admiral") then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Kilo Admiral") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Kilo Admiral" then
                                    OldCFrameRainbow = v.HumanoidRootPart.CFrame
                                    repeat task.wait()
                                        EquipWeapon(_G.SelectWeapon)
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(PosX,PosY,PosZ))
                                        v.HumanoidRootPart.CanCollide = false
                                        v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                        v.HumanoidRootPart.CFrame = OldCFrameRainbow
                                        game:GetService("VirtualUser"):CaptureController()
                                        game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
                                        sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                    until _G.Auto_Rainbow_Haki == false or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                end
                            end
                        else
                            topos(CFrame.new(2877.61743, 423.558685, -7207.31006, -0.989591599, -0, -0.143904909, -0, 1.00000012, -0, 0.143904924, 0, -0.989591479))
                        end
                    elseif string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Captain Elephant") then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Captain Elephant") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Captain Elephant" then
                                    OldCFrameRainbow = v.HumanoidRootPart.CFrame
                                    repeat task.wait()
                                        EquipWeapon(_G.SelectWeapon)
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(PosX,PosY,PosZ))
                                        v.HumanoidRootPart.CanCollide = false
                                        v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                        v.HumanoidRootPart.CFrame = OldCFrameRainbow
                                        game:GetService("VirtualUser"):CaptureController()
                                        game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
                                        sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                    until _G.Auto_Rainbow_Haki == false or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                end
                            end
                        else
                            topos(CFrame.new(-13485.0283, 331.709259, -8012.4873, 0.714521289, 7.98849911e-08, 0.69961375, -1.02065748e-07, 1, -9.94383065e-09, -0.69961375, -6.43015241e-08, 0.714521289))
                        end
                    elseif string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Beautiful Pirate") then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Beautiful Pirate") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Beautiful Pirate" then
                                    OldCFrameRainbow = v.HumanoidRootPart.CFrame
                                    repeat task.wait()
                                        EquipWeapon(_G.SelectWeapon)
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(PosX,PosY,PosZ))
                                        v.HumanoidRootPart.CanCollide = false
                                        v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                        v.HumanoidRootPart.CFrame = OldCFrameRainbow
                                        game:GetService("VirtualUser"):CaptureController()
                                        game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
                                        sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                    until _G.Auto_Rainbow_Haki == false or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                end
                            end
                        else
                            topos(CFrame.new(5312.3598632813, 20.141201019287, -10.158538818359))
                        end
                    else
                        topos(CFrame.new(-11892.0703125, 930.57672119141, -8760.1591796875))
                        if (Vector3.new(-11892.0703125, 930.57672119141, -8760.1591796875) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30 then
                            wait(1.1)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("HornedMan","Bet")
                        end
                    end
                end
            end
        end)
    end)
Toggle = Sub:AddToggle("MyToggle", {Title = "Auto Evo Race V2", Default = _G.Auto_EvoRace})
Toggle:OnChanged(function(Value)
    _G.Auto_EvoRace = Value
    StopTween(_G.Auto_EvoRace)
end)
spawn(function()
        pcall(function()
            while wait(.1) do
                if _G.Auto_EvoRace and World2 then
                    if not game:GetService("Players").LocalPlayer.Data.Race:FindFirstChild("Evolved") then
                        if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","1") == 0 then
                            topos(CFrame.new(-2779.83521, 72.9661407, -3574.02002, -0.730484903, 6.39014104e-08, -0.68292886, 3.59963224e-08, 1, 5.50667032e-08, 0.68292886, 1.56424669e-08, -0.730484903))
                            if (Vector3.new(-2779.83521, 72.9661407, -3574.02002) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4 then
                                wait(1.1)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","2")
                            end
                        elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","1") == 1 then
                            pcall(function()
                                if not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 1") and not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flower 1") then
                                    topos(game:GetService("Workspace").Flower1.CFrame)
                                elseif not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 2") and not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flower 2") then
                                    topos(game:GetService("Workspace").Flower2.CFrame)
                                elseif not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 3") and not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flower 3") then
                                    if game:GetService("Workspace").Enemies:FindFirstChild("Zombie") then
                                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                            if v.Name == "Zombie" then
                                                repeat task.wait()
                                                    EquipWeapon(_G.SelectWeapon)
                                                    AutoHaki()
                                                    topos(v.HumanoidRootPart.CFrame * CFrame.new(PosX,PosY,PosZ))
                                                    v.HumanoidRootPart.CanCollide = false
                                                    v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                                    game:GetService("VirtualUser"):CaptureController()
                                                    game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
                                                    PosMonEvo = v.HumanoidRootPart.CFrame
                                                    StartEvoMagnet = true
                                                until game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 3") or not v.Parent or v.Humanoid.Health <= 0 or _G.Auto_EvoRace == false
                                                StartEvoMagnet = false
                                            end
                                        end
                                    else
                                        StartEvoMagnet = false
                                        topos(CFrame.new(-5685.9233398438, 48.480125427246, -853.23724365234))
                                    end
                                end
                            end)
                        elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","1") == 2 then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","3")
                        end
                    end
                end
            end
        end)
    end)
Other = Window:AddTab({ Title = "Tab Farming Other", Icon = "crown" })
occhochest = Other:AddToggle("occhochest", {Title = "Auto Chest", Default = _G.AutoFarmChest})
occhochest:OnChanged(function(value)
    _G.AutoFarmChest = value
end)
_G.MagnitudeAdd = 0
function jumpchar()
    local humanoid = game.Players.LocalPlayer.Character and
    game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
    if humanoid then
        humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
        wait(0.1)
    end
end
function isNearDestination(destination)
    local distance = (destination.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
    return distance <= 0
end
function touchChest(chest)
    local touchTransmitter = chest and chest:FindFirstChild("TouchTransmitter")
    if touchTransmitter then
        for _ = 1, 5 do
            firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, touchTransmitter.Parent, 0)
            wait(0.1)
            firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, touchTransmitter.Parent, 1)
            wait(0.2)
        end
    end
end
spawn(function()
    while wait() do
        if _G.AutoFarmChest then
            local nearestChest, nearestDistance = nil, math.huge
            for _, v in pairs(game:GetService("Workspace"):GetChildren()) do
                if v:IsA("BasePart") and v.Name:find("Chest") then
                    local distance = (v.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position)
                    .Magnitude
                    if distance <= 5000 + _G.MagnitudeAdd and distance < nearestDistance then
                        nearestChest, nearestDistance = v, distance
                    end
                end
            end
            if nearestChest then
                repeat
                    wait()
                    if _G.AutoFarmChest and nearestChest and nearestChest.Parent then
                        topos(nearestChest.CFrame)
                    else
                        topos(nearestChest.CFrame)
                    end
                until not _G.AutoFarmChest or not nearestChest.Parent or isNearDestination(nearestChest)
                if isNearDestination(nearestChest) then
                    wait(0.1)
                    jumpchar()
                    touchChest(nearestChest)
                    topos(nearestChest.CFrame)
                end
                topos(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
                _G.MagnitudeAdd = _G.MagnitudeAdd + 1500
            end
        end
    end
end)
occhochest = Other:AddToggle("occhochest", {Title = "Auto Chest Mirage", Default = _G.GrabChestMystic})
occhochest:OnChanged(function(value)
    _G.GrabChestMystic = value
end)
task.spawn(function()
    repeat task.wait() until _G.GrabChestMystic
    while task.wait() do
        pcall(function()
            if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
                if _G.GrabChestMystic then
                    for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
                        repeat wait()
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
                        until not _G.GrabChestMystic or not v.Part
                    end
                end
            end
        end)
    end
end)                   
Toggle = Other:AddToggle("MyToggle", {Title = "Stop When Have God's Chalice& Fist Of Darkness", Default = true})
Toggle:OnChanged(function(vu)
    _G.StopItemsChest = vu
end)
spawn(function()
    while wait() do
        pcall(function()
            if _G.StopItemsChest then
                if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("God's Chalice") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Fist of Darkness") then
                    _G.AutoFarmChest = false
                    topos(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
                end
            end
        end)
    end
end)
Other:AddParagraph({
        Title = "Farm Observation",
        Content = "---------------------"
})
ObservationRange = Other:AddParagraph({
     Title = "Observation Level",
     Content = ""
})    
spawn(function()
        while wait() do
            pcall(function()
                ObservationRange:SetDesc("Observation Range Level : "..math.floor(game:GetService("Players").LocalPlayer.VisionRadius.Value))
            end)
        end
    end)    
Toggle = Other:AddToggle("MyToggle", {Title = "Auto UP Observation V2", Default = false })
Toggle:OnChanged(function(Value)
    _G.AutoObservationHakiV2 = Value
    StopTween(_G.AutoObservationHakiV2)
end)    
spawn(function()
		while wait() do
			if _G.AutoObservationHakiV2 and World3 then
				if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
					repeat 
						topos(CFrame.new(-12444.78515625, 332.40396118164, -7673.1806640625)) 
						wait() 
					until _G.StopTween == true or not _G.AutoObservationHakiV2 or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-12444.78515625, 332.40396118164, -7673.1806640625)).Magnitude <= 10
					wait(.1)
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress","Citizen")
					wait(1)
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest","CitizenQuest",1)
				else
					if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Defeat 50 Forest Pirates") then
						if game:GetService("Workspace").Enemies:FindFirstChild("Forest Pirate") then
							for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if v.Name == "Forest Pirate" then
									repeat wait()
										if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
										end
										EquipWeapon(_G.SelectWeapon)
										topos(v.HumanoidRootPart.CFrame * CFrame.new(1,20,1))
										PosHee =  v.HumanoidRootPart.CFrame
										v.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
										v.HumanoidRootPart.CanCollide = false
										v.HumanoidRootPart.Size = Vector3.new(50,50,50)
										Mangnetcitzenmon = true
									until _G.AutoObservationHakiV2 == false or v.Humanoid.Health <= 0
									Mangnetcitzenmon = false
								end
							end
						else
							repeat 
								topos(CFrame.new(-13277.568359375, 370.34185791016, -7821.1572265625)) 
								wait() 
							until _G.StopTween == true or not _G.AutoObservationHakiV2 or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-13277.568359375, 370.34185791016, -7821.1572265625)).Magnitude <= 10
						end
					elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text ==  "Defeat  Captain Elephant (0/1)" then 
						if game:GetService("Workspace").Enemies:FindFirstChild("Captain Elephant") then
							for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if v.Name == "Captain Elephant" then
									repeat wait()
										if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
										end
										EquipWeapon(_G.SelectWeapon)
										topos(v.HumanoidRootPart.CFrame * CFrame.new(1,20,1))										
										if sethiddenproperty then
											sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
										end
										v.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
										v.HumanoidRootPart.CanCollide = false
										v.HumanoidRootPart.Size = Vector3.new(50,50,50)
									until _G.AutoObservationHakiV2 == false or v.Humanoid.Health <= 0
								end
							end
						else
							repeat 
								topos(CFrame.new(-13493.12890625, 318.89553833008, -8373.7919921875)) 
								wait() 
							until _G.StopTween == true or not _G.AutoObservationHakiV2 or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-13493.12890625, 318.89553833008, -8373.7919921875)).Magnitude <= 10
						end        
					end
				end
				if game.Players.LocalPlayer.Backpack:FindFirstChild("Banana") and  game.Players.LocalPlayer.Backpack:FindFirstChild("Apple") and game.Players.LocalPlayer.Backpack:FindFirstChild("Pineapple") then
					repeat 
						topos(CFrame.new(-12444.78515625, 332.40396118164, -7673.1806640625)) 
						wait() 
					until _G.StopTween == true or not _G.AutoObservationHakiV2 or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-12444.78515625, 332.40396118164, -7673.1806640625)).Magnitude <= 10
					wait(.1)
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress","Citizen")
				elseif game.Players.LocalPlayer.Backpack:FindFirstChild("Fruit Bowl") or game.Players.LocalPlayer.Character:FindFirstChild("Fruit Bowl") then
					repeat 
						topos(CFrame.new(-10920.125, 624.20275878906, -10266.995117188)) 
						wait() 
					until _G.StopTween == true or not _G.AutoObservationHakiV2 or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-10920.125, 624.20275878906, -10266.995117188)).Magnitude <= 10
					wait(.1)
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk2","Start")
					wait(1)
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk2","Buy")
				else
					for i,v in pairs(game.Workspace:GetDescendants()) do
						if v.Name == "Apple" or v.Name == "Banana" or v.Name == "Pineapple" then
							v.Handle.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,1,10)
							wait()
							firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart,v.Handle,0)    
							wait()
						end
					end   
				end
			end
		end
	end)    
spawn(function()
		while wait() do
			pcall(function()
				if _G.AutoObservationHakiV2 and World3 then
					if sethiddenproperty then
						sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
					end
				end
			end)
			game:GetService("RunService").Heartbeat:Wait()
		end
	end)
spawn(function()
		game:GetService("RunService").Heartbeat:connect(function()
			pcall(function()
				if _G.AutoObservationHakiV2 and World3 then
					if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid") then
						game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
					end
				end
			end)
		end)
	end)
spawn(function()
		pcall(function()
			game:GetService("RunService").Heartbeat:Connect(function()
				game:GetService("RunService").Heartbeat:Wait()
				if _G.AutoObservationHakiV2 and StatrMagnet then
					for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
						if v.Name == "Forest Pirate" and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
							if v.Name == "Forest Pirate" then
								v.HumanoidRootPart.CanCollide = false
								v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
								v.HumanoidRootPart.CFrame = PosHee
							end
						end
					end
				end
			end)
		end)
	end)
spawn(function()
		game:GetService("RunService").Heartbeat:connect(function()
			game:GetService("RunService").Heartbeat:Wait()
			pcall(function()
				if _G.AutoObservationHakiV2 and StatrMagnet then
					CheckQuest()
					for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
						if v.Name == Ms then
							v.Humanoid:ChangeState(11)
						end
					end
				end
			end)
			game:GetService("RunService").Heartbeat:Wait()
		end)
	end)
Toggle = Other:AddToggle("MyToggle", {Title = "Farm Observation", Default = false })
Toggle:OnChanged(function(value)
    _G.AutoObservation = value
    StopTween(_G.AutoObservation)
end)    
spawn(function()
        while wait() do
            pcall(function()
                if _G.AutoObservation then
                    repeat task.wait()
                        if not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
                            game:GetService('VirtualUser'):CaptureController()
                            game:GetService('VirtualUser'):SetKeyDown('0x65')
                            wait(1)
                            game:GetService('VirtualUser'):SetKeyUp('0x65')
                        end
                    until game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") or not _G.AutoObservation
                end
            end)
        end
    end)    
spawn(function()
        pcall(function()
            while wait() do
                if _G.AutoObservation then
                    if game:GetService("Players").LocalPlayer.VisionRadius.Value >= 5000 then
                        Alert:create("You Have Max Points")
                        wait(1)
                    else
                        if World2 then
                            if game:GetService("Workspace").Enemies:FindFirstChild("Lava Pirate [Lv. 1200]") then
                                if game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
                                    repeat task.wait()
                                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies:FindFirstChild("Lava Pirate").HumanoidRootPart.CFrame * CFrame.new(3,0,0)
                                    until _G.AutoObservation == false or not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
                                else
                                    repeat task.wait()
                                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies:FindFirstChild("Lava Pirate").HumanoidRootPart.CFrame * CFrame.new(0,50,0)+
                                            wait(1)
                                        if not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") and _G.AutoObservation_Hop == true then
                                            game:GetService("TeleportService"):Teleport(game.PlaceId,game:GetService("Players").LocalPlayer)
                                        end
                                    until _G.AutoObservation == false or game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
                                end
                            else
                                topos(CFrame.new(-5478.39209, 15.9775667, -5246.9126))
                            end
                        elseif World1 then
                            if game:GetService("Workspace").Enemies:FindFirstChild("Galley Captain") then
                                if game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
                                    repeat task.wait()
                                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies:FindFirstChild("Galley Captain").HumanoidRootPart.CFrame * CFrame.new(3,0,0)
                                    until _G.AutoObservation == false or not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
                                else
                                    repeat task.wait()
                                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies:FindFirstChild("Galley Captain").HumanoidRootPart.CFrame * CFrame.new(0,50,0)
                                        wait(1)
                                        if not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") and _G.AutoObservation_Hop == true then
                                            game:GetService("TeleportService"):Teleport(game.PlaceId,game:GetService("Players").LocalPlayer)
                                        end
                                    until _G.AutoObservation == false or game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
                                end
                            else
                                topos(CFrame.new(5533.29785, 88.1079102, 4852.3916))
                            end
                        elseif World3 then
                            if game:GetService("Workspace").Enemies:FindFirstChild("Giant Islander") then
                                if game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
                                    repeat task.wait()
                                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies:FindFirstChild("Giant Islander").HumanoidRootPart.CFrame * CFrame.new(3,0,0)
                                    until _G.AutoObservation == false or not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
                                else
                                    repeat task.wait()
                                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies:FindFirstChild("Giant Islander").HumanoidRootPart.CFrame * CFrame.new(0,50,0)
                                        wait(1)
                                        if not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") and _G.AutoObservation_Hop == true then
                                            game:GetService("TeleportService"):Teleport(game.PlaceId,game:GetService("Players").LocalPlayer)
                                        end
                                    until _G.AutoObservation == false or game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
                                end
                            else
                                topos(CFrame.new(4530.3540039063, 656.75695800781, -131.60952758789))
                            end
                        end
                    end
                end
            end
        end)
    end)    
if World1 then
		tableBoss = {"The Gorilla King","Bobby","Yeti","Mob Leader","Vice Admiral","Warden","Chief Warden","Swan","Magma Admiral","Fishman Lord","Wysper","Thunder God","Cyborg","Saber Expert"}
elseif World2 then
		tableBoss = {"Diamond","Jeremy","Fajita","Don Swan","Smoke Admiral","Cursed Captain","Darkbeard","Order","Awakened Ice Admiral","Tide Keeper"}	
elseif World3 then
		tableBoss = {"Stone","Island Empress","Kilo Admiral","Captain Elephant","Beautiful Pirate","rip_indra True Form","Longma","Soul Reaper","Cake Queen"}	
end
Dropdown = Other:AddDropdown("Dropdown", {
    Title = "Select Boss",
    Values = tableBoss,
    Multi = false,
    Default = _G.SelectBoss,
})
Dropdown:SetValue("")
Dropdown:OnChanged(function(Value)
    _G.SelectBoss = Value
end)
Toggle = Other:AddToggle("MyToggle", {Title = "Auto Kill Boss", Default = _G.AutoFarmBoss })
Toggle:OnChanged(function(Value)
    _G.AutoFarmBoss = Value
end)    
spawn(function()
    while wait() do
        if _G.AutoFarmBoss and BypassTP then
            pcall(function()
                if game:GetService("Workspace").Enemies:FindFirstChild(_G.SelectBoss) then
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v.Name == _G.SelectBoss then
                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                repeat task.wait()
                                    AutoHaki()
                                    EquipWeapon(_G.SelectWeapon)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid.WalkSpeed = 0
                                    v.HumanoidRootPart.Size = Vector3.new(80,80,80)                             
                                    topos(v.HumanoidRootPart.CFrame * Pos)
                                    game:GetService("VirtualUser"):CaptureController()
                                    game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                    sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                until not _G.AutoFarmBoss or not v.Parent or v.Humanoid.Health <= 0
                            end
                        end
                    end
                elseif game.ReplicatedStorage:FindFirstChild(_G.SelectBoss) then
                    if ((game.ReplicatedStorage:FindFirstChild(_G.SelectBoss).HumanoidRootPart.CFrame).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 1500 then
                        topos(game.ReplicatedStorage:FindFirstChild(_G.SelectBoss).HumanoidRootPart.CFrame)
                    else
                        BTP(game.ReplicatedStorage:FindFirstChild(_G.SelectBoss).HumanoidRootPart.CFrame)
                    end
                end
            end)
        end
    end
end)
spawn(function()
    while wait() do
        if _G.AutoFarmBoss and not BypassTP then
            pcall(function()
                if game:GetService("Workspace").Enemies:FindFirstChild(_G.SelectBoss) then
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v.Name == _G.SelectBoss then
                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                repeat task.wait()
                                    AutoHaki()
                                    EquipWeapon(_G.SelectWeapon)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid.WalkSpeed = 0
                                    v.HumanoidRootPart.Size = Vector3.new(80,80,80)
                                    topos(v.HumanoidRootPart.CFrame * (Farm_pos))
                                    game:GetService("VirtualUser"):CaptureController()
                                    game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                    sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                until not _G.AutoFarmBoss or not v.Parent or v.Humanoid.Health <= 0
                            end
                        end
                    end
                else
                    if game:GetService("ReplicatedStorage"):FindFirstChild(_G.SelectBoss) then
                        topos(game:GetService("ReplicatedStorage"):FindFirstChild(_G.SelectBoss).HumanoidRootPart.CFrame * CFrame.new(5,10,7))
                    end
                end
            end)
        end
    end
end)    
FarmAllBoss = Other:AddToggle("FarmAllBoss", {
    Title = "Auto Kill All Boss",
    Description = "",
    Default = false,
    Callback = function(value)
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
        _G.AutoFarmAllBoss = value
        StopTween(_G.AutoFarmAllBoss)
    end
})
spawn(function()
    while wait() do
        if _G.AutoFarmAllBoss then
            pcall(function()
                for i,boss in pairs(tableBoss) do
                if game:GetService("Workspace").Enemies:FindFirstChild(boss) then
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v.Name == boss then
                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                repeat task.wait()
                                    AutoHaki()
                                    EquipWeapon(_G.SelectWeapon)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid.WalkSpeed = 0
                                    v.HumanoidRootPart.Size = Vector3.new(80,80,80)
                                    topos(v.HumanoidRootPart.CFrame * Pos)
                                    sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                until not _G.AutoFarmAllBoss or not v.Parent or v.Humanoid.Health <= 0
                            end
                        end
                    end
                else
                    if game:GetService("ReplicatedStorage"):FindFirstChild(boss) then
                        topos(game:GetService("ReplicatedStorage"):FindFirstChild(boss).HumanoidRootPart.CFrame * CFrame.new(5,10,2))
                    end
                end
                end
            end)
        end
    end
end)
Mari = Window:AddTab({ Title = "Tab Farm Material", Icon = "ghost" })     
Mari:AddParagraph({
        Title = "Farming Material",
        Content = "---------------------"
    })
Toggle = Mari:AddToggle("MyToggle", {Title = "Auto Farm Radioactive Material", Default = Radioactive })
Toggle:OnChanged(function(value)
    Radioactive = value
end)
spawn(function()
        while wait() do
            if Radioactive and World2 then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("Factory Staff") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Factory Staff" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.Head.CanCollide = false 
                                        MakoriGayMag = true
                                        PosGay = v.HumanoidRootPart.CFrame
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(PosX,PosY,PosZ))
                                        game:GetService("VirtualUser"):CaptureController()
                                        game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                    until not Radioactive or not v.Parent or v.Humanoid.Health <= 0
                                    MakoriGayMag = false
                                end
                            end
                        end
                    else
                    topos(CFrame.new(-507.7895202636719, 72.99479675292969, -126.45632934570312))
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Factory Staff") then
                            topos(game:GetService("ReplicatedStorage"):FindFirstChild("Factory Staff").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                        else
                            if _G.StardHop then
                                Hop()
                            end
                        end
                    end
                end)
            end
        end
    end)
Toggle = Mari:AddToggle("MyToggle", {Title = "Auto Farm Vampire Fang", Default = BjirVampire })
Toggle:OnChanged(function(value)
    BjirVampire = value
end)
spawn(function()
        while wait() do
            if BjirVampire and World2 then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("Vampire") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Vampire" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.Head.CanCollide = false 
                                        MakoriGayMag = true
                                        PosGay = v.HumanoidRootPart.CFrame
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(PosX,PosY,PosZ))
                                        game:GetService("VirtualUser"):CaptureController()
                                        game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                    until not BjirVampire or not v.Parent or v.Humanoid.Health <= 0
                                    MakoriGayMag = false
                                end
                            end
                        end
                    else
                    topos(CFrame.new(-5622.033203125, 492.19604492188, -781.78552246094))
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Vampire") then
                            topos(game:GetService("ReplicatedStorage"):FindFirstChild("Vampire").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                        else
                            if _G.StardHop then
                                Hop()
                            end
                        end
                    end
                end)
            end
        end
    end)
Toggle = Mari:AddToggle("MyToggle", {Title = "Auto Farm Mystic Droplet", Default = _G.Makori_gay })
Toggle:OnChanged(function(value)
    _G.Makori_gay = value
end)
spawn(function()
        while wait() do
            if _G.Makori_gay and World2 then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("Water Fighter") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Water Fighter" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.Head.CanCollide = false 
                                        MakoriGayMag = true
                                        PosGay = v.HumanoidRootPart.CFrame
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(PosX,PosY,PosZ))
                                        game:GetService("VirtualUser"):CaptureController()
                                        game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                    until not _G.Makori_gay or not v.Parent or v.Humanoid.Health <= 0
                                    MakoriGayMag = false
                                end
                            end
                        end
                    else
                    topos(CFrame.new(-3352.9013671875, 285.01556396484375, -10534.841796875))
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Water Fighter") then
                            topos(game:GetService("ReplicatedStorage"):FindFirstChild("Water Fighter").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                        else
                            if _G.StardHop then
                                Hop()
                            end
                        end
                    end
                end)
            end
        end
    end)
Toggle = Mari:AddToggle("MyToggle", {Title = "Auto Farm Magma Ore", Default = _G.Umm })
Toggle:OnChanged(function(value)
    _G.Umm = value
end)
spawn(function()
        while wait() do
            if _G.Umm and World1 then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("Military Spy") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Military Spy" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.Head.CanCollide = false 
                                        MakoriGayMag = true
                                        PosGay = v.HumanoidRootPart.CFrame
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(PosX,PosY,PosZ))
                                        game:GetService("VirtualUser"):CaptureController()
                                        game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                    until not _G.Umm or not v.Parent or v.Humanoid.Health <= 0
                                    MakoriGayMag = false
                                end
                            end
                        end
                    else
                    topos(CFrame.new(-5850.2802734375, 77.28675079345703, 8848.6748046875))
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Military Spy") then
                            topos(game:GetService("ReplicatedStorage"):FindFirstChild("Military Spy").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                        else
                            if _G.StardHop then
                                Hop()
                            end
                        end
                    end
                end)
            end
        end
    end)   
spawn(function()
        while wait() do
            if _G.Umm and World2 then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("Lava Pirate") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Lava Pirate" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        EquipWeapon(_G.SelectWeapon)
                                        AutoHaki()
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.Head.CanCollide = false 
                                        MakoriGayMag = true
                                        PosGay = v.HumanoidRootPart.CFrame
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(PosX,PosY,PosZ))
                                        game:GetService("VirtualUser"):CaptureController()
                                        game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                    until not _G.Umm or not v.Parent or v.Humanoid.Health <= 0
                                    MakoriGayMag = false
                                end
                            end
                        end
                    else
                    topos(CFrame.new(-5234.60595703125, 51.953372955322266, -4732.27880859375))
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Lava Pirate") then
                            topos(game:GetService("ReplicatedStorage"):FindFirstChild("Lava Pirate").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                        else
                            if _G.StardHop then
                                Hop()
                            end
                        end
                    end
                end)
            end
        end
    end)
Toggle = Mari:AddToggle("MyToggle", {Title = "Auto Farm Angel Wings", Default = _G.Auto_Wing })
Toggle:OnChanged(function(value)
    _G.Auto_Wing = value
end)
spawn(function()
        while wait() do
            if _G.Auto_Wing and World1 then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("Royal Soldier") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Royal Soldier" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.Head.CanCollide = false 
                                        MakoriGayMag = true
                                        PosGay = v.HumanoidRootPart.CFrame
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(PosX,PosY,PosZ))
                                        game:GetService("VirtualUser"):CaptureController()
                                        game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                    until not _G.Auto_Wing or not v.Parent or v.Humanoid.Health <= 0
                                    MakoriGayMag = false
                                end
                            end
                        end
                    else
                    topos(CFrame.new(-7827.15625, 5606.912109375, -1705.5833740234375))
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Royal Soldier") then
                            topos(game:GetService("ReplicatedStorage"):FindFirstChild("Royal Soldier").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                        else
                            if _G.StardHop then
                                Hop()
                            end
                        end
                    end
                end)
            end
        end
    end)
Toggle = Mari:AddToggle("MyToggle", {Title = "Auto Farm Leather", Default = _G.Leather })
Toggle:OnChanged(function(value)
    _G.Leather = value
end)
spawn(function()
        while wait() do
            if _G.Leather and World1 then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("Pirate") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Pirate" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.Head.CanCollide = false 
                                        MakoriGayMag = true
                                        PosGay = v.HumanoidRootPart.CFrame
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(PosX,PosY,PosZ))
                                        game:GetService("VirtualUser"):CaptureController()
                                        game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                    until not _G.Leather or not v.Parent or v.Humanoid.Health <= 0
                                    MakoriGayMag = false
                                end
                            end
                        end
                    else
                    topos(CFrame.new(-1211.8792724609375, 4.787090301513672, 3916.83056640625))
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Pirate") then
                            topos(game:GetService("ReplicatedStorage"):FindFirstChild("Pirate").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                        else
                            if _G.StardHop then
                                Hop()
                            end
                        end
                    end
                end)
            end
        end
    end)    
spawn(function()
        while wait() do
            if _G.Leather and World2 then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("Marine Captain") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Marine Captain" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.Head.CanCollide = false 
                                        MakoriGayMag = true
                                        PosGay = v.HumanoidRootPart.CFrame
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(PosX,PosY,PosZ))
                                        game:GetService("VirtualUser"):CaptureController()
                                        game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                    until not _G.Leather or not v.Parent or v.Humanoid.Health <= 0
                                    MakoriGayMag = false
                                end
                            end
                        end
                    else
                    topos(CFrame.new(-2010.5059814453125, 73.00115966796875, -3326.620849609375))
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Marine Captain") then
                            topos(game:GetService("ReplicatedStorage"):FindFirstChild("Marine Captain").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                        else
                            if _G.StardHop then
                                Hop()
                            end
                        end
                    end
                end)
            end
        end
    end)   
spawn(function()
        while wait() do
            if _G.Leather and World3 then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("Jungle Pirate") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Jungle Pirate" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.Head.CanCollide = false 
                                        MakoriGayMag = true
                                        PosGay = v.HumanoidRootPart.CFrame
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(PosX,PosY,PosZ))
                                        game:GetService("VirtualUser"):CaptureController()
                                        game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                    until not _G.Leather or not v.Parent or v.Humanoid.Health <= 0
                                    MakoriGayMag = false
                                end
                            end
                        end
                    else
                    topos(CFrame.new(-11975.78515625, 331.7734069824219, -10620.0302734375))
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Jungle Pirate") then
                            topos(game:GetService("ReplicatedStorage"):FindFirstChild("Jungle Pirate").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                        else
                            if _G.StardHop then
                                Hop()
                            end
                        end
                    end
                end)
            end
        end
    end)
Toggle = Mari:AddToggle("MyToggle", {Title = "Auto Farm Scrap Metal", Default = Scrap })
Toggle:OnChanged(function(value)
    Scrap = value
end)
spawn(function()
        while wait() do
            if Scrap and World1 then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("Brute") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Brute" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.Head.CanCollide = false 
                                        MakoriGayMag = true
                                        PosGay = v.HumanoidRootPart.CFrame
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(PosX,PosY,PosZ))
                                        game:GetService("VirtualUser"):CaptureController()
                                        game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                    until not Scrap or not v.Parent or v.Humanoid.Health <= 0
                                    MakoriGayMag = false
                                end
                            end
                        end
                    else
                    topos(CFrame.new(-1132.4202880859375, 14.844913482666016, 4293.30517578125))
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Brute") then
                            topos(game:GetService("ReplicatedStorage"):FindFirstChild("Brute").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                        else
                            if _G.StardHop then
                                Hop()
                            end
                        end
                    end
                end)
            end
        end
    end)    
spawn(function()
        while wait() do
            if Scrap and World2 then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("Mercenary") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Mercenary" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.Head.CanCollide = false 
                                        MakoriGayMag = true
                                        PosGay = v.HumanoidRootPart.CFrame
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(PosX,PosY,PosZ))
                                        game:GetService("VirtualUser"):CaptureController()
                                        game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                    until not Scrap or not v.Parent or v.Humanoid.Health <= 0
                                    MakoriGayMag = false
                                end
                            end
                        end
                    else
                    topos(CFrame.new(-972.307373046875, 73.04473876953125, 1419.2901611328125))
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Mercenary") then
                            topos(game:GetService("ReplicatedStorage"):FindFirstChild("Mercenary").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                        else
                            if _G.StardHop then
                                Hop()
                            end
                        end
                    end
                end)
            end
        end
    end)     
spawn(function()
        while wait() do
            if Scrap and World3 then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("Pirate Millionaire") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Pirate Millionaire" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.Head.CanCollide = false 
                                        MakoriGayMag = true
                                        PosGay = v.HumanoidRootPart.CFrame
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(PosX,PosY,PosZ))
                                        game:GetService("VirtualUser"):CaptureController()
                                        game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                    until not Scrap or not v.Parent or v.Humanoid.Health <= 0
                                    MakoriGayMag = false
                                end
                            end
                        end
                    else
                    topos(CFrame.new(-289.6311950683594, 43.8282470703125, 5583.66357421875))
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Pirate Millionaire") then
                            topos(game:GetService("ReplicatedStorage"):FindFirstChild("Pirate Millionaire").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                        else
                            if _G.StardHop then
                                Hop()
                            end
                        end
                    end
                end)
            end
        end
    end)        
Toggle = Mari:AddToggle("MyToggle", {Title = "Auto Farm Conjured Cocoa", Default = Cocoafarm })
Toggle:OnChanged(function(value)
    Cocoafarm = value
end)
spawn(function()
        while wait() do
            if Cocoafarm and World3 then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("Chocolate Bar Battler") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Chocolate Bar Battler" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.Head.CanCollide = false 
                                        MakoriGayMag = true
                                        PosGay = v.HumanoidRootPart.CFrame
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(PosX,PosY,PosZ))
                                        game:GetService("VirtualUser"):CaptureController()
                                        game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                    until not Cocoafarm or not v.Parent or v.Humanoid.Health <= 0
                                    MakoriGayMag = false
                                end
                            end
                        end
                    else
                    topos(CFrame.new(744.7930908203125, 24.76934242248535, -12637.7255859375))
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Chocolate Bar Battler") then
                            topos(game:GetService("ReplicatedStorage"):FindFirstChild("Chocolate Bar Battler").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                        else
                            if _G.StardHop then
                                Hop()
                            end
                        end
                    end
                end)
            end
        end
    end)
Toggle = Mari:AddToggle("MyToggle", {Title = "Auto Farm Dragon Scale", Default = Dragon_Scale })
Toggle:OnChanged(function(value)
    Dragon_Scale = value
end)
spawn(function()
        while wait() do
            if Dragon_Scale and World3 then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("Dragon Crew Warrior") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Dragon Crew Warrior" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.Head.CanCollide = false 
                                        MakoriGayMag = true
                                        PosGay = v.HumanoidRootPart.CFrame
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(PosX,PosY,PosZ))
                                        game:GetService("VirtualUser"):CaptureController()
                                        game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                    until not Dragon_Scale or not v.Parent or v.Humanoid.Health <= 0
                                    MakoriGayMag = false
                                end
                            end
                        end
                    else
                    topos(CFrame.new(5824.06982421875, 51.38640213012695, -1106.694580078125))
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Dragon Crew Warrior") then
                            topos(game:GetService("ReplicatedStorage"):FindFirstChild("Dragon Crew Warrior").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                        else
                            if _G.StardHop then
                                Hop()
                            end
                        end
                    end
                end)
            end
        end
    end)
Toggle = Mari:AddToggle("MyToggle", {Title = "Auto Farm Gunpowder", Default = Gunpowder })
Toggle:OnChanged(function(value)
    Gunpowder = value
end)
spawn(function()
        while wait() do
            if Gunpowder and World3 then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("Pistol Billionaire") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Pistol Billionaire" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.Head.CanCollide = false 
                                        MakoriGayMag = true
                                        PosGay = v.HumanoidRootPart.CFrame
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(PosX,PosY,PosZ))
                                        game:GetService("VirtualUser"):CaptureController()
                                        game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                    until not Gunpowder or not v.Parent or v.Humanoid.Health <= 0
                                    MakoriGayMag = false
                                end
                            end
                        end
                    else
                    topos(CFrame.new(-379.6134338378906, 73.84449768066406, 5928.5263671875))
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Pistol Billionaire") then
                            topos(game:GetService("ReplicatedStorage"):FindFirstChild("Pistol Billionaire").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                        else
                            if _G.StardHop then
                                Hop()
                            end
                        end
                    end
                end)
            end
        end
    end)
Toggle = Mari:AddToggle("MyToggle", {Title = "Auto Farm Fish Tail", Default = Fish })
Toggle:OnChanged(function(value)
    Fish = value
end)
spawn(function()
        while wait() do
            if Fish and World3 then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("Fishman Captain") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Fishman Captain" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.Head.CanCollide = false 
                                        MakoriGayMag = true
                                        PosGay = v.HumanoidRootPart.CFrame
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(PosX,PosY,PosZ))
                                        game:GetService("VirtualUser"):CaptureController()
                                        game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                    until not Fish or not v.Parent or v.Humanoid.Health <= 0
                                    MakoriGayMag = false
                                end
                            end
                        end
                    else
                    topos(CFrame.new(-10961.0126953125, 331.7977600097656, -8914.29296875))
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Fishman Captain") then
                            topos(game:GetService("ReplicatedStorage"):FindFirstChild("Fishman Captain").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                        else
                            if _G.StardHop then
                                Hop()
                            end
                        end
                    end
                end)
            end
        end
    end)
Toggle = Mari:AddToggle("MyToggle", {Title = "Auto Farm Mini Tusk", Default = MiniHee })
Toggle:OnChanged(function(value)
    MiniHee = value
end)
spawn(function()
        while wait() do
            if MiniHee and World3 then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("Mythological Pirate") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Mythological Pirate" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.Head.CanCollide = false 
                                        MakoriGayMag = true
                                        PosGay = v.HumanoidRootPart.CFrame
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(PosX,PosY,PosZ))
                                        game:GetService("VirtualUser"):CaptureController()
                                        game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                    until not MiniHee or not v.Parent or v.Humanoid.Health <= 0
                                    MakoriGayMag = false
                                end
                            end
                        end
                    else
                    topos(CFrame.new(-13516.0458984375, 469.8182373046875, -6899.16064453125))
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Mythological Pirate") then
                            topos(game:GetService("ReplicatedStorage"):FindFirstChild("Mythological Pirate").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                        else
                            if _G.StardHop then
                                Hop()
                            end
                        end
                    end
                end)
            end
        end
    end)
Blog = Window:AddTab({ Title = "Tab Fruit And Raid", Icon = "apple" })
Toggle = Blog:AddToggle("MyToggle", {Title = "Random Devil Fruit", Default = _G.RandomFruit })
Toggle:OnChanged(function(Value)
    _G.RandomFruit = Value
end)    
spawn(function()
        while wait(.1) do
            if _G.RandomFruit then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cousin","Buy")
            end 
        end
end)
Blog:AddButton({
    Title = "Random Fruit",
    Description = "",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cousin","Buy")
    end
})    
Toggle = Blog:AddToggle("MyToggle", {Title = "Auto Store Fruit", Default = _G.AutoStoreFruit })
Toggle:OnChanged(function(Value)
    _G.AutoStoreFruit = Value
end)    
spawn(function()
    while task.wait() do
        if _G.AutoStoreFruit then
            pcall(function()
                if _G.AutoStoreFruit then
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rocket Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rocket Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Rocket-Rocket",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rocket Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spin Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spin Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Spin-Spin",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spin Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Chop Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Chop Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Chop-Chop",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Chop Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spring Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spring Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Spring-Spring",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spring Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bomb Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bomb Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Bomb-Bomb",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bomb Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Smoke Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Smoke Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Smoke-Smoke",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Smoke Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spike Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spike Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Spike-Spike",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spike Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flame Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flame Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Flame-Flame",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flame Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Falcon Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Falcon Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Falcon-Falcon",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Falcon Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Ice Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Ice Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Ice-Ice",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Ice Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Sand Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Sand Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Sand-Sand",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Sand Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dark Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dark Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Dark-Dark",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dark Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Diamond Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Diamond Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Diamond-Diamond",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Diamond Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Light Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Light Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Light-Light",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Light Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rubber Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rubber Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Rubber-Rubber",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rubber Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Barrier Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Barrier Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Barrier-Barrier",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Barrier Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Ghost Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Ghost Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Ghost-Ghost",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Ghost Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Magma Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Magma Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Magma-Magma",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Magma Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Quake Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Quake Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Quake-Quake",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Quake Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Buddha Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Buddha Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Buddha-Buddha",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Buddha Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Love Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Love Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Love-Love",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Love Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spider Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spider Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Spider-Spider",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spider Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Sound Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Sound Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Sound-Sound",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Sound Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Phoenix Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Phoenix Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Phoenix-Phoenix",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Phoenix Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Portal Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Portal Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Portal-Portal",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Portal Fruit"))
                    end

                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rumble Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rumble Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Rumble-Rumble",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rumble Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Pain Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Pain Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Pain-Pain",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Pain Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Blizzard Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Blizzard Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Blizzard-Blizzard",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Blizzard Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Gravity Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Gravity Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Gravity-Gravity",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Gravity Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Mammoth Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Mammoth Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Mammoth-Mammoth",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Mammoth Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("T-Rex Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("T-Rex Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","T-Rex-T-Rex",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("T-Rex Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dough Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dough Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Dough-Dough",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dough Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Shadow Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Shadow Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Shadow-Shadow",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Shadow Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Venom Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Venom Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Venom-Venom",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Venom Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Control Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Control Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Control-Control",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Control Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spirit Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spirit Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Spirit-Spirit",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spirit Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Dragon-Dragon",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Leopard Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Leopard Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Leopard-Leopard",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Leopard Fruit"))
                        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Kitsune Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Kitsune Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Kitsune-Kitsune",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Kitsune Fruit"))
                    end
                end
                end
            end)
        end
        wait(0.1)
    end
    end)    
FruitList = {
  "Rocket-Rocket",
  "Spin-Spin",
  "Chop-Chop",
  "Spring-Spring",
  "Bomb-Bomb",
  "Smoke-Smoke",
  "Spike-Spike",
  "Flame-Flame",
  "Falcon-Falcon",
  "Ice-Ice",
  "Sand-Sand",
  "Dark-Dark",
  "Diamond-Diamond",
  "Light-Light",
  "Rubber-Rubber",
  "Barrier-Barrier",
  "Ghost-Ghost",
  "Magma-Magma",
  "Quake-Quake",
  "Buddha-Buddha",
  "Love-Love",
  "Spider-Spider",
  "Sound-Sound",
  "Phoenix-Phoenix",
  "Portal-Portal",
  "Rumble-Rumble",
  "Pain-Pain",
  "Blizzard-Blizzard",
  "Gravity-Gravity",
  "Mammoth-Mammoth",
  "T-Rex-T-Rex",
  "Dough-Dough",
  "Shadow-Shadow",
  "Venom-Venom",
  "Control-Control",
  "Spirit-Spirit",
  "Dragon-Dragon",
  "Leopard-Leopard",
  "Kitsune-Kitsune"
 }
Dropdown = Blog:AddDropdown("Dropdown", {
    Title = "Blox Fruit Sniper Shop",
    Values = FruitList,
    Multi = false,
    Default = _G.SelectFruit,
})
Dropdown:SetValue("")
Dropdown:OnChanged(function(Value)
    _G.SelectFruit = Value
end)    
Toggle = Blog:AddToggle("MyToggle", {Title = "Buy Blox Fruit Sniper Shop", Default = _G.AutoBuyFruitSniper })
Toggle:OnChanged(function(Value)
    _G.AutoBuyFruitSniper = Value
end)    
spawn(function()
  pcall(function()
   while wait(.1) do
   if _G.AutoBuyFruitSniper then
   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetFruits")
   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("PurchaseRawFruit",_G.SelectFruit)
   end
   end
   end)
  end)
Blog:AddParagraph({
        Title = "Raids",
        Content = "---------------------"
    })    
if World2 or World3 then 
SelectRaid = Blog:AddDropdown("SelectRaid", {
    Title = "Select Raid",
    Values = GetNameRaid(),
    Multi = false,
    Default = 1,
})
SelectRaid:OnChanged(function(Value)
    SelectRaid = Value
end)
ToggleGetFruit = Blog:AddToggle("ToggleGetFruit", {Title = "Get Fruit In Inventory Low Beli",Description = "", Default = false })
ToggleGetFruit:OnChanged(function(Value)
    _G.Autofruit = Value
    StopTween(_G.Autofruit)
end)
spawn(function()
    while wait(.1) do
        pcall(function()
     if _G.Autofruit then         
local args = {
    [1] = "LoadFruit",
    [2] = "Rocket-Rocket"
}
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
local args = {
    [1] = "LoadFruit",
    [2] = "Spin-Spin"
}
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
local args = {
    [1] = "LoadFruit",
    [2] = "Chop-Chop"
}
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
local args = {
    [1] = "LoadFruit",
    [2] = "Spring-Spring"
}
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
local args = {
    [1] = "LoadFruit",
    [2] = "Bomb-Bomb"
}
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
local args = {
    [1] = "LoadFruit",
    [2] = "Smoke-Smoke"
}
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
local args = {
    [1] = "LoadFruit",
    [2] = "Spike-Spike"
}
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
local args = {
    [1] = "LoadFruit",
    [2] = "Flame-Flame"
}
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
local args = {
    [1] = "LoadFruit",
    [2] = "Falcon-Falcon"
}
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
local args = {
    [1] = "LoadFruit",
    [2] = "Ice-Ice"
}
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
local args = {
    [1] = "LoadFruit",
    [2] = "Sand-Sand"
}
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
local args = {
    [1] = "LoadFruit",
    [2] = "Dark-Dark"
}
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
local args = {
    [1] = "LoadFruit",
    [2] = "Ghost-Ghost"
}
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
local args = {
    [1] = "LoadFruit",
    [2] = "Diamond-Diamond"
}
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
local args = {
    [1] = "LoadFruit",
    [2] = "Light-Light"
}
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
local args = {
    [1] = "LoadFruit",
    [2] = "Rubber-Rubber"
}
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
local args = {
    [1] = "LoadFruit",
    [2] = "Barrier-Barrier"
}
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end
end)
end
end)        
AutoFullyRaid = Blog:AddToggle("AutoFullyRaid", {Title = "Auto Raid", Default = false })
AutoFullyRaid:OnChanged(function(Value)
    _G.Auto_Dungeon = Value
end)
task.spawn(function()
        while task.wait() do
            if _G.Auto_Dungeon then
                if CheckItemBPCRBPCR("Special Microchip") then
                    Start_Raid()
                elseif getNextIsland() and game.Players.LocalPlayer.PlayerGui.Main.Timer.Visible == true then
                    topos(getNextIsland().CFrame * CFrame.new(0,60,0))
                    Kill_Aura()
                else
                    game.ReplicatedStorage.Remotes.CommF_:InvokeServer("RaidsNpc", "Select", SelectRaid)
                end
            end
        end
    end)
end
Toggle = Blog:AddToggle("MyToggle", {Title = "Auto Buy Chip [Private]", Default = false })
Toggle:OnChanged(function(Value)
    _G.BuyChipRaid = Value
end)
spawn(function()
        pcall(function()
            while wait() do
                if _G.BuyChipRaid then
                    if not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Special Microchip") or not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Special Microchip") then
                        if not game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("RaidsNpc", "Select", SelectRaid)
                        end
                    end
                end
            end
        end)
    end)
Toggle = Blog:AddToggle("MyToggle", {Title = "Auto Start Raid [Private]", Default = _G.Auto_StartRaid })
Toggle:OnChanged(function(Value)
    _G.Auto_StartRaid = Value
end)
spawn(function()
        while wait(.1) do
            pcall(function()
                if _G.Auto_StartRaid then
                    if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == false then
                        if not game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Special Microchip") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Special Microchip") then
                            if World2 then
                                fireclickdetector(game:GetService("Workspace").Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector)
                            elseif World3 then
                                fireclickdetector(game:GetService("Workspace").Map["Boat Castle"].RaidSummon2.Button.Main.ClickDetector)
                            end
                        end
                    end
                end
            end)
        end
    end)    
Toggle = Blog:AddToggle("MyToggle", {Title = "Auto Kill Aura [Private]", Default = false })
Toggle:OnChanged(function(Value)
    _G.Kill_Aura = Value
end)
spawn(function()
    while wait() do
        if _G.Kill_Aura then
            for i,v in pairs(game.Workspace.Enemies:GetDescendants()) do
                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                        repeat wait(.1)
                            v.Humanoid.Health = 0
                            v.HumanoidRootPart.CanCollide = false
                            sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                        until not _G.Kill_Aura  or not v.Parent or v.Humanoid.Health <= 0
                end
            end
        end
    end
end)
ToggleNextIsland = Blog:AddToggle("ToggleNextIsland", {Title = "Auto Next Island [Private]", Default = false })
ToggleNextIsland:OnChanged(function(Value)
    _G.Auto_Next_Island = Value
    StopTween(_G.Auto_Next_Island)
end)
spawn(function()
    pcall(function()
        while wait() do
            if _G.Auto_Next_Island then
            local RaidPos = CFrame.new(0,25,0)
                if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == true then
                    if game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5") then
                        topos(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5").CFrame*RaidPos)
                    elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4") then
                        topos(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4").CFrame*RaidPos)
                    elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3") then
                        topos(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3").CFrame*RaidPos)
                    elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2") then
                        topos(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2").CFrame*RaidPos)
                    elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
                        topos(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1").CFrame*RaidPos)
                    end
                end
            end
        end
    end)
end)   
Toggle = Blog:AddToggle("MyToggle", {Title = "Auto Awaken Fruit", Default = false })
Toggle:OnChanged(function(Value)
    _G.Auto_Awakener = Value
end)		
spawn(function()
        pcall(function()
            while wait(.1) do
                if _G.Auto_Awakener then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Awakener","Check")
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Awakener","Awaken")
                end
            end
        end)
    end)
if World2 then
Blog:AddButton({
    Title = "Teleport To Lab",
    Description = "",
    Callback = function()
        topos(CFrame.new(-6438.73535, 250.645355, -4501.50684))
    end
})
end
if World3 then
Blog:AddButton({
    Title = "Teleport To Lab",
    Description = "",
    Callback = function()
        topos(CFrame.new(-5017.40869, 314.844055, -2823.0127, -0.925743818, 4.48217499e-08, -0.378151238, 4.55503146e-09, 1, 1.07377559e-07, 0.378151238, 9.7681621e-08, -0.925743818))
    end
})
end    
Sea = Window:AddTab({ Title = "Tab Sea Event", Icon = "rbxassetid://10709783577" })		    
SpeedBoatToggle = Sea:AddToggle("SpeedBoat_Toggle", {Title = "Ship Speed Modifier",Description = "", Default = false })
SpeedBoatToggle:OnChanged(function(value)
	_G.SpeedBoat = value
end)
game:GetService("RunService").RenderStepped:Connect(function()
    if _G.SpeedBoat then
        for i, v in pairs(game:GetService("Workspace").Boats:GetChildren()) do
            if game:GetService("Players").LocalPlayer.Character.Humanoid.Sit then
                v:FindFirstChild("VehicleSeat").MaxSpeed = SetSpeedBoat
            end
        end
    end
end)
SetSpeedBoatSlider = Sea:AddSlider("SliderSpeedBoat", {
	Title = "Ship Speed",
	Description = "",
	Default = 300,
	Min = 0,
	Max = 1000,
	Rounding = 1,
	Callback = function(value)
    SetSpeedBoat = value
	end
})
SetSpeedBoatSlider:OnChanged(function(value)
	SetSpeedBoat = value
end)
SetSpeedBoatSlider:SetValue(300)    
ListSeaZone = {
  "Zone 1",
  "Zone 2",
  "Zone 3",
  "Zone 4",
  "Zone 5",
  "Zone 6"
}
zoneselect = Sea:AddDropdown("zoneselect", {
	Title = "Select Zone",
	Values = ListSeaZone,
	Multi = false,
	Default = _G.SelectedZone,
})
zoneselect:OnChanged(function(value)
	_G.SelectedZone = value
end)
ListSeaBoat = {
  "Guardian",
  "PirateGrandBrigade",
  "MarineGrandBrigade",
  "PirateBrigade",
  "MarineBrigade",
  "PirateSloop",
  "MarineSloop",
  "BeastHunter",
}
selectthuyen = Sea:AddDropdown("selectthuyen", {
	Title = "Select Boat",
	Values = ListSeaBoat,
	Multi = false,
	Default = _G.SelectedBoat,
})
selectthuyen:OnChanged(function(value)
	_G.SelectedBoat = value
end)
boattween = Sea:AddDropdown("boattween", {
    Title = "Speed Tween Boat",
    Values = {"180", "200", "250", "300", "325", "350"},
    Multi = false,
    Default = 300,
})
boattween:OnChanged(function(Value)
    getgenv().SpeedBoat = Value
end)
spawn(function()
        pcall(function()
            while wait() do
                if _G.SelectedZone == "Zone 1" then
                    CFrameSelectedZone = CFrame.new(-21998.375, 30.0006084, -682.309143, 0.120013528, 0.00690158736, 0.99274826, -0.0574118942, 0.998350561, -2.36509201e-10, -0.991110802, -0.0569955558, 0.120211802)
                elseif _G.SelectedZone == "Zone 2" then
                    CFrameSelectedZone = CFrame.new(-26779.5215, 30.0005474, -822.858032, 0.307457417, 0.019647358, 0.951358974, -0.0637726262, 0.997964442, -4.15334017e-10, -0.949422479, -0.0606706589, 0.308084518)
                elseif _G.SelectedZone == "Zone 3" then
                    CFrameSelectedZone = CFrame.new(-31171.957, 30.0001011, -2256.93774, 0.37637493, 0.0150483791, 0.926345229, -0.0399504974, 0.999201655, 2.70896673e-11, -0.925605655, -0.0370079502, 0.376675636)
                elseif _G.SelectedZone == "Zone 4" then
                    CFrameSelectedZone = CFrame.new(-34054.6875, 30.2187767, -2560.12012, 0.0935864747, -0.00122954219, 0.995610416, 0.0624034069, 0.998040259, -0.00463332096, -0.993653536, 0.062563099, 0.0934797972)
                elseif _G.SelectedZone == "Zone 5" then
                    CFrameSelectedZone = CFrame.new(-38887.5547, 30.0004578, -2162.99023, -0.188895494, -0.00704088295, 0.981971979, -0.0372481011, 0.999306023, -1.39882339e-09, -0.981290519, -0.0365765914, -0.189026669)
                elseif _G.SelectedZone == "Zone 6" then
                    CFrameSelectedZone = CFrame.new(-44541.7617, 30.0003204, -1244.8584, -0.0844199061, -0.00553312758, 0.9964149, -0.0654025897, 0.997858942, 2.02319411e-10, -0.99428153, -0.0651681125, -0.0846010372)
                end
            end
        end)
    end)
startseaevent = Sea:AddToggle("startseaevent", {Title = "Auto Sea Event",Description = "", Default = _G.SailBoat })
startseaevent:OnChanged(function(state)
    _G.SailBoat = state
    StopTween(_G.SailBoat)
end)
function CheckBoat()
    for i, v in pairs(game:GetService("Workspace").Boats:GetChildren()) do
        if v.Name == _G.SelectedBoat then
            for _, child in pairs(v:GetChildren()) do
                if child.Name == "MyBoatEsp" then
                    return v
                end
            end
        end
    end
    return false
end
function CheckEnemiesBoat()
    if (game:GetService("Workspace").Enemies:FindFirstChild("FishBoat") or game:GetService("Workspace").Enemies:FindFirstChild("PirateBrigade") or game:GetService("Workspace").Enemies:FindFirstChild("PirateGrandBrigade")) then
        return true
    end
    return false
end
function CheckShark()
    for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
        if v.Name == "Shark" and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
            if game:GetService("Workspace").Enemies:FindFirstChild("Shark") then
                if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 200 then
                    return true
                end
            end
        end
    end
    return false
end
function CheckPiranha()
    for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
        if v.Name == "Piranha" and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
            if game:GetService("Workspace").Enemies:FindFirstChild("Piranha") then
                if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 200 then
                    return true
                end
            end
        end
    end
    return false
end
function AddEsp(Name, Parent)
    BillboardGui = Instance.new("BillboardGui")
    TextLabel = Instance.new("TextLabel")
    BillboardGui.Parent = Parent
    BillboardGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    BillboardGui.Active = true
    BillboardGui.Name = Name
    BillboardGui.AlwaysOnTop = true
    BillboardGui.LightInfluence = 1.000
    BillboardGui.Size = UDim2.new(0, 200, 0, 50)
    BillboardGui.StudsOffset = Vector3.new(0, 2.5, 0)
    TextLabel.Parent = BillboardGui
    TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel.BackgroundTransparency = 1.000
    TextLabel.Size = UDim2.new(1, 0, 1, 0)
    TextLabel.Font = Enum.Font.GothamBold
    TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel.TextSize = 15
    TextLabel.Text = "YOUR BOAT IS HERE↓"
end
spawn(function()
        while wait() do
            pcall(function()
                if _G.SailBoat then
                        if not CheckBoat() then
                            BuyBoatCFrame = CFrame.new(-16927.451171875, 9.0863618850708, 433.8642883300781)
                            if (BuyBoatCFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 1000 then
                                BTP(BuyBoatCFrame)
                            else
                                buyb = topos(BuyBoatCFrame)
                            end
                            if (CFrame.new(-16927.451171875, 9.0863618850708, 433.8642883300781).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
                                if buyb then buyb:Stop() end
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBoat", _G.SelectedBoat)
                                for i, v in pairs(game:GetService("Workspace").Boats:GetChildren()) do
                                    if v.Name == _G.SelectedBoat then
                                        if (v.VehicleSeat.CFrame.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 100 then
                                            AddEsp('MyBoatEsp', v)
                                        end
                                    end
                                end
                            end
                        elseif CheckBoat() then
                            for i,v in pairs(game:GetService("Workspace").Boats:GetChildren()) do
                                if v.Name == _G.SelectedBoat then
                                    if v:FindFirstChild("MyBoatEsp") then
                                    if game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit == false then
                                        if ((CheckShark() and _G.AutoKillShark) or (game:GetService("Workspace").Enemies:FindFirstChild("Terrorshark") and _G.AutoTerrorshark) or (CheckPiranha() and _G.AutoKillPiranha) or (game:GetService("Workspace").Enemies:FindFirstChild("Fish Crew Member") and _G.AutoKillFishCrew) or (game:GetService("Workspace").Enemies:FindFirstChild("FishBoat") and _G.RelzFishBoat) or (game:GetService("Workspace").Enemies:FindFirstChild("PirateBrigade") and _G.RelzPirateBrigade) or (game:GetService("Workspace").Enemies:FindFirstChild("PirateGrandBrigade") and _G.RelzPirateGrandBrigade) or (CheckSeaBeast() and _G.AutoSeaBest)) then
                                            if stoppos then stoppos:Stop() end
                                        else
                                            stoppos = topos(v.VehicleSeat.CFrame * CFrame.new(0,1,0))
                                        end
                                    else
                                        repeat wait()
                                            stopboat = TPB(CFrameSelectedZone, v.VehicleSeat)
                                        until ((CheckShark() and _G.AutoKillShark) or (game:GetService("Workspace").Enemies:FindFirstChild("Terrorshark") and _G.AutoTerrorshark) or (CheckPiranha() and _G.AutoKillPiranha) or (game:GetService("Workspace").Enemies:FindFirstChild("Fish Crew Member") and _G.AutoKillFishCrew) or (game:GetService("Workspace").Enemies:FindFirstChild("FishBoat") and _G.RelzFishBoat) or (game:GetService("Workspace").Enemies:FindFirstChild("PirateBrigade") and _G.RelzPirateBrigade) or (game:GetService("Workspace").Enemies:FindFirstChild("PirateGrandBrigade") and _G.RelzPirateGrandBrigade) or (CheckSeaBeast() and _G.AutoSeaBest)) or game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit == false or _G.SailBoat == false
                                        if stopboat then stopboat:Stop() end
                                        game:GetService("VirtualInputManager"):SendKeyEvent(true, 32, false, game)
                                        wait(0.1)
                                        game:GetService("VirtualInputManager"):SendKeyEvent(false, 32, false, game)
                                    end
                                    end
                                end
                            end
                        end
                end
            end)
        end
    end)
spawn(function()
    pcall(function()
        while wait() do
            if _G.SailBoat then
                if ((CheckShark() and _G.AutoKillShark) or (game:GetService("Workspace").Enemies:FindFirstChild("Terrorshark") and _G.AutoTerrorshark) or (CheckPiranha() and _G.AutoKillPiranha) or (game:GetService("Workspace").Enemies:FindFirstChild("Fish Crew Member") and _G.AutoKillFishCrew) or (game:GetService("Workspace").Enemies:FindFirstChild("FishBoat") and _G.RelzFishBoat) or (game:GetService("Workspace").Enemies:FindFirstChild("PirateBrigade") and _G.RelzPirateBrigade) or (game:GetService("Workspace").Enemies:FindFirstChild("PirateGrandBrigade") and _G.RelzPirateGrandBrigade) or (CheckSeaBeast() and _G.AutoSeaBest)) then
                    if game.Players.LocalPlayer.Character.Humanoid.Sit == true then
                        game:GetService("VirtualInputManager"):SendKeyEvent(true, 32, false, game)
                        wait(0.1)
                        game:GetService("VirtualInputManager"):SendKeyEvent(false, 32, false, game)
                    end
                end
            end
        end
    end)
end)
spawn(function()
        while wait() do
            pcall(function()
                if _G.SailBoat then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Fish Crew Member") and _G.AutoKillFishCrew then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if game:GetService("Workspace").Enemies:FindFirstChild("Fish Crew Member") then
                                if v.Name == "Fish Crew Member" then
                                    if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        topos(v.HumanoidRootPart.CFrame * Pos)
                                        _G.SeaSkill = false
                                    until not _G.AutoKillFishCrew or not v.Parent or v.Humanoid.Health <= 0
                                    StartBring = false
                                    end
                                end
                            end
                        end
                    elseif game:GetService("Workspace").Enemies:FindFirstChild("FishBoat") and _G.RelzFishBoat then
                        for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if game:GetService("Workspace").Enemies:FindFirstChild("FishBoat") then
                                repeat task.wait()
                                    BoatCFrame = v.Engine.CFrame
                                    if (BoatCFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 50 then
                                        _G.SeaSkill = true
                                    else
                                        _G.SeaSkill = false
                                    end
                                    topos(BoatCFrame)
                                    Skillaimbot = true
                                    AimSkill = v.Engine.CFrame * CFrame.new(0, -15, 0)
                                    AimBotSkillPosition = AimSkill.Position
                                until not v.Parent or v.Health < 0 or not game:GetService("Workspace").Enemies:FindFirstChild("FishBoat") or not v:FindFirstChild("Engine") or not _G.RelzFishBoat
                                Skillaimbot = false
                                _G.SeaSkill = false
                            end
                        end
                        
                    elseif game:GetService("Workspace").Enemies:FindFirstChild("PirateGrandBrigade") and _G.RelzPirateGrandBrigade then
                        for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if game:GetService("Workspace").Enemies:FindFirstChild("PirateGrandBrigade") then
                                repeat task.wait()
                                    BoatCFrame = v.Engine.CFrame
                                    if (BoatCFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 50 then
                                        _G.SeaSkill = true
                                    else
                                        _G.SeaSkill = false
                                    end
                                    topos(BoatCFrame)
                                    Skillaimbot = true
                                    AimSkill = v.Engine.CFrame * CFrame.new(0, -15, 0)
                                    AimBotSkillPosition = AimSkill.Position
                                until not v.Parent or v.Health.Value < 0 or not game:GetService("Workspace").Enemies:FindFirstChild("PirateGrandBrigade") or not v:FindFirstChild("Engine") or not _G.RelzPirateGrandBrigade
                                Skillaimbot = false
                                _G.SeaSkill = false
                            end
                        end
                    elseif game:GetService("Workspace").Enemies:FindFirstChild("PirateBrigade") and _G.RelzPirateBrigade then
                        for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if game:GetService("Workspace").Enemies:FindFirstChild("PirateBrigade") then
                                repeat task.wait()
                                    BoatCFrame = v.Engine.CFrame
                                    if (BoatCFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 50 then
                                        _G.SeaSkill = true
                                    else
                                        _G.SeaSkill = false
                                    end
                                    topos(BoatCFrame)
                                    Skillaimbot = true
                                    AimSkill = v.Engine.CFrame * CFrame.new(0, -15, 0)
                                    AimBotSkillPosition = AimSkill.Position
                                until not v.Parent or v.Health.Value < 0 or not game:GetService("Workspace").Enemies:FindFirstChild("PirateBrigade") or not v:FindFirstChild("Engine") or not _G.RelzPirateBrigade
                                Skillaimbot = false
                                _G.SeaSkill = false
                            end
                        end
                    elseif CheckSeaBeast() and _G.AutoSeaBest then
                        if game:GetService("Workspace"):FindFirstChild("SeaBeasts") then
                            for i,v in pairs(game:GetService("Workspace").SeaBeasts:GetChildren()) do
                                if CheckSeaBeast() then
                                repeat wait()
                                    CFrameSeaBeast = v.HumanoidRootPart.CFrame * CFrame.new(0,200,0)
                                    if (CFrameSeaBeast.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Position).Magnitude <= 200 then
                                        _G.SeaSkill = true
                                    else
                                        _G.SeaSkill = false
                                    end
                                    Skillaimbot = true
                                    AimBotSkillPosition = v.HumanoidRootPart.CFrame.Position
                                    topos(CFrameSeaBeast * Pos)
                                until not _G.AutoSeaBest or CheckSeaBeast() == false or not v:FindFirstChild("Humanoid") or not v:FindFirstChild("HumanoidRootPart") or v.Humanoid.Health < 0 or not v.Parent
                                Skillaimbot = false
                                _G.SeaSkill = false
                                else
                                Skillaimbot = false
                                _G.SeaSkill = false
                                end
                            end
                        end
                    elseif game:GetService("Workspace").Enemies:FindFirstChild("Terrorshark") and _G.AutoTerrorshark then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if game:GetService("Workspace").Enemies:FindFirstChild("Terrorshark") then
                                if v.Name == "Terrorshark" then
                                    if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                        repeat task.wait(0.15)
                                            AutoHaki()
                                            EquipWeapon(_G.SelectWeapon)
                                            _G.SeaSkill = false
                                            topos(v.HumanoidRootPart.CFrame * CFrame.new(0, 60, 0))
                                        until not  _G.AutoTerrorshark or not v.Parent or v.Humanoid.Health <= 0
                                    end
                                end
                            end
                        end
                    elseif CheckPiranha() and _G.AutoKillPiranha then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if game:GetService("Workspace").Enemies:FindFirstChild("Piranha") then
                                if v.Name == "Piranha" then
                                    if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        topos(v.HumanoidRootPart.CFrame * Pos)
                                        _G.SeaSkill = false
                                    until not _G.AutoKillPiranha or not v.Parent or v.Humanoid.Health <= 0
                                    end
                                end
                            end
                        end
                    elseif CheckShark() and _G.AutoKillShark then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if game:GetService("Workspace").Enemies:FindFirstChild("Shark") then
                                if v.Name == "Shark" then
                                    if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        topos(v.HumanoidRootPart.CFrame * Pos)
                                        _G.SeaSkill = false
                                    until not _G.AutoKillShark or not v.Parent or v.Humanoid.Health <= 0
                                    end
                                end
                            end
                        end
                    else
                        Skillaimbot = false
                        _G.SeaSkill = false
                        UnEquipWeapon(_G.SelectWeapon)
                    end
                end
            end)
        end
    end)
spawn(function()
        while wait() do
            pcall(function()
                if _G.SailBoat then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Fish Crew Member") and _G.AutoKillFishCrew then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if game:GetService("Workspace").Enemies:FindFirstChild("Fish Crew Member") then
                                if v.Name == "Fish Crew Member" then
                                    if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        topos(v.HumanoidRootPart.CFrame * Pos)
                                        _G.SeaSkill = false
                                    until not _G.AutoKillFishCrew or not v.Parent or v.Humanoid.Health <= 0
                                    StartMagnet = false
                                    end
                                end
                            end
                        end
                    elseif game:GetService("Workspace").Enemies:FindFirstChild("FishBoat") and _G.RelzFishBoat then
                        for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if game:GetService("Workspace").Enemies:FindFirstChild("FishBoat") then
                                repeat task.wait()
                                    BoatCFrame = v.Engine.CFrame
                                    if (BoatCFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 50 then
                                        _G.SeaSkill = true
                                    else
                                        _G.SeaSkill = false
                                    end
                                    topos(BoatCFrame)
                                    Skillaimbot = true
                                    AimSkill = v.Engine.CFrame * CFrame.new(0, -15, 0)
                                    AimBotSkillPosition = AimSkill.Position
                                until not v.Parent or v.Health < 0 or not game:GetService("Workspace").Enemies:FindFirstChild("FishBoat") or not v:FindFirstChild("Engine") or not _G.RelzFishBoat
                                Skillaimbot = false
                                _G.SeaSkill = false
                            end
                        end
                    elseif game:GetService("Workspace").Enemies:FindFirstChild("PirateGrandBrigade") and _G.RelzPirateGrandBrigade then
                        for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if game:GetService("Workspace").Enemies:FindFirstChild("PirateGrandBrigade") then
                                repeat task.wait()
                                    BoatCFrame = v.Engine.CFrame
                                    if (BoatCFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 50 then
                                        _G.SeaSkill = true
                                    else
                                        _G.SeaSkill = false
                                    end
                                    topos(BoatCFrame)
                                    Skillaimbot = true
                                    AimSkill = v.Engine.CFrame * CFrame.new(0, -15, 0)
                                    AimBotSkillPosition = AimSkill.Position
                                until not v.Parent or v.Health.Value < 0 or not game:GetService("Workspace").Enemies:FindFirstChild("PirateGrandBrigade") or not v:FindFirstChild("Engine") or not _G.RelzPirateGrandBrigade
                                Skillaimbot = false
                                _G.SeaSkill = false
                            end
                        end
                    elseif game:GetService("Workspace").Enemies:FindFirstChild("PirateBrigade") and _G.RelzPirateBrigade then
                        for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if game:GetService("Workspace").Enemies:FindFirstChild("PirateBrigade") then
                                repeat task.wait()
                                    BoatCFrame = v.Engine.CFrame
                                    if (BoatCFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 50 then
                                        _G.SeaSkill = true
                                    else
                                        _G.SeaSkill = false
                                    end
                                    topos(BoatCFrame)
                                    Skillaimbot = true
                                    AimSkill = v.Engine.CFrame * CFrame.new(0, -15, 0)
                                    AimBotSkillPosition = AimSkill.Position
                                until not v.Parent or v.Health.Value < 0 or not game:GetService("Workspace").Enemies:FindFirstChild("PirateBrigade") or not v:FindFirstChild("Engine") or not _G.RelzPirateBrigade
                                Skillaimbot = false
                                _G.SeaSkill = false
                            end
                        end
                    elseif CheckSeaBeast() and _G.AutoSeaBest then
                        if game:GetService("Workspace"):FindFirstChild("SeaBeasts") then
                            for i,v in pairs(game:GetService("Workspace").SeaBeasts:GetChildren()) do
                                if CheckSeaBeast() then
                                repeat wait()
                                    CFrameSeaBeast = v.HumanoidRootPart.CFrame * CFrame.new(0,200,0)
                                    if (CFrameSeaBeast.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Position).Magnitude <= 200 then
                                        _G.SeaSkill = true
                                    else
                                        _G.SeaSkill = false
                                    end
                                    Skillaimbot = true
                                    AimBotSkillPosition = v.HumanoidRootPart.CFrame.Position
                                    topos(CFrameSeaBeast * Pos)
                                until not _G.AutoSeaBest or CheckSeaBeast() == false or not v:FindFirstChild("Humanoid") or not v:FindFirstChild("HumanoidRootPart") or v.Humanoid.Health < 0 or not v.Parent
                                Skillaimbot = false
                                _G.SeaSkill = false
                                else
                                Skillaimbot = false
                                _G.SeaSkill = false
                                end
                            end
                        end
                    elseif game:GetService("Workspace").Enemies:FindFirstChild("Terrorshark") and _G.AutoTerrorshark then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if game:GetService("Workspace").Enemies:FindFirstChild("Terrorshark") then
                                if v.Name == "Terrorshark" then
                                    if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                        repeat task.wait(0.15)
                                            AutoHaki()
                                            EquipWeapon(_G.SelectWeapon)
                                            _G.SeaSkill = false
                                            topos(v.HumanoidRootPart.CFrame * CFrame.new(0, 60, 0))
                                        until not  _G.AutoTerrorshark or not v.Parent or v.Humanoid.Health <= 0
                                    end
                                end
                            end
                        end
                    elseif CheckPiranha() and _G.AutoKillPiranha then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if game:GetService("Workspace").Enemies:FindFirstChild("Piranha") then
                                if v.Name == "Piranha" then
                                    if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        topos(v.HumanoidRootPart.CFrame * Pos)
                                        _G.SeaSkill = false
                                    until not _G.AutoKillPiranha or not v.Parent or v.Humanoid.Health <= 0
                                    end
                                end
                            end
                        end
                    elseif CheckShark() and _G.AutoKillShark then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if game:GetService("Workspace").Enemies:FindFirstChild("Shark") then
                                if v.Name == "Shark" then
                                    if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        topos(v.HumanoidRootPart.CFrame * Pos)
                                        _G.SeaSkill = false
                                    until not _G.AutoKillShark or not v.Parent or v.Humanoid.Health <= 0
                                    end
                                end
                            end
                        end
                    else
                        Skillaimbot = false
                        _G.SeaSkill = false
                        UnEquipWeapon(_G.SelectWeapon)
                    end
                end
            end)
        end
    end)
toggleshark = Sea:AddToggle("toggleshark", {Title = "Auto Shark",Description = "", Default = _G.AutoKillShark })
toggleshark:OnChanged(function(value)
   _G.AutoKillShark = value
   StopTween(_G.AutoKillShark)
end)
piranhatoggle = Sea:AddToggle("piranhatoggle", {Title = "Auto Piranha",Description = "", Default = _G.AutoKillPiranha })
piranhatoggle:OnChanged(function(value)
    _G.AutoKillPiranha = value
    StopTween(_G.AutoKillPiranha)
end)
fishcrew = Sea:AddToggle("fishcrew", {Title = "Auto Fish Crew",Description = "", Default = _G.AutoKillFishCrew })
fishcrew:OnChanged(function(value)
    _G.AutoKillFishCrew = value
    StopTween(_G.AutoKillFishCrew)
end)
spawn(function()
         while wait() do
             pcall(function()
                 if _G.AutoKillShark and  World3 then
                     for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                         if v.Name == "Shark" then
                             if (v.HumanoidRootPart.CFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Position).Magnitude <= 500 then
                             if game:GetService("Workspace").Enemies:FindFirstChild(v.Name) then
                             if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                 repeat task.wait()
                                     AutoHaki()
                                     EquipWeapon(_G.SelectWeapon)
                                     v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                     v.HumanoidRootPart.CanCollide = false
                                     topos(v.HumanoidRootPart.CFrame * Pos)
                                    -- sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                                 until not _G.AutoKillShark or not v.Parent or v.Humanoid.Health <= 0
                             end
                             end
                             end
                         end
                     end
                 end
             end)
         end
     end)         
spawn(function()
         while wait() do
             pcall(function()
                 if _G.AutoKillPiranha and World3 then
                     for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                         if v.Name == "Piranha" then
                             if (v.HumanoidRootPart.CFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Position).Magnitude <= 500 then
                             if game:GetService("Workspace").Enemies:FindFirstChild(v.Name) then
                             if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                 repeat task.wait()         
                                     AutoHaki()
                                     EquipWeapon(_G.SelectWeapon)
                                     v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                     v.HumanoidRootPart.CanCollide = false
                                     topos(v.HumanoidRootPart.CFrame * Pos)
                                 until not _G.AutoKillPiranha or not v.Parent or v.Humanoid.Health <= 0
                             end
                             end
                             end
                         end
                     end
                 end
             end)
         end
     end)     
spawn(function()
         while wait() do
             pcall(function()
                 if _G.AutoKillFishCrew and  World3 then
                     for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                         if v.Name == "Fish Crew Member" then
                             if (v.HumanoidRootPart.CFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Position).Magnitude <= 500 then
                             if game:GetService("Workspace").Enemies:FindFirstChild(v.Name) then
                             if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                 repeat task.wait()
                                     AutoHaki()
                                     EquipWeapon(_G.SelectWeapon)
                                     v.HumanoidRootPart.CanCollide = false
                                     v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                     topos(v.HumanoidRootPart.CFrame * Pos)
                                     MonFarm = v.Name
                                     PosMon = v.HumanoidRootPart.CFrame
                                 until not _G.AutoKillFishCrew or not v.Parent or v.Humanoid.Health <= 0
                             end
                             end
                             end
                         end
                     end
                 end
             end)
         end
     end)         
spawn(function()
         while wait() do
             if  _G.AutoTerrorshark and World3 then
                 pcall(function()
                     if game:GetService("Workspace").Enemies:FindFirstChild("Terrorshark") then
                         for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                             if v.Name == "Terrorshark" then
                                 if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                     repeat task.wait()
                                         AutoHaki()
                                         EquipWeapon(_G.SelectWeapon)
                                         v.HumanoidRootPart.CanCollide = false
                                         v.Humanoid.WalkSpeed = 0
                                         v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                                         if game.Players.LocalPlayer.Character.Humanoid.Health < 2000 then
                                             fastpos(v.HumanoidRootPart.CFrame * CFrame.new(0, 300, 0))
                                             wait(1)
                                         else
                                             topos(v.HumanoidRootPart.CFrame * CFrame.new(0, 55, 0))
                                         end
                                         TerrorSharkpos = v.HumanoidRootPart.CFrame
                                     until not  _G.AutoTerrorshark or not v.Parent or v.Humanoid.Health <= 0
                                 end
                             end
                         end
                     end
                 end)
             end
         end
     end)     
spawn(function()
         while wait() do
             pcall(function()
                 if _G.AutoTerrorshark then
                     if (game:GetService("Workspace").Enemies["Terrorshark"].HumanoidRootPart.CFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Position).Magnitude <= 150 then
                         repeat wait()
                         until not _G.AutoTerrorshark
                     end
                 end
             end)
         end
     end)     
function UpDownPos(pos)
        fastpos(pos * CFrame.new(0, 40, 0))
        wait(1)
        fastpos(pos * CFrame.new(0, 300, 0))
        wait(2)
    end    
ghostship = Sea:AddToggle("ghostship", {
    Title = "Auto Ghost Ship",
    Description = "",
    Default = _G.RelzFishBoat
})
ghostship:OnChanged(function(value)
    _G.RelzFishBoat = value
    StopTween(_G.RelzFishBoat)
    if not _G.RelzFishBoat then
        _G.SeaSkill = false
        Skillaimbot = false
    end
end)
piratebrigade = Sea:AddToggle("piratebrigade", {
    Title = "Auto Pirate Brigade",
    Description = "",
    Default = _G.RelzPirateBrigade
})
piratebrigade:OnChanged(function(value)
    _G.RelzPirateBrigade = value
    StopTween(_G.RelzPirateBrigade)
end)
grand = Sea:AddToggle("grand", {
    Title = "Auto Pirate Grand Brigade",
    Description = "",
    Default = _G.RelzPirateGrandBrigade
})
grand:OnChanged(function(value)
    _G.RelzPirateGrandBrigade = value
    StopTween(_G.RelzPirateGrandBrigade)
end)
spawn(function()
             while wait() do
                 pcall(function()
                         if _G.RelzFishBoat then
                             for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                             if game:GetService("Workspace").Enemies:FindFirstChild("FishBoat") then
                                 repeat task.wait()
                                     CFrameFishBoat = v.Engine.CFrame * CFrame.new(0, 10, 0)
                                     if (v.Engine.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 50 then
                                         _G.SeaSkill = true
                                     else
                                         _G.SeaSkill = false
                                     end
                                     topos(CFrameFishBoat)
                                     Skillaimbot = true
                                     AimBotSkillPosition = v.Engine.Position
                                 until not v.Parent or v.Health.Value < 0 or not game:GetService("Workspace").Enemies:FindFirstChild("FishBoat") or not v:FindFirstChild("Engine") or not _G.RelzFishBoat
                                 Skillaimbot = false
                                 _G.SeaSkill = false
                             end
                         end
                     end
                 end)
             end
         end)     
terrror = Sea:AddToggle("terrror", {
    Title = "Auto Terror Shark",
    Description = "",
    Default = _G.AutoTerrorshark
})
terrror:OnChanged(function(value)
    _G.AutoTerrorshark = value
    StopTween(_G.AutoTerrorshark)
end)
seabitch = Sea:AddToggle("seabitch", {
    Title = "Auto Sea Beast",
    Description = "",
    Default = _G.AutoSeaBest
})
seabitch:OnChanged(function(value)
    _G.AutoSeaBest = value
    StopTween(_G.AutoSeaBest)
    if not _G.AutoSeaBest then
        _G.SeaSkill = false
        Skillaimbot = false
    end
end)
function CheckSeaBeast()
        if game:GetService("Workspace"):FindFirstChild("SeaBeasts") then
            for i,v in pairs(game:GetService("Workspace").SeaBeasts:GetChildren()) do
                if v:FindFirstChild("Humanoid") or v:FindFirstChild("HumanoidRootPart") or v.Humanoid.Health < 0 then
                    return true
                end
            end
        end
        return false
    end
spawn(function()
             while wait() do
                 if _G.AutoSeaBest then
                         pcall(function()
                         if game:GetService("Workspace"):FindFirstChild("SeaBeasts") then
                             for i,v in pairs(game:GetService("Workspace").SeaBeasts:GetChildren()) do
                                 if CheckSeaBeast() then
                                 repeat wait()
                                     CFrameSeaBeast = v.HumanoidRootPart.CFrame * CFrame.new(0,400,0)
                                     if (CFrameSeaBeast.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Position).Magnitude <= 50 then
                                         _G.SeaSkill = true
                                     else
                                         _G.SeaSkill = false
                                     end
                                     Skillaimbot = true
                                     AimBotSkillPosition = v.HumanoidRootPart.CFrame.Position
                                     topos(CFrameSeaBeast)
                                 until not _G.AutoSeaBest or not v:FindFirstChild("Humanoid") or not v:FindFirstChild("HumanoidRootPart") or v.Humanoid.Health < 0 or not v.Parent
                                 Skillaimbot = false
                                 _G.SeaSkill = false
                                 end
                             end
                         end
                         end)
                     end
                 end
             end)
            DoneSkillGun = false
            DoneSkillSword = false
            DoneSkillFruit = false
            DoneSkillMelee = false
            spawn(function()
                while wait() do
                    pcall(function()
                        if _G.SeaSkill then
                            if _G.UseSeaFruitSkill and DoneSkillFruit == false then
                                for _, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                                    if v:IsA("Tool") then
                                        if v.ToolTip == "Blox Fruit" then
                                            game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
                                        end
                                    end
                                end
                            if _G.SkillFruitZ then
                                game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
                                wait(_G.SeaHoldSKillZ)
                                game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
                            end          
                            if _G.SkillFruitX then
                            game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
                            wait(_G.SeaHoldSKillX)
                            game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
                            end                         
                            if _G.SkillFruitC then
                            game:service('VirtualInputManager'):SendKeyEvent(true, "C", false, game)
                            wait(_G.SeaHoldSKillC)
                            game:service('VirtualInputManager'):SendKeyEvent(false, "C", false, game)
                            end          
                            if _G.SkillFruitV then
                            game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
                            wait(_G.SeaHoldSKillV)
                            game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
                            end         
                            if _G.SkillFruitF then
                            game:service('VirtualInputManager'):SendKeyEvent(true, "F", false, game)
                            wait(_G.SeaHoldSKillF)
                            game:service('VirtualInputManager'):SendKeyEvent(false, "F", false, game)
                            end
                            DoneSkillFruit = true
                            end            
                            if _G.UseSeaMeleeSkill and DoneSkillMelee == false then 
                                for _, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                                    if v:IsA("Tool") then
                                        if v.ToolTip == "Melee" then
                                            game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
                                        end
                                    end
                                end
                                if _G.SkillMeleeZ then
                                game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
                                wait(0)
                                game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
                                end               
                                if _G.SkillMeleeX then
                                game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
                                wait(0)
                                game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
                                end                              
                                if _G.SkillMeleeC then
                                game:service('VirtualInputManager'):SendKeyEvent(true, "C", false, game)
                                wait(0)
                                game:service('VirtualInputManager'):SendKeyEvent(false, "C", false, game)
                                end                
                                if _G.SkillMeleeV then
                                game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
                                wait(0)
                                game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
                                end

                                DoneSkillMelee = true
                            end
                            if _G.UseSeaSwordSkill and DoneSkillSword == false then 
                                for _, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                                    if v:IsA("Tool") then
                                        if v.ToolTip == "Sword" then
                                            game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
                                        end
                                    end
                                end
                                if _G.SkillSwordZ then
                                game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
                                wait(0)
                                game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
                                end                
                                if _G.SkillSwordX then
                                game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
                                wait(0)
                                game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
                                end

                                DoneSkillSword = true
                            end
                            if _G.UseSeaGunSkill and DoneSkillGun == false then 
                                for _, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                                    if v:IsA("Tool") then
                                        if v.ToolTip == "Gun" then
                                            game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
                                        end
                                    end
                                end
                                if _G.SkillGunZ then
                                game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
                                wait(.1)
                                game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
                                end
                
                                if _G.SkillGunX then
                                game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
                                wait(.1)
                                game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
                                end

                                DoneSkillGun = true
                            end           
                            DoneSkillGun = false
                            DoneSkillSword = false
                            DoneSkillFruit = false
                            DoneSkillMelee = false
                        end
                    end)
                end
            end)         
Sea:AddParagraph({
        Title = "Kitsune Event",
        Content = "---------------------"
    })    
ToggleTPKitsune = Sea:AddToggle("ToggleTPKitsune", {Title = "Teleport To Kitsune Island",Description = "", Default = _G.TweenToKitsune })
ToggleTPKitsune:OnChanged(function(value)
    _G.TweenToKitsune = value
    StopTween(_G.TweenToKitsune)
end)
spawn(function()
            while wait() do
                if _G.TweenToKitsune then
                    if game:GetService("Workspace").Map:FindFirstChild("KitsuneIsland") then
                        topos(game.Workspace.Map.KitsuneIsland.ShrineActive.NeonShrinePart.CFrame * CFrame.new(0,0,10))
                    end
                end
            end
        end)    
ToggleCollectAzure = Sea:AddToggle("ToggleCollectAzure", {Title = "Auto Collect Azure Wisp",Description = "", Default = _G.CollectAzure })
ToggleCollectAzure:OnChanged(function(value)
    _G.CollectAzure = value
    StopTween(_G.CollectAzure)
end)
spawn(function()
    while wait() do
        if _G.CollectAzure then
            pcall(function()
                if game:GetService("Workspace"):FindFirstChild("AttachedAzureEmber") then
                    fastpos(game:GetService("Workspace"):WaitForChild("EmberTemplate"):FindFirstChild("Part").CFrame)
                end
            end)
        end
    end
end)        
Hold = {
  "10",
  "15",
  "20",
  "25"
}
SetTradeAzure = Sea:AddDropdown("SetTradeAzure", {
      Title = "Set Azure Ember",
      Values = Hold,
      Multi = false,
      Default = 20,
})
SetTradeAzure:OnChanged(function(state)
    _G.SetToTradeAureEmber = state
end)
AutoTradeAzure = Sea:AddToggle("AutoTradeAzure", {
    Title = "Auto Trade Azure Ember",
    Description = "",
    Default = false,
    Callback = function (state)
        _G.TradeAureEmber = state
    end
})
function GetCountMaterials(MaterialName)
    local Inventory = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory")
    for i, v in pairs(Inventory) do
        if v.Name == MaterialName then
            return v["Count"]
        end
    end
end
spawn(function()
    while wait() do
        if _G.TradeAureEmber then
            pcall(function()
                local AzureAvilable = GetCountMaterials("Azure Ember")
                if AzureAvilable >= _G.SetToTradeAureEmber then
                    game:GetService("ReplicatedStorage").Modules.Net:FindFirstChild("RF/KitsuneStatuePray"):InvokeServer()
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KitsuneStatuePray")
                end
            end)
        end
    end
end)             
Sea:AddButton({
        Title = "Trade Azure Wisp",
        Description = "",
        Callback = function()            
game:GetService("ReplicatedStorage"):WaitForChild("Modules"):WaitForChild("Net"):WaitForChild("RF/KitsuneStatuePray"):InvokeServer()
   end
})
Sea:AddParagraph({
        Title = "Leviathan Event",
        Content = "---------------------"
    })    
ToggleTweenFrozenDimension = Sea:AddToggle("ToggleTweenFrozenDimension", {Title = "Teleport To Frozen Dimension", Description = "", Default = false })
ToggleTweenFrozenDimension:OnChanged(function(Value)
    _G.AutoFrozenDimension = Value
end) 
spawn(function()
    pcall(function()
        while wait() do
            if _G.AutoFrozenDimension and World3 then
                if game:GetService("Workspace").Map:FindFirstChild("FrozenDimension") then
                    topos(CFrame.new(game:GetService("Workspace").Map.FrozenDimension.Center.Position.X,500,game:GetService("Workspace").Map.FrozenDimension.Center.Position.Z))
                end
            end
        end
    end)
end)
Toggle = Sea:AddToggle("MyToggle", {Title = "Auto Attack Leviathan", Default = false })
Toggle:OnChanged(function(state)
    _G.KillLevi = state
end)
spawn(function()
    while wait() do
        if _G.KillLevi then
            pcall(function()
                for i, v in pairs(game:GetService("Workspace").SeaBeasts:GetChildren()) do
                    if v.Name == "Leviathan" and v:FindFirstChild("HumanoidRootPart") then
                        repeat
                            wait()
                            topos(v.HumanoidRootPart.CFrame * CFrame.new(0, 500, 0))
                            pcall(function()
                                AutoHaki()
                                _G.SeaSkill = true
                            end)
                            _G.SeaSkill = true
                            AimBotSkillPosition = v.HumanoidRootPart
                            Skillaimbot = true
                        until not v:FindFirstChild("HumanoidRootPart") or not _G.KillLevi
                        _G.SeaSkill = false
                        Skillaimbot = false
                    end
                end
            end)
        end
    end
end)
SkillSt = Window:AddTab({ Title = "Tab Setting Select Skill", Icon = "rbxassetid://10734984606" })
SkillSt:AddParagraph({
        Title = "Setting Sea Event",
        Content = "--------------------"
    })
SkillSt:AddParagraph({
        Title = "Activating Skill Event,\nAnd Skill Leviathan Flawless Fusion",
    })               
fruitsk = SkillSt:AddToggle("fruitsk", {
    Title = "Enable Fruit Use",
    Description = "",
    Default = true
})
fruitsk:OnChanged(function(value)
    _G.UseSeaFruitSkill = value
end)
melesk = SkillSt:AddToggle("melesk", {
    Title = "Enable Melee Use",
    Description = "",
    Default = true
})
melesk:OnChanged(function(value)
    _G.UseSeaMeleeSkill = value
end)
swordsk = SkillSt:AddToggle("swordsk", {
    Title = "Enable Sword Use",
    Description = "",
    Default = true
})
swordsk:OnChanged(function(value)
    _G.UseSeaSwordSkill = value
end)    
gunsk = SkillSt:AddToggle("gunsk", {
    Title = "Enable Gun Use",
    Description = "",
    Default = true
})
gunsk:OnChanged(function(value)
    _G.UseSeaGunSkill = value
end)
SkillSt:AddParagraph({
        Title = "Activate Weapon Farm Event,\nClick to Activate",
    })
SkillSt:AddParagraph({
        Title = "Setting Skill Fruit",
        Content = "---------------------"
    })
fruitskz = SkillSt:AddToggle("fruitskz", {
    Title = "Fruit Skill Z",
    Description = "",
    Default = true
})
fruitskz:OnChanged(function(value)
    _G.SkillFruitZ = value
end)
fruitskx = SkillSt:AddToggle("fruitskx", {
    Title = "Fruit Skill X",
    Description = "",
    Default = true
})
fruitskx:OnChanged(function(value)
    _G.SkillFruitX = value
end) 
fruitskc = SkillSt:AddToggle("fruitskc", {
    Title = "Fruit Skill C",
    Description = "",
    Default = true
})
fruitskc:OnChanged(function(value)
    _G.SkillFruitC = value
end)    
fruitskv = SkillSt:AddToggle("fruitskv", {
    Title = "Fruit Skill V",
    Description = "",
    Default = _G.SkillFruitV
})
fruitskv:OnChanged(function(value)
    _G.SkillFruitV = value
end)    
fruitskf = SkillSt:AddToggle("fruitskf", {
    Title = "Fruit Skill F",
    Description = "",
    Default = _G.SkillFruitF
})
fruitskf:OnChanged(function(value)
    _G.SkillFruitF = value
end)
SkillSt:AddParagraph({
        Title = "Use To Enable Skill Fruit,\nPlease Select Correct",
    })
SkillSt:AddParagraph({
        Title = "Setting Skill Melee",
        Content = "---------------------"
    })
meleskz = SkillSt:AddToggle("meleskz", {
    Title = "Melee Skill Z",
    Description = "",
    Default = true
})
meleskz:OnChanged(function(value)
    _G.SkillMeleeZ = value
end)
meleskx = SkillSt:AddToggle("meleskx", {
    Title = "Melee Skill X",
    Description = "",
    Default = true
})
meleskx:OnChanged(function(value)
    _G.SkillMeleeX = value
end)    
meleskc = SkillSt:AddToggle("meleskc", {
    Title = "Melee Skill C",
    Description = "",
    Default = true
})
meleskc:OnChanged(function(value)
    _G.SkillMeleeC = value
end)
meleskv = SkillSt:AddToggle("meleskv", {
    Title = "Melee Skill V",
    Description = "",
    Default = _G.SkillMeleeV
})
meleskv:OnChanged(function(value)
    _G.SkillMeleeV = value
end)
SkillSt:AddParagraph({
        Title = "Use To Enable Skill Melee,\nPlease Select Correct",
    })
SkillSt:AddParagraph({
        Title = "Setting Skill Sword And Gun",
        Content = "---------------------"
    })
skillzswordandgun = SkillSt:AddToggle("skillzswordandgun", {
    Title = "Sword And Gun Skill Z",
    Description = "",
    Default = true
})
skillzswordandgun:OnChanged(function(value)
    _G.SkillSwordZ = value
    _G.SkillGunZ = value
end)    
skillxswordandgun = SkillSt:AddToggle("skillxswordandgun", {
    Title = "Sword And Gun Skill X",
    Description = "",
    Default = true
})
skillxswordandgun:OnChanged(function(value)
    _G.SkillSwordX = value
    _G.SkillGunX = value
end)
SkillSt:AddParagraph({
        Title = "Use To Enable Skill Sword and Gun,\nPlease Select Correct",
    })
gg = getrawmetatable(game)
old = gg.__namecall
setreadonly(gg,false)
gg.__namecall = newcclosure(function(...)
	method = getnamecallmethod()
	args = {...}
	if tostring(method) == "FireServer" then
		if tostring(args[1]) == "RemoteEvent" then
			if tostring(args[2]) ~= "true" and tostring(args[2]) ~= "false" then
				if Skillaimbot then
					args[2] = AimBotSkillPosition
					return old(unpack(args))
				end
			end
		end
	end
	return old(...)
end) 
spawn(function()
    while wait() do
        pcall(function()
            if UseSkill then
                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                if v.Name == MonFarm and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health <= v.Humanoid.MaxHealth * _G.Kill_At / 100 then
                if _G.SkillZ then
                    game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
                    wait(_G.HoldSKillZ)
                    game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
                end
                if _G.SkillX then
                    game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
                    wait(_G.HoldSKillX)
                    game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
                end
                if _G.SkillC then
                    game:service('VirtualInputManager'):SendKeyEvent(true, "C", false, game)
                    wait(_G.HoldSKillC)
                    game:service('VirtualInputManager'):SendKeyEvent(false, "C", false, game)
                end
                if _G.SkillV then
                    game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
                    wait(_G.HoldSKillV)
                    game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
                end
                if _G.SkillF then
                    game:service('VirtualInputManager'):SendKeyEvent(true, "F", false, game)
                    wait(_G.HoldSKillF)
                    game:service('VirtualInputManager'):SendKeyEvent(false, "F", false, game)
                end
            end
            end
            end
        end)
    end
end)
spawn(function()
    while wait() do
        pcall(function()
            if UseGunSkill then
                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                if v.Name == MonFarm and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health <= v.Humanoid.MaxHealth * _G.Kill_At / 100 then
                if _G.SkillZ then
                    game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
                    wait(0.1)
                    game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
                end
                if _G.SkillX then
                    game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
                    wait(0.1)
                    game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
                end
            end
            end
            end
        end)
    end
end)
SkillSt:AddParagraph({
        Title = "Settings Other Sea Event",
        Content = "---------------------"
    })
Toggle = SkillSt:AddToggle("MyToggle", {Title = "Through Stone", Default = true })
Toggle:OnChanged(function(Value)
    _G.NoClipRock = Value
end)
spawn(function()
    while wait() do
        pcall(function()
        for i, boat in pairs(game:GetService("Workspace").Boats:GetChildren()) do
            for _, v in pairs(game:GetService("Workspace").Boats[boat.Name]:GetDescendants()) do
                if v:IsA("BasePart") then
                        if _G.NoClipRock or _G.SailBoat then
                            v.CanCollide = false
                        else
                            v.CanCollide = true
                        end
                    end
                end
            end
        end)
    end
end)
ToggleAutoW = SkillSt:AddToggle("ToggleAutoW", {Title = "Self-Driven Boat Go Straight",Description = "", Default = false })
ToggleAutoW:OnChanged(function(Value)
    _G.AutoW = Value
end)
spawn(function()
    while wait() do
        pcall(function()
            if _G.AutoW then
                game:GetService("VirtualInputManager"):SendKeyEvent(true,"W",false,game)
            end
        end)
    end
end)         
SkillSt:AddButton({
        Title = "Remove Fog",
        Description = "",
        Callback = function()            
        game:GetService("Lighting").LightingLayers:Destroy()
	game:GetService("Lighting").Sky:Destroy()
   end
})
SkillSt:AddButton({
    Title = "Bright Sky",
    Description = "",
    Callback = function()
        game:GetService("RunService").Heartbeat:wait() do
        game:GetService("Lighting").ClockTime = 12
        end
    end
})
RaceTrial = Window:AddTab({ Title = "Tab Upgrade Race", Icon = "rbxassetid://11162889532" })
Toggle = RaceTrial:AddToggle("Toggle", {Title = "Auto Done Trial V4",Description = "Going Inside the Trial will not Error, Turning on the Outside will Error", Default = false })
Toggle:OnChanged(function(Value)
    _G.AutoComplete_Race = Value
    StopTween(_G.AutoComplete_Race)
end)
spawn(function()
    pcall(function()
        while wait() do
            if _G.AutoComplete_Race and World3 then
				if game:GetService("Players").LocalPlayer.Data.Race.Value == "Human" then
					for i,v in pairs(game.Workspace.Enemies:GetDescendants()) do
						if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
							pcall(function()
								repeat wait(.1)
									v.Humanoid.Health = 0
									v.HumanoidRootPart.CanCollide = false
									sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
								until not _G.AutoComplete_Race or not v.Parent or v.Humanoid.Health <= 0
							end)
						end
					end
				elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Skypiea" then
                            local c1 = game:GetService("Workspace").Map.SkyTrial.Model.FinishPart
                            if (c1.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 2000 then
                                wait(1)
                                topos(c1.CFrame)
                                wait(1)
                            end
				elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Fishman" then
					for i,v in pairs(game:GetService("Workspace").SeaBeasts.SeaBeast1:GetDescendants()) do
						if v.Name ==  "HumanoidRootPart" then
							topos(v.CFrame* CFrame.new(PosX,PosY,PosZ))
							for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
								if v:IsA("Tool") then
									if v.ToolTip == "Melee" then -- "Blox Fruit" , "Sword" , "Wear" , "Agility"
										game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
									end
								end
							end
							game:GetService("VirtualInputManager"):SendKeyEvent(true,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							wait(.1)
							game:GetService("VirtualInputManager"):SendKeyEvent(true,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							wait(.1)
							game:GetService("VirtualInputManager"):SendKeyEvent(true,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
								if v:IsA("Tool") then
									if v.ToolTip == "Blox Fruit" then -- "Blox Fruit" , "Sword" , "Wear" , "Agility"
										game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
									end
								end
							end
							game:GetService("VirtualInputManager"):SendKeyEvent(true,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							wait(.1)
							game:GetService("VirtualInputManager"):SendKeyEvent(true,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							wait(.1)
							game:GetService("VirtualInputManager"):SendKeyEvent(true,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
					
							wait(0.1)
							for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
								if v:IsA("Tool") then
									if v.ToolTip == "Sword" then -- "Blox Fruit" , "Sword" , "Wear" , "Agility"
										game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
									end
								end
							end
							game:GetService("VirtualInputManager"):SendKeyEvent(true,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							wait(.1)
							game:GetService("VirtualInputManager"):SendKeyEvent(true,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							wait(.1)
							game:GetService("VirtualInputManager"):SendKeyEvent(true,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							wait(0.1)
							for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
								if v:IsA("Tool") then
									if v.ToolTip == "Gun" then -- "Blox Fruit" , "Sword" , "Wear" , "Agility"
										game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
									end
								end
							end
							game:GetService("VirtualInputManager"):SendKeyEvent(true,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							wait(.1)
							game:GetService("VirtualInputManager"):SendKeyEvent(true,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							wait(.1)
							game:GetService("VirtualInputManager"):SendKeyEvent(true,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
						end
					end
				elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Cyborg" then
					topos(CFrame.new(28654, 14898.7832, -30, 1, 0, 0, 0, 1, 0, 0, 0, 1))
				elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Ghoul" then
					for i,v in pairs(game.Workspace.Enemies:GetDescendants()) do
						if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
							pcall(function()
								repeat wait(.1)
									v.Humanoid.Health = 0
									v.HumanoidRootPart.CanCollide = false
									sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
								until not _G.AutoComplete_Race or not v.Parent or v.Humanoid.Health <= 0
							end)
						end
					end
				elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Mink" then
					for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
						if v.Name == "StartPoint" then
							topos(v.CFrame* CFrame.new(0,9,0))
					  	end
				   	end
				end
			end
        end
    end)
end)
Toggle = RaceTrial:AddToggle("Kill Trial", { Title = "Auto Kill Player After Trial V4", Default = false })
Toggle:OnChanged(function(Value)
    _G.Kill_Trial_V4 = Value
    RaceNguLon = Value
    StopTween(_G.Kill_Trial_V4)
end)
spawn(
    function()
    while task.wait() do
        if _G.Kill_Trial_V4 and World3 then
            pcall(
                function()
    if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == true then
                for i, v in pairs(game.Workspace.Characters:GetChildren()) do
                    if v.Name ~= game.Players.LocalPlayer.Name then
                        if v.Humanoid.Health > 0 and v:FindFirstChild("HumanoidRootPart") and v.Parent and (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude <= 230 then
                            repeat task.wait()
                                AutoHaki()
                                EquipWeapon(_G.SelectWeapon)
                                UsefastattackPlayers = true
                                topos(v.HumanoidRootPart.CFrame * CFrame.new(1, 1, 2))
                                v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                v.HumanoidRootPart.CanCollide = false
                                v.Head.CanCollide = false
                                v.Humanoid.WalkSpeed = 0          
              sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
                            until _G.Kill_Trial_V4 == false or v.Humanoid.Health <= 0 or not v.Parent or not v:FindFirstChild("HumanoidRootPart") or not v:FindFirstChild("Humanoid")
                            end
                        end
                    end
                end
            end
            )
        end
    end
end
)
RaceTrial:AddButton({
        Title = "Reset Character",
        Description = "",
        Callback = function()            
game.Players.LocalPlayer.Character.Head:Destroy()
        end
    })
Toggle = RaceTrial:AddToggle("Toggle", { Title = "Auto Train", Default = false })
Toggle:OnChanged(function(Value)
    _G.Race_Ngu = Value
    _G.Quest_Nhu_Cai_Lon = Value
    StopTween(_G.Quest_Nhu_Cai_Lon)
end)
spawn(function()
    pcall(function()
        while wait() do
            if _G.Race_Ngu then
                if game.Players.LocalPlayer.Character.RaceTransformed.Value == true then
                    _G.Quest_Nhu_Cai_Lon = false
                    topos(CFrame.new(-9507.03125, 713.654968, 6186.39453))
                end
            end
        end
    end)
end)
spawn(function()
    while wait() do 
        if _G.Quest_Nhu_Cai_Lon and World3 then
            pcall(function()
  if game:GetService("Workspace").Enemies:FindFirstChild("Reborn Skeleton") or game:GetService("Workspace").Enemies:FindFirstChild("Living Zombie") or game:GetService("Workspace").Enemies:FindFirstChild("Demonic Soul") or game:GetService("Workspace").Enemies:FindFirstChild("Posessed Mummy") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Reborn Skeleton" or v.Name == "Living Zombie" or v.Name == "Demonic Soul" or v.Name == "Posessed Mummy" then
                               if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                   repeat wait()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.Head.CanCollide = false
                                        topos(v.HumanoidRootPart.CFrame * Pos)
                                        if v.Name == "Demonic Soul" then
                                            BringMobBone(v.Name, CFrame.new(-9497.908203125, 172.1048126220703, 6148.97119140625))
                                        elseif v.Name == "Living Zombie" then
                                            BringMobBone(v.Name, CFrame.new(-10143.466796875, 138.6266632080078, 5974.3330078125))
                                        elseif v.Name == "Reborn Skeleton" then
                                            BringMobBone(v.Name, CFrame.new(-8760.986328125, 142.1048126220703, 6039.1083984375))
                                        elseif v.Name == "Posessed Mummy" then
                                            BringMobBone(v.Name, CFrame.new(-9575.4267578125, 5.792530536651611, 6226.22900390625))
                                        end          
                                    until not _G.Quest_Nhu_Cai_Lon or not v.Parent or v.Humanoid.Health <= 0
                                end
                            end
                        end
                    else
                    if BypassTP then
                        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - BonePos.Position).Magnitude > 1500 then
			                BTP(BonePos)
				    elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - BonePos.Position).Magnitude < 1500 then
				            topos(BonePos)
					    end
				    else
				            topos(BonePos)
				        end
				        UnEquipWeapon(_G.SelectWeapon)
				     	topos(CFrame.new(-9507.03125, 713.654968, 6186.39453))
                        for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do 
                            if v.Name == "Reborn Skeleton" then
                                topos(v.HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                            elseif v.Name == "Living Zombie" then
                                topos(v.HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                            elseif v.Name == "Demonic Soul" then
                                topos(v.HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                            elseif v.Name == "Posessed Mummy" then
                                topos(v.HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                            end
                        end
                    end
                end
                )
            end
        end
    end
      )
spawn(function()
    pcall(function()
        while wait() do
            if _G.Race_Ngu then
                if game.Players.LocalPlayer.Character.RaceTransformed.Value == false then
                    _G.Quest_Nhu_Cai_Lon = true
                end
            end
        end
    end
    )
end
)
task.spawn(
    function()
        while task.wait() do
            task.wait()
            if _G.Race_Ngu then
                if
                    game.Players.LocalPlayer.Character:FindFirstChild("RaceEnergy") and
                        game.Players.LocalPlayer.Character.RaceEnergy.Value >= 1 and
                        not game.Players.LocalPlayer.Character.RaceTransformed.Value
                 then
                    local be = game:service("VirtualInputManager")
                    be:SendKeyEvent(true, "Y", false, game)
                    task.wait()
                    be:SendKeyEvent(false, "Y", false, game)
                end
            end
        end
    end
)
Toggle = RaceTrial:AddToggle("Toggle", { Title = "Auto Buy Upgrade Gear", Default = false })
Toggle:OnChanged(function(Value)
    _G.Buy_Upgrade = Value
end)
spawn(
   function()
      pcall(
        function()
           while wait(0.1) do
            if _G.Buy_Upgrade and World3 then
                local args = {
                [1] = true
                }
                local args = {
                    [1] = "UpgradeRace",
                    [2] = "Buy"
                }
                game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))
            end
        end 
    end
    )
end
)
RaceTrial:AddButton({
        Title = "Teleport To Acient One",
        Description = "",
        Callback = function()            
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(28286.35546875, 14895.3017578125, 102.62469482421875))
        wait(1)
        topos(CFrame.new(28981.552734375, 14888.4267578125, -120.245849609375))
    end
    })
RaceTrial:AddButton({
    Title = "Teleport To Acient Clock",
    Description = "",
    Callback = function()
    topos(CFrame.new(29539.582, 15068.6846, -86.7974472))
    end
})
Toggle = RaceTrial:AddToggle("Toggle", { Title = "Teleport To Migare Island", Default = false })
Toggle:OnChanged(function(Value)
    _G.TeleportMigare = Value
    StopTween(_G.TeleportMigare)
end)
spawn(function()
            pcall(function()
                while wait() do
                    if _G.TeleportMigare and World3 then
                        if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
                            topos(CFrame.new(game:GetService("Workspace").Map.MysticIsland.Center.Position.X,500,game:GetService("Workspace").Map.MysticIsland.Center.Position.Z))
                        end
                    end
                end
            end)
        end)
function TwenetoHighestPoint()
    HighestPoint = tweento_highestpoint()
    if HighestPoint then
        topos(HighestPoint.CFrame * CFrame.new(0, 211.88, 0))
    end
end        
Tweentohighestpoint = RaceTrial:AddToggle("Tweentohighestpoint", {Title = "Teleport To Highest Point", Default = false })
Tweentohighestpoint:OnChanged(function(value)
    Tweentohighestpoint = value
    if Tweentohighestpoint then
        TwenetoHighestPoint()
    end
end)
function TweenNpc()
                    repeat
                        wait()
                    until game:GetService("Workspace").Map:FindFirstChild("MysticIsland")
                    if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
                        AllNPCS = getnilinstances()
                        for r, v in pairs(game:GetService("Workspace").NPCs:GetChildren()) do
                            table.insert(AllNPCS, v)
                        end
                        for r, v in pairs(AllNPCS) do
                            if v.Name == "Advanced Fruit Dealer" then
                                topos(v.HumanoidRootPart.CFrame)
                                end
                            end
                        end
                    end
Toggle = RaceTrial:AddToggle("MyToggle", {Title = "Teleport To Advanced Fruit Dealer", Default = false })
Toggle:OnChanged(function(Value)
    _G.Miragenpc = Value
end)
spawn(function()
        pcall(function()
            while wait(.1) do
                if _G.Miragenpc and World3 then    
                    TweenNpc()
                end
            end
        end)
    end)
Togglelockmoon = RaceTrial:AddToggle("Togglelockmoon", {Title = "Lock Moon And On Race V3",Description = "", Default = false })
Togglelockmoon:OnChanged(function(Value)
    _G.AutoLockMoon = Value
end) 
spawn(function()
    while wait() do
        pcall(function()
            if _G.AutoLockMoon and World3 then
                local moonDir = game.Lighting:GetMoonDirection()
                local lookAtPos = game.Workspace.CurrentCamera.CFrame.p + moonDir * 100
                game.Workspace.CurrentCamera.CFrame = CFrame.lookAt(game.Workspace.CurrentCamera.CFrame.p, lookAtPos)
            end
        end)
    end
end)
spawn(function()
    while wait() do
        pcall(function()
            if _G.AutoLockMoon and World3 then
                game:GetService("VirtualInputManager"):SendKeyEvent(true,"T",false,game)
                wait(0.1)
                game:GetService("VirtualInputManager"):SendKeyEvent(false,"T",false,game)
            end
        end)
    end
end)
Toggle = RaceTrial:AddToggle("Toggle", { Title = "Teleport To Blue Gear", Default = false })
Toggle:OnChanged(function(Value)
    _G.Luom_Gear = Value
    StopTween(_G.Luom_Gear)
end)
spawn(function()
    pcall(function()
        while wait() do
            if _G.Luom_Gear and World3 then
				if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
					for i,v in pairs(game:GetService("Workspace").Map.MysticIsland:GetChildren()) do 
						if v:IsA("MeshPart")then 
                            if v.Material == Enum.Material.Neon then  
                                topos(v.CFrame)
                            end
                        end
					end
				end
			end
        end
    end)
end)
RaceTrial:AddButton({
    Title = "Teleport To Great Tree",
    Description = "",
    Callback = function()
    topos(CFrame.new(28603.7305, 14896.5352, 105.38382))
    wait(.1)
    local args = {
    [1] = "RaceV4Progress",
    [2] = "TeleportBack"
}
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
    end
})
function DaoKhiTrenCaoCuaDuy()
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
        "requestEntrance",
        Vector3.new(28282.5703125, 14896.8505859375, 105.1042709350586)
        )
end
RaceTrial:AddButton({
    Title = "Teleport To Temple Of Time",
    Description = "",
    Callback = function()
       DaoKhiTrenCaoCuaDuy()
    end 
})
RaceTrial:AddButton({
    Title = "Pull Lever",
    Description = "",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(28286.35546875, 14895.3017578125, 102.62469482421875))
        wait(1) 
        topos(CFrame.new(28575.181640625, 14936.6279296875, 72.31636810302734))
    end
})
RaceTrial:AddButton({
          Title = "Teleport To Trial Door",
          Description = "",
          Callback = function()
	           if game:GetService("Players").LocalPlayer.Data.Race.Value == "Human" then
                topos(CFrame.new(29221.822265625, 14890.9755859375, -205.99114990234375))
				elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Skypiea" then
                topos(CFrame.new(28960.158203125, 14919.6240234375, 235.03948974609375))
				elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Fishman" then
                topos(CFrame.new(28231.17578125, 14890.9755859375, -211.64173889160156))
				elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Cyborg" then
                topos(CFrame.new(28502.681640625, 14895.9755859375, -423.7279357910156))
				elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Ghoul" then
                topos(CFrame.new(28674.244140625, 14890.6767578125, 445.4310607910156))
				elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Mink" then
                topos(CFrame.new(29012.341796875, 14890.9755859375, -380.1492614746094))
				end
end
})        
pvp = Window:AddTab({ Title = "Tab Pvp-Visual", Icon = "sun-snow" })
Playerslist = {}    
    for i,v in pairs(game:GetService("Players"):GetChildren()) do
        table.insert(Playerslist,v.Name)
    end
SelectedPly = pvp:AddDropdown("Dropdown", {
     Title = "Select Player PVP",
     Values = Playerslist,
     Multi = false,
     Default = _G.SelectPly,
})
SelectedPly:OnChanged(function(Value)
   _G.SelectPly = Value
end)
Toggle = pvp:AddToggle("MyToggle", {
    Title = "Teleport Player",
    Default = _G.TeleportPly
})
Toggle:OnChanged(function(Value)
    _G.TeleportPly = Value    
pcall(function()
        if _G.TeleportPly then
            repeat
                player = game:GetService("Players"):FindFirstChild(_G.SelectPly)
                if player and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
                    topos(player.Character.HumanoidRootPart.CFrame)
                end
                wait()
            until not _G.TeleportPly
        end
    end)
end)    
Toggle = pvp:AddToggle("MyToggle", {Title = "Auto Farm Player", Default = false })
Toggle:OnChanged(function(Value)
    _G.Auto_Kill_Ply = Value
    RaceNguLon = Value
end)
spawn(function()
        while wait() do
            if _G.Auto_Kill_Ply then
                pcall(function()
                    if _G.SelectPly ~= nil then 
                        if game.Players:FindFirstChild(_G.SelectPly) then
                            if game.Players:FindFirstChild(_G.SelectPly).Character.Humanoid.Health > 0 then
                                repeat task.wait()
                                    AutoHaki()                                  
                                    EquipWeapon(_G.SelectWeapon)
                                    UsefastattackPlayers = true
                                    game.Players:FindFirstChild(_G.SelectPly).Character.HumanoidRootPart.CanCollide = false
                                    topos(game.Players:FindFirstChild(_G.SelectPly).Character.HumanoidRootPart.CFrame * CFrame.new(0,5,0))
                                    spawn(function()
                                        pcall(function()
                                            if _G.SelectWeapon == SelectWeaponGun then
                                                local args = {
                                                    [1] = game.Players:FindFirstChild(_G.SelectPly).Character.HumanoidRootPart.Position,
                                                    [2] = game.Players:FindFirstChild(_G.SelectPly).Character.HumanoidRootPart
                                                }
                                                game:GetService("Players").LocalPlayer.Character[SelectWeaponGun].RemoteFunctionShoot:InvokeServer(unpack(args))
                                            else
                                                game:GetService("VirtualUser"):CaptureController()
                                                game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                            end
                                        end)
                                    end)
                                until game.Players:FindFirstChild(_G.SelectPly).Character.Humanoid.Health <= 0 or not game.Players:FindFirstChild(_G.SelectPly) or not _G.Auto_Kill_Ply
                            end
                        end
                    end
                end)
            end
        end
    end)               	    
Toggle = pvp:AddToggle("MyToggle", {Title = "Aimbot Skill", Default = AimSkillNearest })
Toggle:OnChanged(function(value)
    _G.Aimbot_Skill = value
end)        
spawn(function()
        pcall(function()
            while task.wait() do
                if _G.Aimbot_Skill and PlayerSelectAimbot ~= nil and game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") and game.Players.LocalPlayer.Character[game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name]:FindFirstChild("MousePos") then
                    local args = {
                        [1] = game:GetService("Players"):FindFirstChild(PlayerSelectAimbot).Character.HumanoidRootPart.Position
                    }
                    
                    game:GetService("Players").LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name).RemoteEvent:FireServer(unpack(args))
                end
            end
        end)
    end)        
Toggle = pvp:AddToggle("MyToggle", {Title = "Aimbot Gun", Description = "", Default = _G.Aimbot_Gun })
Toggle:OnChanged(function(Value)
    _G.Aimbot_Gun = Value
end)        
spawn(function()
        while task.wait() do
            if _G.Aimbot_Gun and game:GetService("Players").LocalPlayer.Character:FindFirstChild(SelectWeaponGun) then
                pcall(function()
                    game:GetService("Players").LocalPlayer.Character[SelectWeaponGun].Cooldown.Value = 0
                    local args = {
                        [1] = game:GetService("Players"):FindFirstChild(PlayerSelectAimbot).Character.HumanoidRootPart.Position,
                        [2] = game:GetService("Players"):FindFirstChild(PlayerSelectAimbot).Character.HumanoidRootPart
                    }
                    game:GetService("Players").LocalPlayer.Character[SelectWeaponGun].RemoteFunctionShoot:InvokeServer(unpack(args))
                    game:GetService'VirtualUser':CaptureController()
                    game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                end)
            end
        end
    end)        
Toggle = pvp:AddToggle("MyToggle", {Title = "Aimbot Near Player", Description = "", Default = AimSkillNearest })
Toggle:OnChanged(function(MakoriGG)
    AimSkillNearest = MakoriGG
end)        
spawn(function()
	while wait(.1) do
		pcall(function()
			MaxDistance = math.huge
			for i,v in pairs(game:GetService("Players"):GetPlayers()) do
				if v.Name ~= game.Players.LocalPlayer.Name then
					Distance = v:DistanceFromCharacter(game.Players.LocalPlayer.Character.HumanoidRootPart.Position)
					if Distance < MaxDistance then
						MaxDistance = Distance
						TargetPlayerAim = v.Name
					end
				end
			end
		end)
	end
end)        
spawn(function()
	pcall(function()
		game:GetService("RunService").RenderStepped:connect(function()
			if AimSkillNearest and TargetPlayerAim ~= nil and game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") and game.Players.LocalPlayer.Character[game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name]:FindFirstChild("MousePos") then
				local args = {
					[1] = game:GetService("Players"):FindFirstChild(TargetPlayerAim).Character.HumanoidRootPart.Position
				}
				game:GetService("Players").LocalPlayer.Character[game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))
			end
		end)
	end)
end)
Toggle = pvp:AddToggle("MyToggle", {Title = "Auto Run Hack", Default = _G.RunHack })
Toggle:OnChanged(function(value)
    _G.RunHack = value
end)
task.spawn(function()
        while task.wait() do
            pcall(function()
                if _G.RunHack then
                    repeat task.wait()
                        CharacterPlayer = game.Players.LocalPlayer.Character
                        _G.Noclip = true
                        CharacterPlayer.HumanoidRootPart.CFrame  = CharacterPlayer.HumanoidRootPart.CFrame * CFrame.new(0,50,0)
                    until not _G.RunHack
                end
            end)
        end
    end)
Toggle = pvp:AddToggle("MyToggle", {Title = "Safe Modes", Default = _G.SafeMode })
Toggle:OnChanged(function(value)
    _G.SafeMode = value
end)
spawn(function()
        while task.wait() do
            pcall(function()
                if _G.SafeMode then
                    CharacterPlayer = game.Players.LocalPlayer.Character
                    HealthMinPlayer = CharacterPlayer.Humanoid.MaxHealth * _G.Safe/100
                    if CharacterPlayer.Humanoid.Health <= HealthMinPlayer then
                        repeat task.wait()
                            CharacterPlayer.HumanoidRootPart.CFrame  = CharacterPlayer.HumanoidRootPart.CFrame * CFrame.new(0,50,0)
                        until not _G.SafeMode
                    end
                end
            end)
        end
    end)
Slider = pvp:AddSlider("Slider", {
        Title = "Safe Mode At",
        Description = "",
        Default = 30,
        Min = 0,
        Max = 100,
        Rounding = 5,
        Callback = function(value)
        _G.Safe = value
    end
})
ToggleEspPlayer = pvp:AddToggle("ToggleEspPlayer", {Title = "ESP Players",Description = "", Default = false })
ToggleEspPlayer:OnChanged(function(Value)
    ESPPlayer = Value
    while ESPPlayer do wait()
        UpdatePlayerChams()
    end
end)
ToggleEspChest = pvp:AddToggle("ToggleEspChest", {Title = "ESP Chests",Description = "", Default = false })
ToggleEspChest:OnChanged(function(Value)
    ChestESP = Value
    while ChestESP do wait()
        UpdateChestChams()
    end
end)
ToggleEspFruit = pvp:AddToggle("ToggleEspFruit", {Title = "ESP Fruit",Description = "", Default = false })
ToggleEspFruit:OnChanged(function(Value)
    DevilFruitESP = Value
    while DevilFruitESP do wait()
        UpdateDevilChams() 
    end
end)
ToggleEspIsland = pvp:AddToggle("ToggleEspIsland", {Title = "ESP Island",Description = "", Default = false })
ToggleEspIsland:OnChanged(function(Value)
    IslandESP = Value
    while IslandESP do wait()
        UpdateIslandESP() 
    end
end)
ToggleEspNpc = pvp:AddToggle("ToggleEspNpc", {Title = "ESP Npc",Description = "", Default = false })
ToggleEspNpc:OnChanged(function(Value)
    NpcESP = Value
end)
ToggleEspMob = pvp:AddToggle("ToggleEspMob", { Title = "ESP Mob", Default = false })
ToggleEspMob:OnChanged(function(Value)
    MobESP = Value      
end)
ToggleEspKitsune = pvp:AddToggle("ToggleEspKitsune", {Title = "ESP Kitsune Island",Description = "", Default = false })
ToggleEspKitsune:OnChanged(function(Value)
    KitsuneIslandEsp = Value
    while KitsuneIslandEsp do wait()
        UpdateIslandKisuneESP() 
    end
end)
ToggleEspMigare = pvp:AddToggle("ToggleEspMigare", { Title = "ESP Migare", Default = false })
ToggleEspMigare:OnChanged(function(Value)
    MirageIslandESP = Value
    while MirageIslandESP do wait()
        UpdateIslandMirageESP()
    end      
end)
ToggleEspADV = pvp:AddToggle("ToggleEspADV", { Title = "ESP Advanced Fruit Dealer", Default = false })
ToggleEspADV:OnChanged(function(Z)
    AfdESP = Z
    while AfdESP do wait()
        UpdateAfdESP()
    end     
end)
ToggleEspGear = pvp:AddToggle("ToggleEspGear", { Title = "ESP Gear", Default = false })
ToggleEspGear:OnChanged(function(Value)
    GearESP = Value  
    while GearESP do wait()
        UpdateGeaESP()
    end     
end)
ToggleEspSea = pvp:AddToggle("ToggleEspSea", {Title = "ESP Sea Beast",Description = "", Default = false })
ToggleEspSea:OnChanged(function(Value)
    SeaESP = Value
end)
ToggleEspRealFruit = pvp:AddToggle("ToggleEspRealFruit", { Title = "ESP Real Fruit", Description = "", Default = false })
ToggleEspRealFruit:OnChanged(function(Value)
    RealFruitESP = Value
    while RealFruitESP do wait()
        UpdateRealFruitChams()
    end
end)
ToggleEspFlower = pvp:AddToggle("ToggleEspFlower", {Title = "ESP Flower", Default = false })
ToggleEspFlower:OnChanged(function(Value)
    FlowerESP = Value
    while FlowerESP do wait()
	    UpdateFlowerChams()
	end
end)
spawn(function()
    while wait(1) do
        if FlowerESP then
            UpdateFlowerChams() 
        end
        if DevilFruitESP then
            UpdateDevilChams() 
        end
        if ChestESP then
            UpdateChestChams() 
        end
        if ESPPlayer then
            UpdatePlayerChams()
        end
        if RealFruitESP then
            UpdateRealFruitChams()
        end
    end
end)
spl = Window:AddTab({ Title = "Tab Stats", Icon = "rbxassetid://11446900930" })
Usser = spl:AddParagraph({
    Title = "Number of Lifts :",
    Content = "Melee : "..game.Players.localPlayer.Data.Stats.Melee.Level.Value.."\nDefense : "..game.Players.localPlayer.Data.Stats.Defense.Level.Value.."\nSword : "..game.Players.localPlayer.Data.Stats.Sword.Level.Value.."\nGun : "..game.Players.localPlayer.Data.Stats.Gun.Level.Value.."\nFruit : "..game.Players.localPlayer.Data.Stats["Demon Fruit"].Level.Value..""
})  
Dropdown = spl:AddDropdown("DropdownFarm", {
    Title = "Select Stats",
    Values = {"Melee", "Defense", "Sword", "Gun", "Fruit"},
    Multi = false,
})
Dropdown:SetValue("")
Dropdown:OnChanged(function(Value)
StatsMode = Value
end)
spawn(function()
    while wait() do
        if game.Players.localPlayer.Data.Points.Value >= PointStats then
            if StatsMode == "Melee" and _G.AutoStats then
                local args = {
                    [1] = "AddPoint",
                    [2] = "Melee",
                    [3] = PointStats
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            end 
            if StatsMode == "Defense" and _G.AutoStats then
                local args = {
                    [1] = "AddPoint",
                    [2] = "Defense",
                    [3] = PointStats
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            end 
            if StatsMode == "Sword" and _G.AutoStats then
                local args = {
                    [1] = "AddPoint",
                    [2] = "Sword",
                    [3] = PointStats
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            end 
            if StatsMode == "Gun" and _G.AutoStats then
                local args = {
                    [1] = "AddPoint",
                    [2] = "Gun",
                    [3] = PointStats
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            end 
            if StatsMode == "Fruit" and _G.AutoStats then
                local args = {
                    [1] = "AddPoint",
                    [2] = "Demon Fruit",
                    [3] = PointStats
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            end
        end
    end
end)
Slider = spl:AddSlider("Slider", {
        Title = "Point Stats",
        Description = "",
        Default = 1,
        Min = 1,
        Max = 1000,
        Rounding = 0,
        Callback = function(value)
        PointStats = value
    end
})
Toggle = spl:AddToggle("Toggle", { Title = "Auto Up Stats", Description = "", Default = false })
Toggle:OnChanged(function(Value)
    _G.AutoStats = Value
end)
game.StarterGui:SetCore("SendNotification", {
      Icon = "";     
      Title = "Hiru Hub", 
      Text = "Successfully";
})
print("Loading Script Success")
spawn(function()
    while wait() do
    for i,v in pairs(game.Players:GetPlayers()) do
        if v.Name == "red_game43" or v.Name == "rip_indra" or v.Name == "Axiore" or v.Name == "Polkster" or v.Name == "wenlocktoad" or v.Name == "Daigrock" or v.Name == "toilamvidamme" or v.Name == "oofficialnoobie" or v.Name == "Uzoth" or v.Name == "Azarth" or v.Name == "arlthmetic" or v.Name == "Death_King" or v.Name == "Lunoven" or v.Name == "TheGreateAced" or v.Name == "rip_fud" or v.Name == "drip_mama" or v.Name == "layandikit12" or v.Name == "Hingoi" then
            Hop()
            end
        end
    end
end)