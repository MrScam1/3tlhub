getgenv().BFSettings = {
    Team = "Pirates", -- Marines
    FpsBooster = true,
    BlackScreen = false,
    LockFrag = 15000,
    AwakFruit = true,
    Optional = { SkipLevel = true,},
    EvoRace = false, --Human, Mink
    AutoItems = {
        Pole = false,
        Saber = false,
        SoulGuitar = false,
        CDK = true,
        GetMirrorFactorWhenHaveCup = false,
    },
    Mastery = {
        Melee = true, -- 600 mastery
        Sword = {
            Enable = true,
            Method = "Half" -- Half/Full
        },
    },
    Fruit = {
        SelectFruitToSnipe = "Light-Light",
        SnipeFruit = true
    },
    HopOption = {
        HopFindFullMoonGetSG = true,
    },
}
if getgenv().Ran then
    return warn('Ran')
end
repeat task.wait() until game:IsLoaded() and game:GetService("Players") and game.Players.LocalPlayer and game.Players.LocalPlayer:FindFirstChild("PlayerGui")
player                                   = game:GetService("Players")
LocalPlayer                              = player.LocalPlayer
PlayerGui                                = LocalPlayer:WaitForChild('PlayerGui')
local World1, World2, World3, Request_Places
if game.PlaceId == 2753915549 then
    World1 = true
    Request_Places = {
        ["Whirl Pool"] = CFrame.new(3864.6884765625, 6.736950397491455, -1926.214111328125),
        ["Sky Area 1"] = CFrame.new(-4607.82275, 872.54248, -1667.55688),
        ["Sky Area 2"] = CFrame.new(-7894.61767578125, 5547.1416015625, -380.29119873046875),
        ["Fish Man"] = CFrame.new(61163.8515625, 11.6796875, 1819.7841796875)
    }
elseif game.PlaceId == 4442272183 then
    World2 = true
    Request_Places = {
        ["Swan's room"] = CFrame.new(2284.912109375, 15.152046203613281, 905.48291015625),
        ["Mansion"] = CFrame.new(-288.46246337890625, 306.130615234375, 597.9988403320312),
        ["Ghost Ship"] = CFrame.new(923.21252441406, 126.9760055542, 32852.83203125),
        ["Ghost Ship Entrance"] = CFrame.new(-6508.5581054688, 89.034996032715, -132.83953857422)
    }
elseif game.PlaceId == 7449423635 then
    World3 = true
    Request_Places = {
        ["Castle on the sea"] = CFrame.new(-5075.50927734375, 314.5155029296875, -3150.0224609375),
        ["Mansion"] = CFrame.new(-12548.998046875, 332.40396118164, -7603.1865234375),
        ["Hydra Island"] = CFrame.new(5661.53027, 1013.38354, -334.961914),
        ["Temple Of Time"] = CFrame.new(28286.35546875, 14895.3017578125, 102.62469482421875),
        ["Green Tree"] = CFrame.new(3028.84082, 2281.20264, -7324.7832)
    }
end
local FruitsId = {
    ["rbxassetid://15124425041"] = "Rocket-Rocket",
    ["rbxassetid://15123685330"] = "Spin-Spin",
    ["rbxassetid://15123613404"] = "Blade-Blade",
    ["rbxassetid://15123689268"] = "Spring-Spring",
    ["rbxassetid://15123595806"] = "Bomb-Bomb",
    ["rbxassetid://15123677932"] = "Smoke-Smoke",
    ["rbxassetid://15124220207"] = "Spike-Spike",
    ["rbxassetid://121545956771325"] = "Flame-Flame",
    ["rbxassetid://15123673019"] = "Sand-Sand",
    ["rbxassetid://15123618591"] = "Dark-Dark",
    ["rbxassetid://77885466312115"] = "Eagle-Eagle",
    ["rbxassetid://15112600534"] = "Diamond-Diamond",
    ["rbxassetid://15123640714"] = "Light-Light",
    ["rbxassetid://15123668008"] = "Rubber-Rubber",
    ["rbxassetid://15123662036"] = "Ghost-Ghost",
    ["rbxassetid://15123645682"] = "Magma-Magma",
    ["rbxassetid://15123606541"] = "Quake-Quake",
    ["rbxassetid://15123606541"] = "Buddha-Buddha",
    ["rbxassetid://15123643097"] = "Love-Love",
    ["rbxassetid://15123681598"] = "Spider-Spider",
    ["rbxassetid://116828771482820"] = "Creation-Creation",
    ["rbxassetid://15123679712"] = "Sound-Sound",
    ["rbxassetid://15123654553"] = "Phoenix-Phoenix",
    ["rbxassetid://15123656798"] = "Portal-Portal",
    ["rbxassetid://15123670514"] = "Rumble-Rumble",
    ["rbxassetid://15123652069"] = "Pain-Pain",
    ["rbxassetid://15123587371"] = "Blizzard-Blizzard",
    ["rbxassetid://15123633312"] = "Gravity-Gravity",
    ["rbxassetid://15123648309"] = "Mammoth-Mammoth",
    ["rbxassetid://15694681122"] = "T-Rex-T-Rex",
    ["rbxassetid://15123624401"] = "Dough-Dough",
    ["rbxassetid://15123675904"] = "Shadow-Shadow",
    ["rbxassetid://10773719142"] = "Venom-Venom",
    ["rbxassetid://15123616275"] = "Control-Control",
    ["rbxassetid://11911905519"] = "Spirit-Spirit",
    ["rbxassetid://15123638064"] = "Leopard-Leopard",
    ["rbxassetid://15487764876"] = "Kitsune-Kitsune",
    ["rbxassetid://115276580506154"] = "Yeti-Yeti",
    ["rbxassetid://118054805452821"] = "Gas-Gas",
    ["rbxassetid://95749033139458"] = "Dragon East-Dragon East"
}
local CFrame_Mobs = {
    ["Bandit"] = CFrame.new(1045.962646484375, 27.00250816345215, 1560.8203125),
    ["Monkey"] = CFrame.new(-1448.51806640625, 67.85301208496094, 11.46579647064209),
    ["Gorilla"] = CFrame.new(-1129.8836669921875, 40.46354675292969, -525.4237060546875),
    ["Pirate"] = CFrame.new(-1103.513427734375, 13.752052307128906, 3896.091064453125),
    ["Brute"] = CFrame.new(-1140.083740234375, 14.809885025024414, 4322.92138671875),
    ["Desert Bandit"] = CFrame.new(924.7998046875, 6.44867467880249, 4481.5859375),
    ["Desert Officer"] = CFrame.new(1608.2822265625, 8.614224433898926, 4371.00732421875),
    ["Snow Bandit"] = CFrame.new(1354.347900390625, 87.27277374267578, -1393.946533203125),
    ["Snowman"] = CFrame.new(1201.6412353515625, 144.57958984375, -1550.0670166015625),
    ["Chief Petty Officer"] = { CFrame.new(-4881.23095703125, 22.65204429626465, 4273.75244140625), CFrame.new(-4665, 21, 4516) },
    ["Sky Bandit"] = CFrame.new(-4953.20703125, 295.74420166015625, -2899.22900390625),
    ["Dark Master"] = CFrame.new(-5259.8447265625, 391.3976745605469, -2229.035400390625),
    ["Prisoner"] = CFrame.new(5098.9736328125, -0.3204058110713959, 474.2373352050781),
    ["Dangerous Prisoner"] = { CFrame.new(5261, 2, 1088), CFrame.new(5654.5634765625, 15.633401870727539, 866.2991943359375) },
    ["Toga Warrior"] = CFrame.new(-1820.21484375, 51.68385696411133, -2740.6650390625),
    ["Gladiator"] = { CFrame.new(-1483, 36, -3188), CFrame.new(-1282, 36, -3059), CFrame.new(-1380, 36, -3405), CFrame.new(-1104, 36, -3260) },
    ["Military Soldier"] = CFrame.new(-5411.16455078125, 11.081554412841797, 8454.29296875),
    ["Military Spy"] = CFrame.new(-5802.8681640625, 86.26241302490234, 8828.859375),
    ["Fishman Warrior"] = CFrame.new(60878.30078125, 18.482830047607422, 1543.7574462890625),
    ["Fishman Commando"] = CFrame.new(61922.6328125, 18.482830047607422, 1493.934326171875),
    ["God's Guard"] = CFrame.new(-4710.04296875, 845.2769775390625, -1927.3079833984375),
    ["Shanda"] = CFrame.new(-7678.48974609375, 5566.40380859375, -497.2156066894531),
    ["Royal Squad"] = CFrame.new(-7624.25244140625, 5658.13330078125, -1467.354248046875),
    ["Royal Soldier"] = CFrame.new(-7836.75341796875, 5645.6640625, -1790.6236572265625),
    ["Galley Pirate"] = CFrame.new(5551.02197265625, 78.90135192871094, 3930.412841796875),
    ["Galley Captain"] = CFrame.new(5441.95166015625, 42.50205993652344, 4950.09375),
    ["Raider"] = { CFrame.new(-728.3267211914062, 52.779319763183594, 2345.7705078125), CFrame.new(359, 40, 2342) },
    ["Mercenary"] = CFrame.new(-1004.3244018554688, 80.15886688232422, 1424.619384765625),
    ["Swan Pirate"] = CFrame.new(1068.664306640625, 137.61428833007812, 1322.1060791015625),
    ["Factory Staff"] = { CFrame.new(73.07867431640625, 81.86344146728516, -27.470672607421875), CFrame.new(661, 73, 93) },
    ["Marine Lieutenant"] = CFrame.new(-2821.372314453125, 75.89727783203125, -3070.089111328125),
    ["Marine Captain"] = CFrame.new(-1861.2310791015625, 80.17658233642578, -3254.697509765625),
    ["Zombie"] = CFrame.new(-5657.77685546875, 78.96973419189453, -928.68701171875),
    ["Vampire"] = CFrame.new(-6037.66796875, 32.18463897705078, -1340.6597900390625),
    ["Snow Trooper"] = CFrame.new(549.1473388671875, 427.3870544433594, -5563.69873046875),
    ["Winter Warrior"] = CFrame.new(1142.7451171875, 475.6398010253906, -5199.41650390625),
    ["Lab Subordinate"] = CFrame.new(-5707.4716796875, 15.951709747314453, -4513.39208984375),
    ["Horned Warrior"] = CFrame.new(-6341.36669921875, 15.951770782470703, -5723.162109375),
    ["Magma Ninja"] = CFrame.new(-5449.6728515625, 76.65874481201172, -5808.20068359375),
    ["Lava Pirate"] = CFrame.new(-5213.33154296875, 49.73788070678711, -4701.451171875),
    ["Ship Deckhand"] = { CFrame.new(1212.0111083984375, 150.79205322265625, 33059.24609375), CFrame.new(616, 125, 33062) },
    ["Ship Engineer"] = CFrame.new(919.4786376953125, 43.54401397705078, 32779.96875),
    ["Ship Steward"] = CFrame.new(919.4385375976562, 129.55599975585938, 33436.03515625),
    ["Ship Officer"] = CFrame.new(1036.0179443359375, 181.4390411376953, 33315.7265625),
    ["Arctic Warrior"] = CFrame.new(5966.24609375, 62.97002029418945, -6179.3828125),
    ["Snow Lurker"] = CFrame.new(5407.07373046875, 69.19437408447266, -6880.88037109375),
    ["Sea Soldier"] = { CFrame.new(-3311, 27, -9784), CFrame.new(-2745, 83, -9818) },
    ["Water Fighter"] = CFrame.new(-3352.9013671875, 285.01556396484375, -10534.841796875),
    ["Pirate Millionaire"] = { CFrame.new(-621, 57, 5616), CFrame.new(-133, 57, 5741) },
    ["Pistol Billionaire"] = { CFrame.new(-768, 158, 6065), CFrame.new(-12, 147, 6221) },
    ["Dragon Crew Warrior"] = CFrame.new(6141.140625, 51.35136413574219, -1340.738525390625),
    ["Dragon Crew Archer"] = CFrame.new(6616.41748046875, 441.7670593261719, 446.0469970703125),
    ["Female Islander"] = CFrame.new(4685.25830078125, 735.8078002929688, 815.3425903320312),
    ["Giant Islander"] = CFrame.new(4729.09423828125, 590.436767578125, -36.97627639770508),
    ["Marine Commodore"] = {CFrame.new(2441, 75, -7603), CFrame.new(2830, 75, -7958)},
    ["Marine Rear Admiral"] = CFrame.new(3656.773681640625, 160.52406311035156, -7001.5986328125),
    ["Fishman Raider"] = CFrame.new(-10407.5263671875, 331.76263427734375, -8368.5166015625),
    ["Fishman Captain"] = CFrame.new(-10994.701171875, 352.38140869140625, -9002.1103515625),
    ["Forest Pirate"] = CFrame.new(-13274.478515625, 332.3781433105469, -7769.58056640625),
    ["Mythological Pirate"] = CFrame.new(-13680.607421875, 501.08154296875, -6991.189453125),
    ["Jungle Pirate"] = CFrame.new(-12256.16015625, 331.73828125, -10485.8369140625),
    ["Musketeer Pirate"] = CFrame.new(-13457.904296875, 391.545654296875, -9859.177734375),
    ["Reborn Skeleton"] = CFrame.new(-8763.7236328125, 165.72299194335938, 6159.86181640625),
    ["Living Zombie"] = CFrame.new(-10144.1318359375, 138.62667846679688, 5838.0888671875),
    ["Demonic Soul"] = CFrame.new(-9505.8720703125, 172.10482788085938, 6158.9931640625),
    ["Posessed Mummy"] = CFrame.new(-9582.0224609375, 6.251527309417725, 6205.478515625),
    ["Peanut Scout"] = CFrame.new(-2143.241943359375, 47.72198486328125, -10029.9951171875),
    ["Peanut President"] = CFrame.new(-1859.35400390625, 38.10316848754883, -10422.4296875),
    ["Ice Cream Chef"] = CFrame.new(-872.24658203125, 65.81957244873047, -10919.95703125),
    ["Ice Cream Commander"] = CFrame.new(-558.06103515625, 112.04895782470703, -11290.7744140625),
    ["Cookie Crafter"] = CFrame.new(-2374.13671875, 37.79826354980469, -12125.30859375),
    ["Cake Guard"] = CFrame.new(-1598.3070068359375, 43.773197174072266, -12244.5810546875),
    ["Baking Staff"] = CFrame.new(-1887.8099365234375, 77.6185073852539, -12998.3505859375),
    ["Head Baker"] = CFrame.new(-2216.188232421875, 82.884521484375, -12869.2939453125),
    ["Cocoa Warrior"] = CFrame.new(-21.55328369140625, 80.57499694824219, -12352.3876953125),
    ["Chocolate Bar Battler"] = CFrame.new(582.590576171875, 77.18809509277344, -12463.162109375),
    ["Sweet Thief"] = CFrame.new(165.1884765625, 76.05885314941406, -12600.8369140625),
    ["Candy Rebel"] = CFrame.new(134.86563110351562, 77.2476806640625, -12876.5478515625),
    ["Candy Pirate"] = CFrame.new(-1310.5003662109375, 26.016523361206055, -14562.404296875),
    ["Snow Demon"] = CFrame.new(-977, 38, -14443),
    ["Isle Outlaw"] = CFrame.new(-16479.900390625, 226.6117401123047, -300.3114318847656),
    ["Island Boy"] = CFrame.new(-16849.396484375, 192.86505126953125, -150.7853240966797),
    ["Sun-kissed Warrior"] = CFrame.new(-16347, 64, 984),
    ["Isle Champion"] = CFrame.new(-16602.1015625, 130.38734436035156, 1087.24560546875),
    ["Serpent Hunter"] = CFrame.new(-16497, 149, 1561),
    ["Skull Slayer"] = CFrame.new(-16853, 193, 1759),
    ["Venomous Assailant"] = { CFrame.new(4343, 1252, 438), CFrame.new(4789, 1079, 978) },
    ["Hydra Enforcer"] = CFrame.new(4521.85498, 1003.24078, 363.124542, 1, 0, 0, 0, 1, 0, 0, 0, 1),
    ["Coral Pirate"] = CFrame.new(10747, -2049, 9446),
    ["Reef Bandit"] = CFrame.new(11000, -2159, 9187),
    ["Sea Chanter"] = CFrame.new(10629, -2025, 10052),
    ["Ocean Prophet"] = CFrame.new(11006, -2006, 10154),
}
function CheckSea(e)
    if game.PlaceId == 2753915549 then
        if e == 1 then
            return true
        end
    elseif game.PlaceId == 4442272183 then
        if e == 2 then
            return true
        end
    elseif game.PlaceId == 7449423635 then
        if e == 3 then
            return true
        end
    end
    return false
end

if getgenv().BFSettings["Team"] ~= "Pirates" and getgenv().BFSettings["Team"] ~= "Marines" then
    getgenv().BFSettings["Team"] = "Pirates"
elseif getgenv().BFSettings["Mastery"]["Sword"]["Method"] ~= "Half" and getgenv().BFSettings["Mastery"]["Sword"]["Method"] ~= "Full" then
    getgenv().BFSettings["Mastery"]["Sword"]["Method"] = "Half"
end
if LocalPlayer.Team == nil then
    print(1)
    repeat
        repeat wait() until PlayerGui:FindFirstChild("Main (minimal)") and PlayerGui["Main (minimal)"]:FindFirstChild "ChooseTeam"
        local Button = PlayerGui["Main (minimal)"].ChooseTeam
            .Container[getgenv().BFSettings.Team].Frame
            .TextButton
        for i, v in pairs(getconnections(Button.Activated)) do
            v.Function()
        end
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer("SetTeam", BFSettings.Team)

        wait(1)
    until LocalPlayer.Team ~= nil
end
repeat wait() until LocalPlayer.DataLoaded
function q1(I, II)
    if not II then
        II = game.Players.LocalPlayer.Character.PrimaryPart.CFrame
    end

    return (Vector3.new(I.X, 0, I.Z) - Vector3.new(II.X, 0, II.Z)).Magnitude
end

local function CheckPlayerAlly(__Player)
    if tostring(__Player.Team) == "Marines" and __Player.Team == LocalPlayer.Team then
        return false
    end
    return true
end
function GetDistance(target1, taget2)
    if not taget2 then
        taget2 = game.Players.LocalPlayer.Character.HumanoidRootPart
    end

    local a = target1.Position
    local a2 = taget2.Position

    return (a - a2).Magnitude
end
--[[spawn(function()
    while wait() do
        if #getHead() > 0 then
            local Heads = getHead()
            local EnemyHitbox = Heads[1][2]
            local Enemy = EnemyHitbox.Parent
            local Times = if Enemy:GetAttribute("IsBoss") then 25 elseif Enemy:GetAttribute("RaidBoss") then 40 else 6
            table.insert(Heads, LocalPlayer)
            local Overheat = 0;
            while Overheat <= 0.4 do
                spawn(function()
                    for i = 1, Times do
                        RegisterAttack:FireServer(0.3)
                        --task.spawn(HIT_FUNCTION, EnemyHitbox, Heads)
                        if SUCCESS_FLAGS and COMBAT_REMOTE_THREAD and SUCCESS_HIT and HIT_FUNCTION then
                            HIT_FUNCTION(EnemyHitbox, Heads)
                        else
                            RegisterHit:FireServer(EnemyHitbox, Heads)
                        end
                    end
                end)
                Overheat += task.wait(if Times > 10 then 0.07 else 0)
            end
        end
    end
end)--]]
Character                                = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
HitboxLimbs = { "RightLowerArm", "RightUpperArm", "LeftLowerArm", "LeftUpperArm", "RightHand", "LeftHand" }
ServerData = {}
ServerData.Bosses = {}
ServerData.ServerFruit = {}
Bosses = ServerData.Bosses
LocalPlayer.CharacterAdded:Connect(function(char)
    Character = char
end)
do
    local hum = Character:WaitForChild("Humanoid")
    hum:GetPropertyChangedSignal("Sit"):Connect(function()
        if hum.Sit then
            VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.Space, false, game)
            repeat
                wait(0.1) -- Giảm thời gian chờ trong vòng lặp để ít tốn tài nguyên hơn
            until not humanoid.Sit
            VirtualInputManager:SendKeyEvent(false, Enum.KeyCode.Space, false, game)
        end
    end)
end

ReplicatedStorage                        = game:GetService("ReplicatedStorage")
NPCLists                                 = ReplicatedStorage:WaitForChild('NPCs')
Remotes                                  = ReplicatedStorage:WaitForChild("Remotes")
Quests                                   = require(ReplicatedStorage.Quests)
GuideModule                              = require(ReplicatedStorage:WaitForChild("GuideModule"))

CommF                                    = Remotes:WaitForChild("CommF_")
Modules                                  = ReplicatedStorage:WaitForChild("Modules")
Net                                      = Modules:WaitForChild("Net")

RegisterAttack                           = Net:WaitForChild("RE/RegisterAttack")
RegisterHit                              = Net:WaitForChild("RE/RegisterHit")

VirtualInputManager                      = game:GetService("VirtualInputManager")
Enemies                                  = workspace:WaitForChild("Enemies")
PlrData                                  = LocalPlayer:WaitForChild("Data")
Level                                    = PlrData:WaitForChild("Level")
Fragments                                = PlrData:WaitForChild("Fragments")
Beli                                     = PlrData:WaitForChild("Beli")
LastSpawn                                = PlrData:WaitForChild('LastSpawnPoint')
Race                                     = PlrData:WaitForChild('Race')
LevelMax                                 = tonumber(require(game.ReplicatedStorage.Modules.Player.PlayerConfig).LEVEL_CAP) or 2750
local buychip
getgenv().MeleeTask = nil
getgenv().CDKQuest = nil
FakeGuideModule = {
    ["BuggyQuest1"] = "Pirate Adventurer",
    ["FountainQuest"] = "Freezeburg Quest Giver",
    ["ColosseumQuest"] = "Colosseum Quest Giver",
    ["SkyQuest"] = "Sky Adventurer",
    ["JungleQuest"] = "Adventurer",
    ["MagmaQuest"] = "The Mayor",
    ["PrisonerQuest"] = "Jail Keeper",
    ["SkyExp2Quest"] = "Sky Quest Giver 2",
    ["MarineQuest2"] = "Marine",
    ["BanditQuest1"] = "Bandit Quest Giver",
    ["FishmanQuest"] = "King Neptune",
    ["MarineQuest"] = "Marine Leader",
    ["SkyExp1Quest"] = "Mole",
    ["DesertQuest"] = "Desert Adventurer",
    ["ImpelQuest"] = "Head Jailer",
    ["SnowQuest"] = "Villager",
    ["IceSideQuest"] = "Ice Quest Giver",
    ["ZombieQuest"] = "Graveyard Quest Giver",
    ["Area2Quest"] = "Area 2 Quest Giver",
    ["Area1Quest"] = "Area 1 Quest Giver",
    ["MarineQuest3"] = "Marine Quest Giver",
    ["SnowMountainQuest"] = "Snow Quest Giver",
    ["ShipQuest1"] = "Rear Crew Quest Giver",
    ["FireSideQuest"] = "Fire Quest Giver",
    ["ShipQuest2"] = "Front Crew Quest Giver",
    ["ForgottenQuest"] = "Forgotten Quest Giver",
    ["FrostQuest"] = "Frost Quest Giver",
    ["IceCreamIslandQuest"] = "Ice Cream Quest Giver",
    ["VenomCrewQuest"] = "Hydra Town Quest Giver",
    ["ChocQuest1"] = "Chocolate Quest Giver 1",
    ["DeepForestIsland"] = "Deep Forest Quest Giver",
    ["DragonCrewQuest"] = "Dragon Crew Quest Giver",
    ["DeepForestIsland2"] = "Deep Forest Area 2 Quest Giver",
    ["NutsIslandQuest"] = "Peanut Quest Giver",
    ["HornedMan"] = "Horned Man",
    ["PiratePortQuest"] = "Pirate Port Quest Giver",
    ["CandyQuest1"] = "Candy Cane Quest Giver",
    ["MarineTreeIsland"] = "Marine Tree Quest Giver",
    ["HauntedQuest2"] = "Haunted Castle Quest Giver 2",
    ["TikiQuest2"] = "Tiki Quest Giver 2",
    ["TikiQuest1"] = "Tiki Quest Giver 1",
    ["DeepForestIsland3"] = "Turtle Adventure Quest Giver",
    ["CakeQuest2"] = "Cake Quest Giver 2",
    ["ArenaTrainer"] = "Arena Trainer",
    ["TikiQuest3"] = "Tiki Quest Giver 3",
    ["CakeQuest1"] = "Cake Quest Giver 1",
    ["ChocQuest2"] = "Chocolate Quest Giver 2",
    ["HauntedQuest1"] = "Haunted Castle Quest Giver 1",
    ["SubmergedQuest1"] = "Submerged Quest Giver 1",
    ["SubmergedQuest2"] = "Submerged Quest Giver 2"
}
ScreenGui                                = Instance.new("ScreenGui");

check2 = false
meleetaskchecked = false
queuechecked = false

local Request_Places2 = {}
for i1,v1 in pairs(workspace._WorldOrigin.PlayerSpawns[tostring(game:GetService("Players").LocalPlayer.Team)]:GetChildren()) do
    if not Request_Places2[v1.Name] then
        Request_Places2[v1.Name] = CFrame.new(v1.WorldPivot.Position)
    end
end
workspace._WorldOrigin.PlayerSpawns[tostring(game:GetService("Players").LocalPlayer.Team)].ChildAdded:Connect(function(aa)
        if not Request_Places2[aa.Name] then
            Request_Places2[aa.Name] = CFrame.new(aa.WorldPivot.Position)
        end
end)
if PlayerGui:FindFirstChild("SpinnerWindow") then
    pcall(function()
        if firesignal then
            firesignal(PlayerGui.SpinnerWindow.CloseButton.Activated)
        else
            for i, v in pairs(getconnections(PlayerGui.SpinnerWindow.CloseButton.Activated )) do
                v.Function()
            end
        end
    end)
end
PlayerGui.ChildAdded:Connect(function(k)
    if k.Name == "SpinnerWindow" then
        pcall(function()
            if firesignal then
                firesignal(k.CloseButton.Activated)
            else
                for i, v in pairs(getconnections(k.CloseButton.Activated)) do
                    v.Function()
                end
            end
        end)
    end
end)
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "3TLHubUI"
ScreenGui.ResetOnSpawn = false
ScreenGui.Parent = PlayerGui
local Frame = Instance.new("Frame")
Frame.Size = UDim2.new(1, 0, 1, 0)
Frame.BackgroundTransparency = 1
Frame.Parent = ScreenGui
local Title = Instance.new("TextLabel")
Title.Size = UDim2.new(0, 400, 0, 100)
Title.Position = UDim2.new(0.5, -200, 0.5, -50)
Title.BackgroundTransparency = 1
Title.Text = "3TL Hub"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextScaled = true
Title.Font = Enum.Font.GothamBold
Title.Parent = Frame
local Stroke = Instance.new("UIStroke")
Stroke.Thickness = 2
Stroke.Color = Color3.fromRGB(0, 0, 0)
Stroke.Parent = Title
local ScreenGui = Instance.new("ScreenGui");
local DropShadowHolder = Instance.new("Frame");
local DropShadow = Instance.new("ImageLabel");
local Main = Instance.new("Frame");
local UICorner = Instance.new("UICorner");
local UIStroke = Instance.new("UIStroke");
local UIGradient = Instance.new("UIGradient");
local Top = Instance.new("TextLabel");
local UIGradient1 = Instance.new("UIGradient");
local Under = Instance.new("TextLabel");
local UIGradient2 = Instance.new("UIGradient");

for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui:GetChildren()) do 
    if v.Name == 'CoinCard' then 
        v:Destroy() 
    end
end
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.Parent = game:GetService("Players").LocalPlayer.PlayerGui
ScreenGui.Name = 'CoinCard'
DropShadowHolder.AnchorPoint = Vector2.new(0.5, 0.5)
DropShadowHolder.BackgroundTransparency = 1
DropShadowHolder.BorderSizePixel = 0
DropShadowHolder.Position = UDim2.new(0.5, 0, 0.1, 0)
DropShadowHolder.Size = UDim2.new(0, 500, 0, 68)
DropShadowHolder.ZIndex = 0
DropShadowHolder.Name = "DropShadowHolder"
DropShadowHolder.Parent = ScreenGui
DropShadow.Image = ""
DropShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
DropShadow.ImageTransparency = 0.5
DropShadow.ScaleType = Enum.ScaleType.Slice
DropShadow.SliceCenter = Rect.new(49, 49, 450, 450)
DropShadow.AnchorPoint = Vector2.new(0.5, 0.5)
DropShadow.BackgroundTransparency = 1
DropShadow.BorderSizePixel = 0
DropShadow.Position = UDim2.new(0.5, 0, 0.5, 0)
DropShadow.Size = UDim2.new(1, 47, 1, 47)
DropShadow.ZIndex = 0
DropShadow.Name = "DropShadow"
DropShadow.Parent = DropShadowHolder

Main.AnchorPoint = Vector2.new(0.5, 0.5)
Main.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Main.BackgroundTransparency = 0.5
Main.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.BorderSizePixel = 0
Main.Position = UDim2.new(0.5, 0, 0.5, 0)
Main.Size = UDim2.new(1, -47, 1, -47)
Main.Name = "Main"
Main.Parent = DropShadow

UICorner.CornerRadius = UDim.new(0, 5)
UICorner.Parent = Main

UIStroke.Color = Color3.fromRGB(255, 255, 255)
UIStroke.Thickness = 2.5
UIStroke.Parent = Main

UIGradient.Color = ColorSequence.new{
ColorSequenceKeypoint.new(0, Color3.fromRGB(192, 192, 192)),
ColorSequenceKeypoint.new(1, Color3.fromRGB(192, 192, 192))
}
UIGradient.Parent = UIStroke

Top.Font = Enum.Font.GothamBold
Top.Text = "Checking..."
Top.TextColor3 = Color3.fromRGB(255, 255, 255)
Top.TextSize = 16.5
Top.TextYAlignment = Enum.TextYAlignment.Bottom
Top.AnchorPoint = Vector2.new(0.5, 0)
Top.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Top.BackgroundTransparency = 0.9990000128746033
Top.BorderColor3 = Color3.fromRGB(0, 0, 0)
Top.BorderSizePixel = 0
Top.Position = UDim2.new(0.5, 0, 0, 15)
Top.Size = UDim2.new(0, 500, 0, 18)
Top.Name = "Top"
Top.Parent = Main

UIGradient1.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0, Color3.fromRGB(192, 192, 192)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(192, 192, 192))
}
UIGradient1.Parent = Top

Under.Font = Enum.Font.GothamBold
Under.Text = "None"
Under.TextColor3 = Color3.fromRGB(255, 255, 255)
Under.TextSize = 18
Under.TextYAlignment = Enum.TextYAlignment.Bottom
Under.AnchorPoint = Vector2.new(0.5, 0)
Under.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Under.BackgroundTransparency = 0.9990000128746033
Under.BorderColor3 = Color3.fromRGB(0, 0, 0)
Under.BorderSizePixel = 0
Under.Position = UDim2.new(0.5, 0, 0, 35)
Under.Size = UDim2.new(0, 500, 0, 18)
Under.Name = "Under"
Under.Parent = Main

UIGradient2.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0, Color3.fromRGB(192, 192, 192)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(192, 192, 192))
}
UIGradient2.Parent = Under
Top.Size = UDim2.new(0, Top.TextBounds.X, 0, 18)
Under.Size = UDim2.new(0, Under.TextBounds.X, 0, 18)
if Top.Size.X.Offset > Under.Size.X.Offset then
    DropShadowHolder.Size = UDim2.new(0, Top.TextBounds.X + 50, 0, 68)
else
    DropShadowHolder.Size = UDim2.new(0, Under.TextBounds.X + 50, 0, 68)
end
Top:GetPropertyChangedSignal("Text"):Connect(function()
    Top.Size = UDim2.new(0, Top.TextBounds.X, 0, 18)
    if Top.Size.X.Offset > Under.Size.X.Offset then
        DropShadowHolder.Size = UDim2.new(0, Top.TextBounds.X + 50, 0, 68)
    else
        DropShadowHolder.Size = UDim2.new(0, Under.TextBounds.X + 50, 0, 68)
    end
end)
Under:GetPropertyChangedSignal("Text"):Connect(function()
    Under.Size = UDim2.new(0, Under.TextBounds.X, 0, 18)
    if Top.Size.X.Offset > Under.Size.X.Offset then
        DropShadowHolder.Size = UDim2.new(0, Top.TextBounds.X + 50, 0, 68)
    else
        DropShadowHolder.Size = UDim2.new(0, Under.TextBounds.X + 50, 0, 68)
    end
end)
getgenv().Settings2 = {}
local SaveFileName2 = "!Blacklist_Servers.json"
function SaveSettings2(JobId)
    local HttpService = game:GetService("HttpService")
    if not isfolder("3TL Hub") then
        makefolder("3TL Hub")
    end
    if JobId then Settings2[JobId] = tick() end
    writefile("3TL Hub/"..SaveFileName2, HttpService:JSONEncode(Settings2))
end

function ReadSetting2()
    local s, e =
        pcall(
        function()
            local HttpService = game:GetService("HttpService")
            if not isfolder("3TL Hub") then
                makefolder("3TL Hub")
            end
            return isfile("3TL Hub/"..SaveFileName2) and HttpService:JSONDecode(readfile("3TL Hub/"..SaveFileName2))
        end
    )
    if s and e then
        return e
    else
        SaveSettings2()
        return ReadSetting2()
    end
end
Settings2 = ReadSetting2()
if not game:GetService("Players").LocalPlayer.PlayerScripts.EffectsLocalThread.Disabled then game:GetService("Players").LocalPlayer.PlayerScripts.EffectsLocalThread.Disabled = true end
if getgenv().BFSettings.FpsBooster then
    spawn(function()
        PlayerGui.Notifications.Enabled = false

        L_1 = game:GetService("Workspace");
        L_2 = game:GetService("Lighting");
        L_3 = L_1.Terrain;
        L_4 = game:GetService("Players");
        L_5 = L_4.LocalPlayer.Character;

        L_3.WaterWaveSize = 0; L_3.WaterWaveSpeed = 0; L_3.WaterReflectance = 0; L_3.WaterTransparency = 0;
        L_2.GlobalShadows = false; L_2.FogEnd = tonumber(9e9); L_2.Brightness = 0;
        settings().Rendering.QualityLevel = "Level01";
        settings().Rendering.GraphicsMode = "NoGraphics";
        UserSettings():GetService("UserGameSettings").MasterVolume = 0
        UserSettings():GetService("UserGameSettings").SavedQualityLevel = 1
        workspace.LevelOfDetail = Enum.ModelLevelOfDetail.Disabled
        game:GetService("Lighting").GlobalShadows = false
        game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.PlayerList, false)
        settings().Rendering.MeshPartDetailLevel = Enum.MeshPartDetailLevel.Level04
        for i, v in pairs(L_1:GetDescendants()) do
            if v.ClassName == "Part" or v.ClassName == "SpawnLocation" or v.ClassName == "WedgePart" or v.ClassName == "Terrain" or v.ClassName == "MeshPart" then
                v.Material = "Plastic"; v.Reflectance = 0; v.CastShadow = false;
            elseif v.ClassName == "Decal" or v:IsA("Texture") then
                v.Texture = 0; v.Transparency = 1;
            elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
                v.LightInfluence = 0; v.Texture = 0; 
            elseif v:IsA("Explosion") then
                v.BlastPressure = 0; v.BlastRadius = 0;
            elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") or v:IsA("Sparkles") then
                v.Enabled = false;
            elseif v:IsA("MeshPart") then
                v.Material = "Plastic"; v.Reflectance = 0; v.TextureId = 0; v.CastShadow = false; v.RenderFidelity =
                    Enum.RenderFidelity.Performance;
            elseif v.ClassName == "SpecialMesh" then
                v.TextureId = "rbxassetid://0";
            elseif v.ClassName == "Shirt" or v.ClassName == "Pants" or v.ClassName == "Accessory" then
                v:Destroy();
            end
        end
        for i, v in pairs(L_2:GetDescendants()) do
            if v:IsA("BlurEffect") or v:IsA("SunRaysEffect") or v:IsA("ColorCorrectionEffect") or v:IsA("BloomEffect") or v:IsA("DepthOfFieldEffect") then
                v.Enabled = false;
            end
        end
        for i, v in pairs(L_5:GetDescendants()) do
            if v.ClassName == "Shirt" or v.ClassName == "Pants" or v.ClassName == "Accessory" then
                v:Destroy();
            end
        end

        if game.PlaceId == 2753915549 or 4442272183 or 7449423635 then     -- Blox Fruits
            if game:GetService("ReplicatedStorage").Effect.Container.Shared:FindFirstChild("AirDash") then
                game:GetService("ReplicatedStorage").Effect.Container.Shared.AirDash:Destroy();
            end
            if game:GetService("ReplicatedStorage").Effect.Container.Shared:FindFirstChild("LightningTP") then
                game:GetService("ReplicatedStorage").Effect.Container.Shared.LightningTP:Destroy();
            end
            if game:GetService("ReplicatedStorage").Effect.Container.Misc:FindFirstChild("Damage") then
                game:GetService("ReplicatedStorage").Effect.Container.Misc.Damage:Destroy();
            end
            if game:GetService("ReplicatedStorage").Effect.Container.Misc:FindFirstChild("Confetti") then
                game:GetService("ReplicatedStorage").Effect.Container.Misc.Confetti:Destroy();
            end
            if game:GetService("ReplicatedStorage").Effect.Container:FindFirstChild("LevelUp") then
                game:GetService("ReplicatedStorage").Effect.Container.LevelUp:Destroy();
            end
        end
        shared.BC_2 = true

    end)
end
repeat wait() until type(CommF:InvokeServer("getInventory")) == "table"
SUCCESS_FLAGS, COMBAT_REMOTE_THREAD = pcall(function()
    return require(Modules.Flags).COMBAT_REMOTE_THREAD or false
end)
SUCCESS_HIT, HIT_FUNCTION = pcall(function()
    return (getmenv or getsenv)(Net)._G.SendHitsToServer
end)
function getHead(checkplayer)
    local returntable = {}
    for _, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
        if #returntable >= 2 then break end
        if not table.find({'FishBoat', 'Brigade', 'PirateGrandBrigade'}, v.Name) and skidymf(v) then
            if GetDistance(v.HumanoidRootPart) < 60 then
                table.insert(returntable, {v, v.HumanoidRootPart})
            end
        end
    end
    if checkplayer and #returntable < 2 then
        for i, v in pairs(workspace.Characters:GetChildren()) do
            if v ~= LocalPlayer.Character and v.Parent == workspace.Characters and IsPlayerAlive(player:GetPlayerFromCharacter(v)) and GetDistance(v.HumanoidRootPart, LocalPlayer.Character.HumanoidRootPart) < 60 and CheckPlayerAlly(player:GetPlayerFromCharacter(v)) then
                table.insert(returntable, {v, v.HumanoidRootPart})
            end
        end
    end
    return returntable
end
function FastAttacked(Enemy)
    local Equipped = LocalPlayer.Character:FindFirstChildOfClass("Tool")
    if Equipped then
        local getHeadAttack = getHead(true)
        local v1 = tostring(LocalPlayer.UserId):sub(2, 4) .. tostring(coroutine.running()):sub(11, 15)
        if #getHeadAttack > 0 then
            RegisterAttack:FireServer(0.3)
            if SUCCESS_FLAGS and COMBAT_REMOTE_THREAD and SUCCESS_HIT and HIT_FUNCTION then
                HIT_FUNCTION(Enemy.HumanoidRootPart, getHeadAttack, nil, v1)
            elseif SUCCESS_FLAGS and not COMBAT_REMOTE_THREAD then
                RegisterHit:FireServer(Enemy.HumanoidRootPart, getHeadAttack)
            end
        end
    end
end
local DoughBoss, Elites, MobSpawnClone, UselessQuest, CFrameByLevelQuest, needunlock =
    {
        "Dough King",
        "Cake Prince",
    },
    {
        "Deandre",
        "Urban",
        "Diablo"
    }, {},
    {
        "BartiloQuest",
        "Trainees",
        "MarineQuest",
        "CitizenQuest"
    }, {},
    {"PineappleTown", "Hydra1", "Hydra2", "Hydra3", "SeaCastle", "BigMansion"}
function CheckNearest()
    local ObjectNearest;
    local NearestList = {};
    for i, v in pairs(game.Players:GetChildren()) do
        if v.Name ~= game.Players.LocalPlayer.Name and v.Character:FindFirstChild("Humanoid") and v.Character:FindFirstChild("HumanoidRootPart") and v.Character.Humanoid.Health > 0 then
            table.insert(NearestList, v)
        end
    end
    if NearestList[1] ~= nil then
        ObjectNearest = NearestList[1]
    end
    if ObjectNearest ~= nil then
        for i, v in pairs(NearestList) do
            if (game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").Position - v.Character:FindFirstChild("HumanoidRootPart").Position).magnitude <= (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - ObjectNearest.Character:FindFirstChild("HumanoidRootPart").Position).magnitude then
                ObjectNearest = v
            end
        end
    end
    return ObjectNearest
end

function check2xexp()
    if string.find(string.lower(tostring(PlayerGui.Main.Level.Exp.Text)), "2x") then
        return true
    end
    return false
end

local Priority = {
    ["Do Sea 2 Quest"] = 1,
    ["Auto Third Sea"] = 2,
    ["Collect Berries"] = 3,
    ["Getting Pole"] = 4,
    ["Getting Saber"] = 5,
    ["Bartilo Quest"] = 6,
    ["Evo Race V2"] = 7,
    ["Evo Race V3"] = 8,
    ["Getting Yama"] = 9,
    ["Get Mirror"] = 10,
    ["Farming Elite"] = 11,
    ["Farm Pirate Raid"] = 12,
    ["Collecting Fruit"] = 13,
    ["Getting Tushita"] = 14
}

local PriorityQueue = {}
function PriorityQueue:new()
    local obj = { queue = {} }
    setmetatable(obj, self)
    self.__index = self
    return obj
end

function PriorityQueue:push(element, priority)
    for i, task in ipairs(self.queue) do
        if task.element == element then
            return
        end
    end
    table.insert(self.queue, { element = element, priority = priority })
    table.sort(self.queue, function(a, b)
        return a.priority > b.priority
    end)
end

local function FastWait(Seconds, Instance, ...)
    local Success, Result = pcall(function(...)
        for _, ChildName in ipairs({ ... }) do
            Instance = Instance:WaitForChild(ChildName, Seconds)
        end
        return Instance
    end, ...)

    return Success and Result or nil
end
function getrealname(Fruit)
    local RealFruitsName = FruitsId
    local Name = Fruit.Name

    local Model = Fruit:WaitForChild("Fruit", 9e9)
    local Idle = FastWait(2, Model, "Idle") or FastWait(1, Model, "Animation") or FastWait(1, Model, "Fruit")

    if Idle and (Idle:IsA("Animation") or Idle:IsA("MeshPart")) then
        if Idle:IsA("MeshPart") then
            Property = "MeshId"
        else
            Property = "AnimationId"
        end
        local RealName = RealFruitsName[Idle[Property] or ""]

        if RealName and type(RealName) == "string" then
            return RealName
        end
        return nil
    end
end

local function CanStoreFruit(fruit)
    local Max_Fruit_Cap = game:GetService("Players").LocalPlayer.Data.FruitCap.Value
    local Fruit_Storage = 0
    for i, v in pairs(CommF:InvokeServer("getInventory")) do
        if v.Type == "Blox Fruit" and v.Name == fruit then
            Fruit_Storage = v.Count
        end
    end
    if Fruit_Storage < Max_Fruit_Cap then
        return true
    end
    return false
end
function StoreFruit(a)
    if getgenv().CurrentFarmTask == "Auto Third Sea" or buychip then return end
    game.ReplicatedStorage.Remotes.CommF_:InvokeServer(
            "StoreFruit",
            tostring(a:GetAttribute("OriginalName")),
            a
        )
end
LocalPlayer.Backpack.ChildAdded:Connect(function(v)
    if string.match(v.Name, "Fruit$") then
        StoreFruit(v)
    end
end)
Character.ChildAdded:Connect(function(v)
    if string.match(v.Name, "Fruit$") then
        StoreFruit(v)
    end
end)
function PriorityQueue:pop(element)
    for i, task in ipairs(self.queue) do
        if task.element == element then
            return table.remove(self.queue, i)
        end
    end
end

function PriorityQueue:top()
    return self.queue[1] and self.queue[1].element
end

function PriorityQueue:empty()
    return #self.queue == 0
end

local queue = PriorityQueue:new()
function CheckNearestRequestIsland2(pos, tpinstant)
    local nearestIsland = nil
    local nearestDist = math.huge
    for name, cframe in pairs(Request_Places) do
        if GetDistance(pos) < 500 or not checkcanentrance() then break end
        local dist = GetDistance(pos, cframe)
        local distotarget = GetDistance(pos)
        if dist < nearestDist and dist < distotarget then
            nearestDist = dist
            nearestIsland = name
        end
    end
    for name, islandPos in pairs(Request_Places2) do
        if World3 or Level.Value < 10 or GetDistance(pos) < 1500 or not tpinstant then break end
        local dist = GetDistance(islandPos, pos)
        local distoplr = GetDistance(islandPos)
        if distoplr <= 9500 and dist < nearestDist then
            nearestDist = dist
            nearestIsland = name
        end
    end
    if nearestIsland then
        if Request_Places2[nearestIsland] then
            return (LastSpawn.Value ~= nearestIsland or GetDistance(Request_Places2[nearestIsland]) >= 1500) and nearestIsland
        elseif GetDistance(Request_Places[nearestIsland], pos) < GetDistance(pos) then
            return nearestIsland
        end
    end
    return nil
end

function IsPlayerAlive(player)
    if not player then
        player = game.Players.LocalPlayer
    end
    if not player or not player:IsA("Player") then
        return false -- Trả về false nếu không phải là người chơi
    end
    local character = player.Character or player:FindFirstChild('Character')
    if not player.Character or player:FindFirstChild('Character') then
        return false -- Trả về false nếu không có nhân vật
    end
    local humanoid = character:FindFirstChildOfClass("Humanoid")
    if not humanoid or humanoid.Health <= 0 then
        return false -- Trả về false nếu không có Humanoid hoặc máu bằng 0
    end
    local rootpart = character:FindFirstChild"HumanoidRootPart"
    if not rootpart then return false end
    -- Nếu tất cả các điều kiện trên đều thỏa mãn, người chơi còn sống
    return true
end

Players = game:GetService("Players")
LP = Players.LocalPlayer
spawn(function()
    pcall(function()
        while wait() do
            pcall(function()
                for i, v in pairs(game.CoreGui.RobloxPromptGui.promptOverlay:GetChildren()) do
                    if v.Name == "ErrorPrompt" and v.Visible and v.TitleFrame.ErrorTitle.Text ~= "Teleport Failed" then
                        game:GetService("TeleportService"):Teleport(game.PlaceId,
                            game:GetService("Players").LocalPlayer)
                    end
                end
            end)
        end
    end)
end)
local FruitsID = {
    ["rbxassetid://15124425041"] = "Rocket-Rocket",
    ["rbxassetid://15123685330"] = "Spin-Spin",
    ["rbxassetid://15123613404"] = "Blade-Blade",
    ["rbxassetid://15123689268"] = "Spring-Spring",
    ["rbxassetid://15123595806"] = "Bomb-Bomb",
    ["rbxassetid://15123677932"] = "Smoke-Smoke",
    ["rbxassetid://15124220207"] = "Spike-Spike",
    ["rbxassetid://121545956771325"] = "Flame-Flame",
    ["rbxassetid://15123673019"] = "Sand-Sand",
    ["rbxassetid://15123618591"] = "Dark-Dark",
    ["rbxassetid://77885466312115"] = "Eagle-Eagle",
    ["rbxassetid://15112600534"] = "Diamond-Diamond",
    ["rbxassetid://15123640714"] = "Light-Light",
    ["rbxassetid://15123668008"] = "Rubber-Rubber",
    ["rbxassetid://15123662036"] = "Ghost-Ghost",
    ["rbxassetid://15123645682"] = "Magma-Magma",
    ["rbxassetid://15123606541"] = "Quake-Quake",
    ["rbxassetid://15123606541"] = "Buddha-Buddha",
    ["rbxassetid://15123643097"] = "Love-Love",
    ["rbxassetid://15123681598"] = "Spider-Spider",
    ["rbxassetid://116828771482820"] = "Creation-Creation",
    ["rbxassetid://15123679712"] = "Sound-Sound",
    ["rbxassetid://15123654553"] = "Phoenix-Phoenix",
    ["rbxassetid://15123656798"] = "Portal-Portal",
    ["rbxassetid://15123670514"] = "Rumble-Rumble",
    ["rbxassetid://15123652069"] = "Pain-Pain",
    ["rbxassetid://15123587371"] = "Blizzard-Blizzard",
    ["rbxassetid://15123633312"] = "Gravity-Gravity",
    ["rbxassetid://15123648309"] = "Mammoth-Mammoth",
    ["rbxassetid://15694681122"] = "T-Rex-T-Rex",
    ["rbxassetid://15123624401"] = "Dough-Dough",
    ["rbxassetid://15123675904"] = "Shadow-Shadow",
    ["rbxassetid://10773719142"] = "Venom-Venom",
    ["rbxassetid://15123616275"] = "Control-Control",
    ["rbxassetid://11911905519"] = "Spirit-Spirit",
    ["rbxassetid://15123638064"] = "Leopard-Leopard",
    ["rbxassetid://15487764876"] = "Kitsune-Kitsune",
    ["rbxassetid://115276580506154"] = "Yeti-Yeti",
    ["rbxassetid://118054805452821"] = "Gas-Gas",
    ["rbxassetid://95749033139458"] = "Dragon East-Dragon East"
}
function getPriceFruit(z5)
    for i, v in next, CommF:InvokeServer("GetFruits") do
        if v.Name == z5 then
            return v.Price
        end
    end
    return 0
end

--2

function checkcanentrance()
    return game.PlaceId ~= 7449423635 or checkinv("Valkyrie Helm")
end

function NormalTween(Pos)
    if not IsPlayerAlive() then return end
    local tween
    if World3 then
        if GetDistance(CFrame.new(10439, -1962, 9697)) <= 5000 then
            if GetDistance(CFrame.new(11427.9189, -2156.36401, 9726.24023)) > 8 then
                TP1(CFrame.new(11427.9189, -2156.36401, 9726.24023))
            end
            if GetDistance(CFrame.new(11427.9189, -2156.36401, 9726.24023)) <= 8 then
                repeat
                    Modules.Net["RF/SubmarineTransportation"]:InvokeServer("InitiateTeleport","Tiki Outpost")
                    wait(1)
                until GetDistance(CFrame.new(10439, -1962, 9697)) > 5000
                return
            end
        end
    end
    Distance = q1(Pos.Position, game.Players.LocalPlayer.Character.HumanoidRootPart.Position)
    local request_place = CheckNearestRequestIsland2(Pos, true)
    if request_place then
        if Request_Places2[request_place] and Character.Humanoid.FloorMaterial ~= Enum.Material.Air then
            if PlrData:FindFirstChild("LastSpawnPoint") and type(PlrData.LastSpawnPoint.Value) == "string" and PlrData.LastSpawnPoint.Value ~= "SubmergedIsland" and (PlrData.LastSpawnPoint.Value ~= request_place or GetDistance(Request_Places2[request_place]) >= 1500) then
                if tween then tween:Cancel() end
                if IsPlayerAlive() then
                    setlastspawn(request_place)
                end
                repeat wait() until IsPlayerAlive()
                return
            end
        elseif Request_Places[request_place] and checkcanentrance() and not fkwarp then
            rqentrance(request_place)
            Distance = q1(Pos)
            fkwarp = true
        end
    end
    if Pos.Position.Y > 0 and math.abs(game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Y - Pos.Position.Y) > 50 then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(
            game.Players.LocalPlayer.Character.HumanoidRootPart.Position.X,
            Pos.Position.Y,
            game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Z
        )
        wait(.5)
    end
    if Distance <= 50 then
        Time = 0
    elseif Distance <= 200 then
        Time = 0.25
    else
        Time = Distance / 350
    end
    tween = game:GetService("TweenService"):Create(
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart,
        TweenInfo.new(Time, Enum.EasingStyle.Linear),
        { CFrame = Pos }
    )
    tween:Play()
    return tween
end

function StopTween()
    NormalTween(LocalPlayer.Character.HumanoidRootPart.CFrame)
end

function AddVelocity()
    if not game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart"):FindFirstChild("Lavie Hub") then
        local body = Instance.new("BodyVelocity")
        body.Name = "Lavie Hub"
        body.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
        body.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
        body.Velocity = Vector3.new(0, 0, 0)
    end
end

function RemoveVelocity()
    if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart"):FindFirstChild("Lavie Hub") then
        game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart"):FindFirstChild("Lavie Hub"):Destroy()
    end
end
function setlastspawn(Map)
    if not IsPlayerAlive() or not (PlrData:FindFirstChild("LastSpawnPoint") and type(PlrData.LastSpawnPoint.Value) == "string" and (PlrData.LastSpawnPoint.Value ~= Map or GetDistance(Request_Places2[Map]) >= 1500)) then print(1) return end
    if Character:FindFirstChild('LastSpawnPoint') and not LocalPlayer.Character.LastSpawnPoint.Disabled then LocalPlayer.Character.LastSpawnPoint.Disabled = true end
    CommF:InvokeServer('SetLastSpawnPoint', Map)
    wait()
    game:GetService('Players').LocalPlayer.Data.LastSpawnPoint.Value = Map
    wait()
    Character.HumanoidRootPart.CFrame = game:GetService("Workspace")["_WorldOrigin"].PlayerSpawns.Pirates[Map].Part.CFrame * CFrame.new(0,-5,0)
    wait()
    Character.Humanoid:ChangeState(15)
end
function rqentrance(request_place)
    if tween then tween:Cancel() end
    if request_place ~= "Green Tree" then
        repeat
            CommF:InvokeServer("requestEntrance",
                Request_Places[request_place].Position)
            wait(.5)
        until GetDistance(Request_Places[request_place]) < 50
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character
            .HumanoidRootPart.CFrame * CFrame.new(30, 50, 0)
    else
        if not workspace.NPCs:FindFirstChild("Mysterious Force") and not workspace.NPCs:FindFirstChild("Mysterious Force3") then
            repeat
                CommF:InvokeServer("requestEntrance",
                    Request_Places["Temple Of Time"].Position)
                wait()
            until workspace.NPCs:FindFirstChild("Mysterious Force3")
        end
        if workspace.NPCs:FindFirstChild("Mysterious Force3") then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28610.1328, 14896.8477,
                105.67765, -0.0388384573, 6.65092799e-08, -0.999245524, -1.15718697e-08, 1, 6.70092675e-08,
                0.999245524, 1.41656757e-08, -0.0388384573)
            repeat
                CommF:InvokeServer("RaceV4Progress",
                    "TeleportBack")
                    wait()
            until workspace.NPCs:FindFirstChild("Mysterious Force")
        end
    end
end
local function shouldtp(instant)
    if not instant or CheckBackPack({"Special Microchip", "Flower 1", "Flower 2", "Flower 3", "Fist of Darkness", "Sweet Chalice", "God's Chalice", "Hallow Essence"}) then return false end
    return true
end
function TP1(Pos, notinstant)
    local lastPauseTime = tick()
    local tween
    local fkwarp = false
    repeat
        wait()
        repeat wait() until IsPlayerAlive()
        if tick() - lastPauseTime >= 10 then
            if tween then
                tween:Pause()
            end
            wait(.5)
            tween:Play()
            lastPauseTime = tick()
        end
        if World3 then
            if GetDistance(Pos, CFrame.new(10439, -1962, 9697)) <= 5000 then
                if not workspace.Map:FindFirstChild('Submerged Island') then
                    if not workspace.NPCs:FindFirstChild('Submarine Worker') then
                        TP1(CFrame.new(-16270, 25, 1374))
                        return TP1(Pos, notinstant)
                    end
                    if workspace.NPCs:FindFirstChild('Submarine Worker') then
                        repeat
                            Modules.Net["RF/SubmarineWorkerSpeak"]:InvokeServer("TravelToSubmergedIsland")
                            wait(1)
                        until workspace.Map:FindFirstChild('Submerged Island')
                    end
                end
            elseif GetDistance(CFrame.new(10439, -1962, 9697)) <= 5000 then
                if GetDistance(CFrame.new(11427.9189, -2156.36401, 9726.24023)) > 8 then
                    TP1(CFrame.new(11427.9189, -2156.36401, 9726.24023))
                    return TP1(Pos, notinstant)
                end
                if GetDistance(CFrame.new(11427.9189, -2156.36401, 9726.24023)) <= 8 then
                    repeat
                        Modules.Net["RF/SubmarineTransportation"]:InvokeServer("InitiateTeleport","Tiki Outpost")
                        wait(1)
                    until GetDistance(CFrame.new(10439, -1962, 9697)) > 5000
                    return TP1(Pos, notinstant)
                end
            end
        end
        Distance = q1(Pos.Position, game.Players.LocalPlayer.Character.HumanoidRootPart.Position)
        local request_place = CheckNearestRequestIsland2(Pos, shouldtp(not notinstant))
        if request_place then
            if Request_Places2[request_place] and shouldtp(not notinstant) and (not tween or Character.Humanoid.FloorMaterial ~= Enum.Material.Air) then
                if PlrData:FindFirstChild("LastSpawnPoint") and type(PlrData.LastSpawnPoint.Value) == "string" and PlrData.LastSpawnPoint.Value ~= "SubmergedIsland" and (PlrData.LastSpawnPoint.Value ~= request_place or GetDistance(Request_Places2[request_place]) >= 1500) then
                    if tween then tween:Cancel() end
                    if IsPlayerAlive() then
                        setlastspawn(request_place)
                    end
                    repeat wait() until IsPlayerAlive()
                    return
                end
            elseif Request_Places[request_place] and checkcanentrance() and not fkwarp then
                rqentrance(request_place)
                Distance = q1(Pos)
                fkwarp = true
            end
        end
        if Pos.Position.Y > 0 and math.abs(game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Y - Pos.Position.Y) > 50 then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(
                game.Players.LocalPlayer.Character.HumanoidRootPart.Position.X,
                Pos.Position.Y,
                game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Z
            )
            wait(.5)
        end
        if Distance <= 200 then
            if Distance <= 50 then
                Character:MoveTo(Pos.Position)
                return
            else
                Time = 0.25
            end
        else
            Time = Distance/350
        end
        tween = game:GetService("TweenService"):Create(
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart,
            TweenInfo.new(Time, Enum.EasingStyle.Linear),
            { CFrame = Pos }
        )
        tween:Play()
    until q1(Pos.Position, game.Players.LocalPlayer.Character.HumanoidRootPart.Position) < 10
end

function HopServer(bO)
    local ReplicatedStorage = game:GetService("ReplicatedStorage")
    if _G.HopActivated then return end
    _G.HopActivated = true
    if not bO then
        bO = 10
    end
    ticklon = tick()
    repeat
        task.wait()
    until tick() - ticklon >= 10
    local function Hop()
        for r = 1, 100 do
            PlayerGui.ServerBrowser.Frame.Filters.SearchRegion.TextBox.Text = "Singapore"
            local bP = ReplicatedStorage.__ServerBrowser:InvokeServer(r)
            for k, v in pairs(bP) do
                if k ~= game.JobId and v["Count"] <= bO and string.find(v['Region'], "Singapore") then
                    if not Settings2[k] then
                        SaveSettings2(game.JobId)
                        ReplicatedStorage.__ServerBrowser:InvokeServer("teleport", k)
                        wait(5)
                    elseif tick() - Settings2[k] > 600 then
                        Settings2[k] = nil
                    end
                end
            end
        end
        return false
    end
    if not getgenv().Loaded then
        local function bQ(v)
            if v.Name == "ErrorPrompt" then
                if v.Visible then
                    if v.TitleFrame.ErrorTitle.Text == "Teleport Failed" then
                        HopServer()
                        v.Visible = false
                    end
                end
                v:GetPropertyChangedSignal("Visible"):Connect(
                    function()
                        if v.Visible then
                            if v.TitleFrame.ErrorTitle.Text == "Teleport Failed" then
                                HopServer()
                                v.Visible = false
                            end
                        end
                    end
                )
            end
        end
        for k, v in pairs(game.CoreGui.RobloxPromptGui.promptOverlay:GetChildren()) do
            bQ(v)
        end
        game.CoreGui.RobloxPromptGui.promptOverlay.ChildAdded:Connect(bQ)
        getgenv().Loaded = true
    end
    while not Hop() do
        wait()
    end
end


local UrlList = {
    ["Dough King"] = "https://hostserver.porry.store/bloxfruit/bot/JobId/doughking",
    ["rip_indra"] = "https://hostserver.porry.store/bloxfruit/bot/JobId/indra",
    ["Pull Lever"] = "https://hostserver.porry.store/bloxfruit/bot/JobId/mirage",
    ["chim to"] = "https://hostserver.porry.store/bloxfruit/bot/JobId/conchimkicuc",
    ["Darkbeard"] = "https://hostserver.porry.store/bloxfruit/bot/JobId/darkbread",
    ["Full Moon"] = "http://103.65.235.97:5000/fullmoon"
}
local function base64decode(data)
    local b = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/'
    data = string.gsub(data, '[^' .. b .. '=]', '')
    return (data:gsub('.', function(x)
        if x == '=' then return '' end
        local r, f = '', (b:find(x) - 1)
        for i = 6, 1, -1 do r = r .. (f % 2 ^ i - f % 2 ^ (i - 1) > 0 and '1' or '0') end
        return r
    end):gsub('%d%d%d?%d?%d?%d?%d?%d?', function(x)
        if #x ~= 8 then return '' end
        local c = 0
        for i = 1, 8 do c = c + (x:sub(i, i) == '1' and 2 ^ (8 - i) or 0) end
        return string.char(c)
    end))
end

local function xordeobfuscate(data, key)
    local result = {}
    for i = 1, #data do
        local keyByte = key:byte((i - 1) % #key + 1)
        local dataByte = data:byte(i)
        table.insert(result, string.char(bit32.bxor(dataByte, keyByte)))
    end
    return table.concat(result)
end
function GetJobIdList(mode)
    hookingdetected = false
    local co = http_request or request or HttpPost or syn.request
    metatable = {
        Url = UrlList[mode],
        Headers = { ["Content-Type"] = "application/json" },
        Method = "GET"
    }
    
    setmetatable(metatable, {
        __tostring = function()
            hookingdetected = true
            game.Players.LocalPlayer:Kick("Dit me may")
            game:Shutdown()
            return 'địt mẹ mày'
        end,
    })
    local response = co(metatable)
    if response and response.Body then
        body = game.HttpService:JSONDecode(response.Body)
        if body.Amount and body.Amount > 0 then
            local GetJobIdList = {}
            for i, v in pairs(body.jobId) do
                local b64 = string.split(i, "_")[2]
                local decoded = base64decode(b64)
                local deobf = xordeobfuscate(decoded, "DUCANHCHODE")
                table.insert(GetJobIdList, deobf)
            end
            return GetJobIdList
        end
    end
    return false
end
function HopApi(mode)
    --print(111)
    JobIdList = GetJobIdList(mode)
    if not JobIdList then
        print(11)
        return false
    end
    for i, v in pairs(JobIdList) do
            game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, v,
                game:GetService("Players").LocalPlayer)
    end
end

function hopserverlow(page)
    local placeid = game.PlaceId
    local next_page = ""
    local servers = nil
    if next_page == "" then
        servers = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' ..
            placeid .. '/servers/Public?sortOrder=Asc&limit=100'))
    else
        servers = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' ..
            placeid .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. next_page))
    end
    next_page = servers.nextPageCursor
    local check = false
    for _, value in pairs(servers.data) do
        if value.maxPlayers > value.playing and value.playing < 5 then
            check = true
            --game:GetService("TeleportService"):TeleportToPlaceInstance(placeid, value.id,game:GetService("Players").LocalPlayer)
            ReplicatedStorage.__ServerBrowser:InvokeServer("teleport", value.id)
            task.wait(5)
        end
    end
    if not check and next_page and next_page ~= "" and next_page ~= nil then
        hopserverlow(next_page)
    elseif not check or not next_page or next_page == "" or next_page == nil then
        hopserverlow()
    end
end

function FindAverageCFrame(cframeList)
    local totalPosition = Vector3.new(0, 0, 0)
    local validCount = 0
    for i = 1, #cframeList do
        local cframe = cframeList[i]
        totalPosition = totalPosition + cframe.Position
        validCount = validCount + 1
    end
    local averagePosition = totalPosition / validCount
    local averageCFrame = CFrame.new(averagePosition)
    return averageCFrame
end

C_Position = {
    [1] = nil
}
spawn(function()
    while wait() do
        C_Position[1] = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
        local count = tick()
        repeat
            wait()
        until tick() - count >= 350 or game.Players.LocalPlayer.Character.HumanoidRootPart.Position ~= C_Position[1]
        if tick() - count >= 350 then HopServer() end
    end
end)
function tweenmob(mob, BringCFrame)
    local tween


    Distance = (mob.Position - BringCFrame.Position).Magnitude


    tween = game:GetService("TweenService"):Create(
        mob,
        TweenInfo.new(Distance / 200, Enum.EasingStyle.Linear),
        { CFrame = BringCFrame }
    )

    tween:Play()
    --[[if tween then
        tween.Completed:Wait()
    end]] --
end

--[[local Attachment = Instance.new("Attachment")
do
    local AlignPosition = Instance.new("AlignPosition")
    AlignPosition.Mode = Enum.PositionAlignmentMode.OneAttachment
    AlignPosition.Position = Vector3.new(0, 2, 0)
    AlignPosition.Responsiveness = 200
    AlignPosition.MaxForce = math.huge
    AlignPosition.Parent = Attachment
    AlignPosition.Attachment0 = Attachment
end]]

local Attachment = Instance.new("Attachment")
do
    Attachment.Name = "mr2"
    local AlignOrientation = Instance.new("AlignOrientation")
    AlignOrientation.Mode = Enum.OrientationAlignmentMode.OneAttachment
    AlignOrientation.AlignType = Enum.AlignType.PrimaryAxisParallel
    AlignOrientation.CFrame = CFrame.lookAt(Vector3.new(), Vector3.new(0, 0, 1), Vector3.new(0, 1, 0))
    AlignOrientation.Responsiveness = 100
    AlignOrientation.MaxTorque = 700000
    AlignOrientation.Parent = Attachment
    AlignOrientation.Attachment0 = Attachment
end
function ReBring(BringCFrame)
    for i, v in pairs(ListMobCanAttack) do
        RootPart = v:FindFirstChild "HumanoidRootPart"
        if not RootPart:FindFirstChild("god") then
            local aF = Instance.new("BodyVelocity")
            aF.Parent = RootPart
            aF.Name = "god"
            aF.MaxForce = Vector3.new(100000, 100000, 100000)
            aF.Velocity = Vector3.new(0, 0, 0)
        end
        for al, ax in pairs(v:GetDescendants()) do
            if ax:IsA("BasePart") or ax:IsA("Part") then
                ax.CanCollide = false
            end
        end
        v.Humanoid.JumpPower = 0
        v.Humanoid.WalkSpeed = 0
        v.HumanoidRootPart.CFrame = BringCFrame
    end
end

function BringinRaid(Enemy, BringCFrame)
    --pcall(sethiddenproperty, game.Players.LocalPlayer, "SimulationRadius", math.huge)

    if not BringCFrame then
        BringCFrame = Enemy.HumanoidRootPart.CFrame
    end
    BringName              = Enemy.Name
    AGuyWhoSuckedOnZooPorn = {}
    for i, v in pairs(workspace.Enemies:GetChildren()) do
        if skidymf(v) and
            GetDistance(v.HumanoidRootPart.CFrame, BringCFrame) <
            300 and (game.Players.LocalPlayer:GetAttribute("IslandRaiding") or v:HasTag('PirateMob'))
        then
            table.insert(AGuyWhoSuckedOnZooPorn, v)
        end
    end
    for i, v in pairs(AGuyWhoSuckedOnZooPorn) do
        RootPart = v:FindFirstChild "HumanoidRootPart"
        RootPart.CFrame = BringCFrame
        for al, ax in pairs(Enemy:GetDescendants()) do
            if (ax:IsA("BasePart") or ax:IsA("Part") or ax:IsA("MeshPart")) then
                ax.CanCollide = false
                --ax.Transparency = 1
            end
        end
        if not RootPart:FindFirstChild("god") then
            local aF = Instance.new("BodyVelocity")
            aF.Parent = RootPart
            aF.Name = "god"
            aF.MaxForce = Vector3.new(100000, 100000, 100000)
            aF.Velocity = Vector3.new(0, 0, 0)
        end
    end
    return true
end
function sizepart(v)
    v.HumanoidRootPart.CanCollide = false
    for i, x in next, v:GetChildren() do
        if (x:IsA("Part") or x:IsA("MeshPart")) and not string.find(v.Name, "Leg") and x.CanCollide then
            x.CanCollide = false
        end
    end
end
function createbodypos(a, BringCFrame)
    local body = Instance.new("BodyPosition")
    body.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
    body.P = 9000
    body.D = 325
    body.Position = BringCFrame.Position
    body.Parent = a
end
function DetectPartMobBring(name, a, b, c,b1)
    local Mob = {}
    for i,v in pairs(game.Workspace.MobSpawns:GetChildren()) do
        if name == v.Name then
            table.insert(Mob, v)
        end
    end
    if b then
        if b1 then
            local Farest, dist = nil, -math.huge
            for i, v in next, Mob do
                local conconcac = (a.HumanoidRootPart.Position - v.Position).Magnitude
                if dist < conconcac and GetDistance(a.HumanoidRootPart,v) <= 300 then
                    dist = conconcac
                    Farest = v
                end
            end
            return Farest
        else
            local Closest, dist = nil, math.huge
            for i, v in next, Mob do
                local conconcac = (a.HumanoidRootPart.Position - v.Position).Magnitude
                if dist > conconcac then
                    dist = conconcac
                    Closest = v
                end
            end
            return Closest
        end
    else
        local mob2 = {}
        for i, v in next, Mob do
            if (c.Position - v.Position).Magnitude <= 300 then
                table.insert(mob2, v)
            end
        end
        if #mob2 < #Mob then
            --print("condimemay")
            return true
        end
    end
end
local function Bring(Realmob, Enemy, BringCFrame)
    Enemy:AddTag("Brought")
    local RootPart = Enemy:FindFirstChild("HumanoidRootPart")
    local Humanoid = Enemy:FindFirstChild("Humanoid")
    local oldHealth = Humanoid.Health
    local count = tick()
    repeat
        --sizepart(Enemy)
        if not skidymf(Enemy) or not skidymf(Realmob) then return end
        if GetDistance(BringCFrame, RootPart.CFrame) <= 300 then
            if GetDistance(BringCFrame, RootPart.CFrame) > 5 then
                RootPart.CFrame = BringCFrame
            end
        else
            break
        end
        wait()
    until not skidymf(Enemy) or not skidymf(Realmob) or tick() - count>=60
    if skidymf(Enemy) then
        if Humanoid.Health == oldHealth then
            RootPart.CFrame = CFrame.new(Enemy.WorldPivot.Position)
            Enemy:AddTag('ignore')
        end
        Enemy:RemoveTag('Brought')
    end
    --if CloneAttachment then CloneAttachment:Destroy() end
end
function isnetworkowner2(p1)
    for i, v in next, game.Workspace.Characters:GetChildren() do
        if v.Name ~= LocalPlayer.Name and v:FindFirstChild("HumanoidRootPart") and (v.HumanoidRootPart.Position - p1.Position).Magnitude <= 300 then
            return false
        end
    end
    return true
end
function isnetworkowner(p1)
    local A = gethiddenproperty(LocalPlayer, "SimulationRadius")
    local C = game.WaitForChild(Character, "HumanoidRootPart", 300)
    if C then
        if p1.Anchored then
            return false
        end
        if game.IsDescendantOf(p1, Character) or (C.Position - p1.Position).Magnitude <= A then
            return true
        end
    end
    return false
end
function BringMob(Enemy, BringCFrame, notLimit)
    if not notLimit and #getHead() >= 2 then return end
    pcall(sethiddenproperty, LocalPlayer, "SimulationRadius", 5000)
    local EnemyRootPart = Enemy:FindFirstChild('HumanoidRootPart')
    if not EnemyRootPart then return end
    --if DetectPartMobBring(Enemy.Name, Enemy, false, MobSpawnClone[Enemy.Name]) then
        if not BringCFrame then BringCFrame = DetectPartMobBring(Enemy.Name, Enemy, true).CFrame end
    --end
    local min,mob = math.huge, nil
    for i, v in pairs(workspace.Enemies:GetChildren()) do
        local dis = GetDistance(v.HumanoidRootPart.CFrame, BringCFrame)
        if not notLimit and #getHead() >= 2 then return end
        if v and v.Name == Enemy.Name and skidymf(v) and isnetworkowner(v.HumanoidRootPart) and isnetworkowner2(v.HumanoidRootPart) and dis <= 300 and dis < min and not v:HasTag('realmob') and not v:HasTag("Brought") and not v:HasTag('ignore') then
            mob, min = v, dis
        end
        if mob then
            spawn(function()
                Bring(Enemy, mob, BringCFrame)
            end)
            spawn(function()
                Bring(Enemy, Enemy, BringCFrame)
            end)
            if not notLimit then
                wait(.25)
                return true
            end
        end
    end
end
function addCheckSkill(v)
    if v:FindFirstChildOfClass('Humanoid') then
        local animator = v:FindFirstChildOfClass('Humanoid'):FindFirstChildOfClass('Animator')
        if animator then
            animator.AnimationPlayed:Connect(function(anitrack)
                if anitrack.Animation.AnimationId ~= 'rbxassetid://9802959564' and anitrack.Animation.AnimationId ~= 'rbxassetid://507766388' and anitrack.Animation.AnimationId ~= 'http://www.roblox.com/asset/?id=9884584522' then
                    local realTimePos = anitrack.TimePosition
                    if realTimePos <= 0 then
                        realTimePos = 1.5
                    end
                    if getgenv().DogdeUntil and tick() < getgenv().DogdeUntil then
                        getgenv().DogdeUntil = getgenv().DogdeUntil + math.floor(realTimePos)
                    else
                        getgenv().DogdeUntil = tick() + math.floor(realTimePos)
                    end
                    --game.Players.LocalPlayer.Character.PrimaryPart.CFrame = game.Players.LocalPlayer.Character.PrimaryPart.CFrame * CFrame.new(0,300,0)
                    warn('Dogde Skill Please sirrrr', anitrack.TimePosition, math.floor(realTimePos) + 1,
                        anitrack.Animation.AnimationId)
                end
            end)
        end
    end
end

function click()
    local bc = game:GetService("VirtualUser")
    bc:CaptureController()
    bc:ClickButton1(Vector2.new(851, 158), game:GetService("Workspace").Camera.CFrame)
end


function skidymf(v)
    if v and v.Parent and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild('Humanoid') and v.Humanoid.Health > 0 then
        return true
    else
        return false
    end
end
local oldtask
task.spawn(function()
    while task.wait(1) do
        pcall(function()
            FarmTaskText = getgenv().CurrentFarmTaskDoing
            if getgenv().CurrentFarmTask ~= "" then
                FarmTaskText = getgenv().CurrentFarmTask .. " | " .. getgenv().CurrentFarmTaskDoing
            end
            Top.Text = FarmTaskText
            Under.Text = getgenv().AutoItemTask
        end)
    end
end)
function SetMeleeWait(Name, Mastery)
    getgenv().AutoItemTask = "Waiting For " .. Name .. " " .. tostring(Mastery) .. " Mastery"
    m2 = getgenv().AutoItemTask
end

function KillNigga(MobInstance)
    if not skidymf(MobInstance) then return end
    local IsBoss = MobInstance:GetAttribute('IsBoss') or MobInstance.Humanoid.DisplayName:find('Boss') or MobInstance.Name == 'Core' or table.find(Elites,MobInstance.Name)
    getgenv().CurrentFarmTaskDoing = "Killing " .. MobInstance.Name
    if table.find(DoughBoss, MobInstance.Name) and GetDistance(MobInstance.HumanoidRootPart.CFrame) > 1000 then
        if workspace.Map:FindFirstChild"CakeLoaf" and workspace.Map.CakeLoaf:FindFirstChild "BigMirror" and workspace.Map.CakeLoaf.BigMirror:FindFirstChild "Main" then
            repeat
                wait()
                firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart,
                    game.workspace.Map.CakeLoaf.BigMirror.Main, 0)
            until GetDistance(MobInstance.HumanoidRootPart.CFrame) <= 1000
            wait(3)
        end
    end
    MobInstance:AddTag('realmob')
    local count
    local mobhealth = MobInstance.Humanoid.Health
    local brought = false
    repeat
        task.wait()
        local success, err = pcall(function()
            if not skidymf(MobInstance) or not IsPlayerAlive() then return end
            spawn(function()
                --pcall(function()
                    if not count and GetDistance(MobInstance.HumanoidRootPart.CFrame) <= 30 and not game.Players.LocalPlayer:GetAttribute("IslandRaiding") then
                        count = tick()
                    end
                    if count then
                        repeat
                            if not skidymf(MobInstance) then break end
                            wait()
                        until not skidymf(MobInstance) or mobhealth ~= MobInstance.Humanoid.Health or tick() - count >= 5
                        if tick() - count >= 5 then
                            MobInstance:AddTag('ignore')
                            --MobInstance.HumanoidRootPart.CFrame = CFrame.new(MobInstance.WorldPivot.Position)
                            MobInstance.HumanoidRootPart.CFrame = DetectPartMobBring(MobInstance.Name, MobInstance, true , nil, true).CFrame
                            repeat
                                wait()
                            until mobhealth ~= MobInstance.Humanoid.Health or tick() - count >= 10
                            if tick() - count >= 10 then MobInstance:Destroy() end
                        end
                        count = tick()
                    end
                --end)
            end)
            local Weapon = LocalPlayer.Character:FindFirstChildOfClass("Tool")
            if not Weapon or Weapon.ToolTip == "" or Weapon.ToolTip == nil then
                print('equip wp')
                EquipWeapon()
            end
            spawn(function()
                if not IsBoss then
                    if not brought and not game.Players.LocalPlayer:GetAttribute("IslandRaiding") and not MobInstance:HasTag('PirateMob') then
                        brought = BringMob(MobInstance)
                    elseif game.Players.LocalPlayer:GetAttribute("IslandRaiding") or MobInstance:HasTag('PirateMob') then
                        BringinRaid(MobInstance, MobInstance.HumanoidRootPart.CFrame)
                    end
                end
            end)
            if GetDistance(MobInstance.HumanoidRootPart.CFrame) > 50 then
                TP1(MobInstance.HumanoidRootPart.CFrame *
                    CFrame.new(0, 30, 0))
            end
            FastAttacked(MobInstance)
        end)
        if not success then
            print('kill function error'.. tostring(err))
        end
    until not skidymf(MobInstance) or not IsPlayerAlive()
end

--[[task.spawn(function()
    while task.wait() do
        pcall(function()
            if #ListMobCanAttack > 0 then
                for index, mob in pairs(ListMobCanAttack) do
                    if mob:HasTag("freeze") then
                        print("Detected Freeze Mob!")
                        pcall(function()
                            mob:Destroy()
                        end)
                        table.remove(ListMobCanAttack, index)
                    end
                end
            end
        end)
    end
end)]]
function RemoveLevelTitle(v)
    return tostring(tostring(v):gsub(" %pLv. %d+%p", ""):gsub(" %pRaid Boss%p", ""):gsub(" %pBoss%p", ""))
end

local MobSpawnsFolder = Instance.new("Folder")
MobSpawnsFolder.Parent = game.Workspace
MobSpawnsFolder.Name = "MobSpawns"

function PostWebhook(cm, cn)
    local co = http_request or request or HttpPost or syn.request

    local cp =
        co(
            {
                Url = cm,
                Method = "POST",
                Headers = { ["Content-Type"] = "application/json" },
                Body = game:GetService("HttpService"):JSONEncode(cn)
            }
        )


    --setclipboard(game:GetService("HttpService"):JSONEncode(cn))
end

function buglog(bug)
    k3 = {}
    k3["content"] = "@everyone"
    k3["embeds"] = { { ["title"] = "Con Cac", ["description"] = game.Players.LocalPlayer.Name, ["fields"] = { { ["name"] = "Game", ["value"] = (tostring(game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name) or "Wtf Can't Fetch"), ["inline"] = false }, { ["name"] = "Problems", ["value"] = (bug or ""), ["inline"] = false }, { ["name"] = "Main", ["value"] = (getgenv().CurrentFarmTask .. " | " .. getgenv().CurrentFarmTaskDoing or "none") .. " | " .. (getgenv().AutoItemTask or "none"), ["inline"] = false } } } }
    return k3
end
local AllMobInGame = {}
for i, v in next, require(ReplicatedStorage.Quests) do
    for i1, v1 in next, v do
        for i2, v2 in next, v1.Task do
            if v2 > 1 then
                table.insert(AllMobInGame, i2)
            end
        end
    end
end
local MobOutFolder = {}
for i, v in pairs(game:GetService("Workspace")["_WorldOrigin"].EnemySpawns:GetChildren()) do
    table.insert(MobOutFolder, v)
end
for i, v in pairs(getnilinstances()) do
    if v:IsA("Part") and table.find(AllMobInGame, RemoveLevelTitle(v.Name)) then
        table.insert(MobOutFolder, v)
    end
end
function CreateMobPart(v)
    MobNew = Instance.new("Part")
    MobNew.Transparency = 1
    MobNew.CFrame = v.CFrame
    MobNew.Anchored = true
    MobNew.Name = RemoveLevelTitle(v.Name)
    MobNew.Parent = game.Workspace.MobSpawns
end
for i, v in pairs(MobOutFolder) do
    if v then
        CreateMobPart(v)
    end
end
function DetectPartSpawnMob(name)
    local CFrameMob = {}
    for i, v in pairs(game.Workspace.MobSpawns:GetChildren()) do
        if v:IsA("Part") and name == v.Name then
            table.insert(CFrameMob, v.CFrame)
        end
    end
    return CFrameMob
end
local function getMid(vName, gg)
    local total = 0
    local allplus
    for i, v in pairs(gg) do
        if v.Name == vName then
            if not allplus then
                allplus = v.Position
            else
                allplus = allplus + v.Position
            end
            total = total + 1
        end
    end
    if allplus then return allplus / total end
end
local l = 0
for i, v in pairs(game.Workspace.MobSpawns:GetChildren()) do
    if not MobSpawnClone[v.Name] then
        l += 1
        MobSpawnClone[v.Name] = CFrame.new(getMid(v.Name, game.Workspace.MobSpawns:GetChildren()))
    end
end
print(('Loaded %d / %d'):format(l, #MobOutFolder))
QuestsCFrame = setmetatable({}, {__index = function(t, k)
    for _, x in next, require(game.ReplicatedStorage.GuideModule).Data.NPCList do
        local n, pos, m, d = x.Levels, x.Position
        if table.find(n, k) then
            if typeof(pos) == "Vector3" then
                return CFrame.new(pos)
            elseif typeof(pos) == "table" then
                for _, v in next, pos do
                    if typeof(v) == "Vector3" then
                        local dist = GetDistance(CFrame.new(v))
                        if not d or dist < d then m, d = CFrame.new(v), dist end
                    end
                end
                return m  or nil
            end
        end
    end
    return nil
end})
function IsHavingQuest()
    for i, v in next, GuideModule.Data do
        if i == "QuestData" then
            return true
        end
    end
    return false
end

function CheckCurrentQuestMob()
    local a
    if IsHavingQuest() then
        for i, v in next, GuideModule.Data.QuestData.Task do
            a = i
        end
    end
    return a
end

function TeleportWorld(world)
    if typeof(world) == "string" then
        world = world:gsub(" ", ""):gsub("Sea", "")
        world = tonumber(world)
    end
    if world == 1 then
        local args = {
            [1] = "TravelMain"
        }
        CommF:InvokeServer(unpack(args))
    elseif world == 2 then
        local args = {
            [1] = "TravelDressrosa"
        }
        CommF:InvokeServer(unpack(args))
    elseif world == 3 then
        local args = {
            [1] = "TravelZou"
        }
        CommF:InvokeServer(unpack(args))
    end
end
CheckMonster = function(...) local args = {...}
    local v2 = {workspace.Enemies, game.ReplicatedStorage}
    for i = 1, #args do local n = args[i]
        local m = workspace.Enemies:FindFirstChild(n) or game.ReplicatedStorage:FindFirstChild(n)
        if m and m:IsA("Model") and m.Name ~= "Blank Buddy" then
            local h = m:FindFirstChild("Humanoid")
            local r = m:FindFirstChild("HumanoidRootPart")
            if h and r and h.Health > 0 then return true end
        end
    end
    for c = 1, #v2 do local container = v2[c] local ms = container:GetChildren()
        for m = 1, #ms do local m = ms[m] local h = m:FindFirstChild("Humanoid")
            local r = m:FindFirstChild("HumanoidRootPart")
            if m:IsA("Model") and h and r and h.Health > 0 and m.Name ~= "Blank Buddy" then
                for i = 1, #args do local n = args[i]
                    if m.Name == n or m.Name:lower():find(n:lower()) then
                        return true
                    end
                end
            end
        end
    end
    return false
end
TableQuests = setmetatable({}, {__index = function(t, k)
    for _, x in next, require(game.ReplicatedStorage.GuideModule).Data.NPCList do
        local n, pos, rawnq, m, d = x.InternalQuestName, x.Position, x.NPCName
        if n == k then
            if typeof(pos) == "Vector3" then
                return {Position = pos, Meters = (pos - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude, RawNPCName = x.NPCName}
            elseif typeof(pos) == "table" then
                for _, v in next, pos do
                    if typeof(v) == "Vector3" then
                        local dist = (v - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                        if not d or dist < d then m, d = v, dist end
                    end
                end
                return m and {Position = m, Meters = d, RawNPCName = rawnq} or nil
            end
        end
    end
    return nil
end})
function GetQuest(QuestTables, Boss)
    --[[if game.Players.LocalPlayer.PlayerGui.Main:FindFirstChild("Quest").Visible then
        return
    end]]
    getgenv().CurrentFarmTaskDoing = 'Getting quest'
    if not QuestTables or not QuestTables["Mob"] or not QuestTables["QuestName"] or not QuestTables["LevelReq"] or not QuestTables["QuestId"] or not QuestTables["QuestCFrame"] then
        if Boss then
            QuestTables = CheckBossQuest()
        else
            QuestTables = CheckQuestByLevel()
        end
        return
    end
    if GetDistance(QuestTables["QuestCFrame"] * CFrame.new(0, 0, -2)) > 8 then
        TP1(QuestTables["QuestCFrame"])
        return GetQuest(QuestTables, Boss)
    else
        wait(2)
        CommF:InvokeServer("StartQuest", tostring(QuestTables["QuestName"]),
        QuestTables["QuestId"])
    end
end
function CheckQuestByLevel(cq)
    local cq = cq or {}
    local lvlPl = cq.Level or Level.Value
    local LevelMaxReq = 99999
    local DoubleQuest = cq.DoubleQuest or false
    local Returner = {
        ["LevelReq"] = 0,
        ["Mob"] = "",
        ["QuestName"] = "",
        ["QuestId"] = 0,
    }
    if game.PlaceId == 2753915549 then
        LevelMaxReq = 699
    elseif game.PlaceId == 4442272183 then
        LevelMaxReq = 1475
    end
    for i, v in pairs(Quests) do
        for i1, v1 in pairs(v) do
            local lvlreq = v1.LevelReq
            for i2, v2 in pairs(v1.Task) do
                if
                    lvlPl >= lvlreq and lvlreq >= Returner["LevelReq"] and lvlreq <= LevelMaxReq and v1.Task[i2] > 1 and
                    not table.find(UselessQuest, tostring(i))
                then
                    Returner["LevelReq"] = lvlreq
                    Returner["Mob"] = tostring(i2)
                    Returner["QuestName"] = i
                    Returner["QuestId"] = i1
                end
            end
        end
    end
    if DoubleQuest and IsHavingQuest() then
        if
            lvlPl >= 10 and IsHavingQuest() and
            CheckCurrentQuestMob() == Returner["Mob"]
        then
            for i, v in pairs(Quests) do
                if not table.find(UselessQuest, tostring(i)) then
                    for _, v1 in pairs(v) do
                        if v1.Task[Returner["Mob"]] then
                            for id, Data in next, v do
                                for nm, count in next, Data.Task do
                                    if tostring(nm) ~= CheckCurrentQuestMob() and count > 1 then
                                        if Data.LevelReq <= lvlPl then
                                            Returner["Mob"]       = tostring(nm)
                                            Returner["QuestName"] = i
                                            Returner["QuestId"]   = id
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
    end
    Returner["QuestCFrame"] = QuestsCFrame[Returner["LevelReq"]] or (NPCLists:FindFirstChild(FakeGuideModule[Returner["QuestName"]]) and NPCLists[FakeGuideModule[Returner["QuestName"]]]:GetPivot())
    if not Returner["QuestCFrame"] then
        local count = tick()
        repeat 
            Returner["QuestCFrame"] = QuestsCFrame[Returner["LevelReq"]] or (NPCLists:FindFirstChild(FakeGuideModule[Returner["QuestName"]]) and NPCLists[FakeGuideModule[Returner["QuestName"]]]:GetPivot())
            wait(1)
        until Returner["QuestCFrame"] or tick() - count >=5
        if tick() - count >=5 then HopServer() end
    end
    return Returner
end

function CheckBossQuest()
    local Level = game:GetService("Players").LocalPlayer.Data.Level.Value
    local Quests = require(game:GetService("ReplicatedStorage").Quests)
    local Returner = {
        ["LevelReq"] = 0,
        ["Mob"] = "",
        ["QuestName"] = "",
        ["QuestId"] = 0
    }
    for i, v in pairs(Quests) do
        for i1, v1 in pairs(v) do
            if i ~= "CitizenQuest" and i ~= "BartiloQuest" and v1["LevelReq"] <= Level then
                for i2, v2 in pairs(v1["Task"]) do
                    if v2 == 1 then
                        Returner["LevelReq"] = math.max(Returner["LevelReq"], v1["LevelReq"])
                    end
                end
            end
        end
    end
    for i, v in pairs(Quests) do
        for i1, v1 in pairs(v) do
            if i ~= "CitizenQuest" and i ~= "BartiloQuest" and v1["LevelReq"] == Returner["LevelReq"] then
                for i2, v2 in pairs(v1["Task"]) do
                    Returner["Mob"] = i2
                    Returner["QuestName"] = i
                    Returner["QuestId"] = i1
                end
            end
        end
    end
    Returner["QuestCFrame"] = QuestsCFrame[Returner["LevelReq"]] or (NPCLists:FindFirstChild(FakeGuideModule[Returner["QuestName"]]) and NPCLists[FakeGuideModule[Returner["QuestName"]]]:GetPivot())
    return Returner
end

function GetNearMob(MobName)
    if not game.workspace.Enemies:FindFirstChild(MobName) then return false end
    local Distance, Mob = math.huge, false
    for _, enemy in pairs(game.workspace.Enemies:GetChildren()) do
        if enemy.Name == MobName and skidymf(enemy) and GetDistance(enemy.HumanoidRootPart.CFrame) < Distance then
            Distance = GetDistance(enemy.HumanoidRootPart)
            Mob = enemy
        end
    end
    return Mob
end

function GetNearMobinList(List)
    local Distance, Mob = math.huge, false
    for _, enemy in pairs(game.workspace.Enemies:GetChildren()) do
        if table.find(List, enemy.Name) and GetDistance(enemy.HumanoidRootPart) < Distance and not table.find({'FishBoat', 'Brigade', 'PirateGrandBrigade'}, enemy.Name) and skidymf(enemy)  then
            Distance = GetDistance(enemy.HumanoidRootPart)
            Mob = enemy
        end
    end
    return Mob
end

function CheckMob(mobormoblist, rep)
    if typeof(mobormoblist) == 'table' then
        Mob = GetNearMobinList(mobormoblist)
        if Mob then return Mob end
        if rep then
            for i, v in pairs(mobormoblist) do
                for __, v2 in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
                    if v2.Name == v and not table.find({'FishBoat', 'Brigade', 'PirateGrandBrigade'}, v2.Name) and skidymf(v2) then
                        return v2
                    end
                end
            end
        end
    else
        if game.workspace.Enemies:FindFirstChild(mobormoblist) then
            return GetNearMob(mobormoblist)
        end
        if rep then
            if game:GetService("ReplicatedStorage"):FindFirstChild(mobormoblist) then
                for i, v in pairs(game.ReplicatedStorage:GetChildren()) do
                    if v.Name == mobormoblist and not table.find({'FishBoat', 'Brigade', 'PirateGrandBrigade'}, v.Name) and skidymf(v) then
                        return v
                    end
                end
            end
        end
    end
end

function getMobSpawnbyList(MobList)
    local Returner = {}
    for i, v in pairs(MobList) do
        if game.Workspace:FindFirstChild "MobSpawns" and game.Workspace.MobSpawns:FindFirstChild(v) then
            for i1, v1 in pairs(game.Workspace.MobSpawns:GetChildren()) do
                if v1.Name == v then table.insert(Returner, v1.CFrame) end
            end
        else
            cframe_mob = CFrame_Mobs[v]
            if type(cframe_mob) == "table" then
                table.insert(Returner, cframe_mob[math.random(1, #cframe_mob)])
            else
                table.insert(Returner, cframe_mob)
            end
        end
    end
    return Returner
end

function TeleportSpawnMob(Path)
    local Returner = {}
    if typeof(Path) == "table" then
        for _, v in next, Path do
            if CFrame_Mobs[v] then
                table.insert(Returner, CFrame_Mobs[v])
            else
                table.insert(Returner, MobSpawnClone[v])
            end
        end
    else
        GetPart = DetectPartSpawnMob(Path)
        for i, v in pairs(GetPart) do
            if CheckMob(Path) then return end
            TP1(v * CFrame.new(0, 60, 0))
        end
    end
    return Returner
end

function GetWeapon(wptype)
    local s = nil
    for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
        if v:IsA("Tool") and v.ToolTip == wptype then
            s = v
        end
    end
    return s
end

function EquipWeapon(ToolSe)
    if not game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") then return end
    if not ToolSe then
        ToolSe = getgenv().WeaponType or "Melee"
        if GetWeapon(ToolSe) and LocalPlayer.Backpack:FindFirstChild(GetWeapon(ToolSe).Name) then
            game.Players.LocalPlayer.Character.Humanoid:EquipTool(GetWeapon(ToolSe))
        end
    else
        wait(.4)
        if game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe) then
            game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack:FindFirstChild(
                ToolSe))
        end
    end
end

function CollectNearChest()
    local Distance, NearChest = 500, false
    if #workspace:WaitForChild("ChestModels"):GetChildren() <= 0 then return false end

    for _, Chest in pairs(workspace:WaitForChild("ChestModels"):GetDescendants()) do
        if Chest.Name == "TouchInterest" and Chest.Parent then
            local chestDistance = GetDistance(Chest.Parent.CFrame)
            if chestDistance and chestDistance < Distance then
                Distance = chestDistance
                NearChest = Chest.Parent
            end
        end
    end

    return NearChest
end

function FarmMobByLevel(level)
    level = level or Level.Value
    local checkbossquest = CheckBossQuest()
    local NewQuest = CheckQuestByLevel({
        Level = level,
        DoubleQuest = true
    })
    if checkbossquest["LevelReq"] > NewQuest["LevelReq"] and Bosses[checkbossquest["Mob"]] then
        print(Bosses[checkbossquest["Mob"]])
        if level <= Level.Value and (not game.Players.LocalPlayer.PlayerGui.Main:FindFirstChild("Quest").Visible or not string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, checkbossquest["Mob"])) then
            GetQuest(checkbossquest, true)
        end
        if level <= Level.Value and game.Players.LocalPlayer.PlayerGui.Main:FindFirstChild("Quest").Visible and game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text:find(checkbossquest["Mob"], 1, true) then
            KillNigga(Bosses[checkbossquest["Mob"]])
        end
    else
        local CurrentQuestMob = CheckCurrentQuestMob()
        if level <= Level.Value and (not CurrentQuestMob or CurrentQuestMob == checkbossquest["Mob"] or not game.Players.LocalPlayer.PlayerGui.Main:FindFirstChild("Quest").Visible or not game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text:find(CurrentQuestMob, 1, true)) then
            GetQuest(NewQuest)
            wait(.5)
        elseif game.Players.LocalPlayer.PlayerGui.Main:FindFirstChild("Quest").Visible and game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text:find(CurrentQuestMob, 1, true) then
            if CheckMob(CurrentQuestMob) then
                KillNigga(CheckMob(CurrentQuestMob, true))
            else
                getgenv().CurrentFarmTaskDoing = "Waiting For " .. tostring(CurrentQuestMob)
                CFrame_Mob = CFrame_Mobs[CurrentQuestMob]
                if type(CFrame_Mob) == "table" then
                    TP1(CFrame_Mob[math.random(1, #CFrame_Mob)])
                    wait(.25)
                else
                    TP1(CFrame_Mob)
                end
            end
        end
    end
end
function KillMobList(MobList)
    if CheckMob(MobList, true) then
        KillNigga(CheckMob(MobList))
    else
        local MS = TeleportSpawnMob(MobList)
        if MS then
            for i, v in pairs(MS) do
                if not CheckMob(MobList) then
                    if type(v) == "table" then
                        for i=1, #v do
                            TP1(v[i] * CFrame.new(0, 50, 0))
                        end
                    else
                        TP1(v * CFrame.new(0, 50, 0))
                    end
                    wait(1)
                else
                    return
                end
            end
        end
    end
end

function CheckBackPack(bx)
    BackpackandCharacter = { game.Players.LocalPlayer.Backpack, game.Players.LocalPlayer.Character }
    for al, by in pairs(BackpackandCharacter) do
        for r, v in pairs(by:GetChildren()) do
            if type(bx) == "table" then
                if table.find(bx, v.Name) then
                    return v
                end
            else
                if v.Name == bx then
                    return v
                end
            end
        end
    end
end

function CheckBoss(mobormoblist)
    if typeof(mobormoblist) == 'table' then
        for i, v in pairs(mobormoblist) do
            if game.workspace.Enemies:FindFirstChild(v) and skidymf(game.workspace.Enemies[v]) then
                return game.workspace.Enemies[v]
            elseif game:GetService("ReplicatedStorage"):FindFirstChild(v) and skidymf(game:GetService("ReplicatedStorage")[v]) then
                return game:GetService("ReplicatedStorage"):FindFirstChild(v)
            end
        end
    else
        if game.workspace.Enemies:FindFirstChild(mobormoblist) and skidymf(game.workspace.Enemies[mobormoblist]) then
            return game.workspace.Enemies[mobormoblist]
        elseif game:GetService("ReplicatedStorage"):FindFirstChild(mobormoblist) and skidymf(game:GetService("ReplicatedStorage")[mobormoblist]) then
            return game:GetService("ReplicatedStorage")[mobormoblist]
        end
    end
    return false
end

--[[local function CheckFruit()
    for i, v in pairs(game.Workspace:GetChildren()) do
        if string.find(v.Name, "Fruit") and v:FindFirstChild "Handle" and CanStoreFruit(getrealname(v)) then
            return true
        end
    end
    return false
end]]
function CheckFruit(v)
    if string.find(v.Name, "Fruit$") and v:FindFirstChild "Handle" and v.Handle.Position.Y > 0 and getrealname(v) and CanStoreFruit(getrealname(v)) then
        table.insert(ServerData.ServerFruit, v)
        print('Added Fruit: '.. getrealname(v).. ' Count: '.. tostring(#ServerData.ServerFruit))
        local conn1, conn2

        -- Parent thay đổi
        conn1 = v:GetPropertyChangedSignal("Parent"):Connect(function()
            if v.Parent ~= game.Workspace then
                for i,obj in ipairs(ServerData.ServerFruit) do
                    if obj == v then
                        table.remove(ServerData.ServerFruit, i)
                        print('Removed Fruit: '.. v.Name .. ' Count: '.. tostring(#ServerData.ServerFruit))
                        break
                    end
                end
                if conn2 then conn2:Disconnect() end
                conn1:Disconnect()
            end
        end)

        -- Theo dõi Y và Handle
        conn2 = game:GetService("RunService").Heartbeat:Connect(function()
            if not v.Parent or not v:FindFirstChild("Handle") or v.Handle.Position.Y < 0 then
                for i,obj in ipairs(ServerData.ServerFruit) do
                    if obj == v then
                        table.remove(ServerData.ServerFruit, i)
                        print('Removed Fruit (invalid): '.. v.Name .. ' Count: '.. tostring(#ServerData.ServerFruit))
                        break
                    end
                end
                if conn1 then conn1:Disconnect() end
                conn2:Disconnect()
            end
        end)
    end
end
for i, v in pairs(game.workspace:GetChildren()) do
    if string.find(v.Name, "Fruit$") and v:FindFirstChild "Handle" then print(v.Name) end
    task.spawn(CheckFruit, v)
end
game.workspace.ChildAdded:Connect(CheckFruit)
function checkinv(ah)
    for k, v in pairs(CommF:InvokeServer("getInventory")) do
        if v.Name == ah then
            return v
        end
    end
    return false
end

function checkSkullGuitar()
    if not BFSettings.AutoItems.SoulGuitar then return true end
    if checkinv("Skull Guitar") then
        return true
    else
        return false
    end
end

function checkCDK()
    if not BFSettings.AutoItems.CDK then return true end
    if checkinv("Cursed Dual Katana") then
        return true
    else
        return false
    end
end

function checkValkyrieHelm()
    if not BFSettings.Hop["Hop Find Valkyrie Helm"] then return true end
    if checkinv("Valkyrie Helm") then
        return true
    else
        return false
    end
end

function FindBossCFrame(be)
    local abc = nil
    if abc == nil then
        pcall(function()
            abc = game:GetService("Workspace").Enemies:FindFirstChild(be):FindFirstChild("HumanoidRootPart").CFrame *
                CFrame.new(0, 30, 0)
        end)
    end
    if abc == nil then
        pcall(function()
            abc = CFrame.new(game:GetService("ReplicatedStorage"):FindFirstChild(be).WorldPivot.Position) *
                CFrame.new(0, 30, 0)
        end)
    end
    return abc
end

function CheckMaterialCount(bj)
    for k, v in pairs(CommF:InvokeServer("getInventory")) do
        if v["Name"] == bj then
            return v["Count"]
        end
    end
    return 0
end

function get1mfruit()
    local fruits = {
        "Quake-Quake",
        "Love-Love",
        "Phoenix-Phoenix",
        "Spider-Spider",
        "Sound-Sound",
        "Buddha-Buddha",
        "Control-Control",
        "Blizzard-Blizzard",
        "Creation-Creation"
    }
    local myFruits = {}
    for i, v in pairs(CommF:InvokeServer("getInventory")) do
        if v.Type == "Blox Fruit" then table.insert(myFruits, v.Name) end
    end
    for _, fr in pairs(fruits) do
        for _, f in pairs(myFruits) do
            if fr == f then return fr end
        end
    end
    return false
end

function AutoThirdSea()
    if not CommF:InvokeServer("GetUnlockables").FlamingoAccess then
        if not get1mfruit() then
            --[[if BFSettings.Hop["Hop Find Fruit 1m For Auto Third Sea"] then
                getgenv().CurrentFarmTaskDoing = "Hop Find Fruit 1m For Auto Third Sea"
                HopServer()
            else--]]
                return AutoL()
        end
        getgenv().CurrentFarmTaskDoing = "Give Fruit 1m"
        TP1(CFrame.new(-336.312, 331.986, 646.689))

        CommF:InvokeServer("LoadFruit", get1mfruit())
        local fruit = nil
        for a, b in LocalPlayer.Backpack:GetChildren() do
            if string.match(b.Name, "Fruit$") then
                local name = b.Name:match("(%S+)")
                fruit = name .. "-" .. name
            end
        end
        for a, b in LocalPlayer.Character:GetChildren() do
            if string.match(b.Name, "Fruit$") then
                local name = b.Name:match("(%S+)")
                fruit = name .. "-" .. name
            end
        end
        if not fruit then
            --[[if BFSettings.Hop["Hop Find Fruit 1m For Auto Third Sea"] then
                getgenv().CurrentFarmTaskDoing = "Hop Find Fruit 1m For Auto Third Sea"
                hopserverlow()
            end]]--
            return
        end
        EquipWeapon(fruit)
        CommF:InvokeServer("TalkTrevor", "1")
        CommF:InvokeServer("TalkTrevor", "2")
        CommF:InvokeServer("TalkTrevor", "3")
        return
    end
    if not CommF:InvokeServer("ZQuestProgress", "Check") then
        if not Bosses["Don Swan"] then
            getgenv().CurrentFarmTaskDoing = "Hop Find Don Swan"
            hopserverlow()
            return
        else
            KillNigga(Bosses["Don Swan"])
        end
        return
    end
    CommF:InvokeServer("TravelZou")
    TP1(CFrame.new(-1926.3221435547, 12.819851875305, 1738.3092041016), true)

    CommF:InvokeServer("ZQuestProgress", "Begin")
    task.wait(3)
    getgenv().CurrentFarmTaskDoing = "Killing Rip_Indra" 
    if not Bosses["rip_indra"] then
        getgenv().CurrentFarmTaskDoing = "Hop Find Rip_Indra"
        hopserverlow()
        return
    else
        LocalPlayer.Character.HumanoidRootPart.CFrame = Bosses["rip_indra"].HumanoidRootPart.CFrame *CFrame.new(0, 30, 0)
        v = Bosses["rip_indra"]
        repeat
            task.wait()
            CommF:InvokeServer("TravelZou")
            if GetDistance(v.HumanoidRootPart) > 1000 then
                return
            end
            LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0)
            local Weapon = LocalPlayer.Character:FindFirstChildOfClass("Tool")
            if not Weapon or Weapon.ToolTip == "" or Weapon.ToolTip == nil then
                EquipWeapon()
            end
            FastAttacked(v)
        until not Bosses["rip_indra"] or not skidymf(v) or GetDistance(v.HumanoidRootPart) > 1000
    end
end

function AutoSecondSea()
    CommF:InvokeServer("TravelDressrosa")
    repeat wait() until CommF:InvokeServer("DressrosaQuestProgress") and type(CommF:InvokeServer("DressrosaQuestProgress")) == "table"
    if not CommF:InvokeServer("DressrosaQuestProgress").UsedKey then
        getgenv().CurrentFarmTaskDoing = 'Getting key to pass the door'
        repeat
            task.wait()
            CommF:InvokeServer("DressrosaQuestProgress", "Detective")
            EquipWeapon('Key')
            TP1(CFrame.new(1347.7124, 37.3751602, -1325.6488))
        until CommF:InvokeServer("DressrosaQuestProgress").UsedKey
    end
    if CommF:InvokeServer("DressrosaQuestProgress").UsedKey and not CommF:InvokeServer("DressrosaQuestProgress").KilledIceBoss then
        getgenv().CurrentFarmTaskDoing = 'Finding Ice Admiral'
        if workspace._WorldOrigin.EnemySpawns:FindFirstChild"Ice Admiral [Lv. 700] [Boss]" then TP1(workspace._WorldOrigin.EnemySpawns["Ice Admiral [Lv. 700] [Boss]"].CFrame) repeat wait() until Bosses["Ice Admiral"] end
        if Bosses["Ice Admiral"] then
            KillNigga(Bosses['Ice Admiral'])
            CommF:InvokeServer("TravelDressrosa")
        else
            getgenv().CurrentFarmTaskDoing = 'Hopping for Ice Admiral'
            HopServer()
        end
    end
end

local GC = getconnections or get_signal_cons
if GC then
    game.Players.LocalPlayer.Idled:Connect(
        function()
            for i, v in pairs(GC(game.Players.LocalPlayer.Idled)) do
                v:Disable()
            end
        end
    )
end
function NameMelee(a)
    for r, v in next, LocalPlayer.Backpack:GetChildren() do
        if v:IsA("Tool") and v.ToolTip == "Melee" then
            if a then
                return v
            else
                return v.Name
            end
        end
    end
    local tool = LocalPlayer.Character:FindFirstChildOfClass('Tool')
    local inchar = tool and tool.ToolTip == "Melee" and (a and tool or tool.Name)
    if inchar then return inchar end
    return nil
end

pricemelee = {
    ["Black Leg"] = { Beli = 150000, Fragment = 0 },
    ["Fishman Karate"] = { Beli = 750000, Fragment = 0 },
    ["Electro"] = { Beli = 500000, Fragment = 0 },
    ["Dragon Claw"] = { Beli = 0, Fragment = 1500 },
    ["Superhuman"] = { Beli = 3000000, Fragment = 0 },
    ["Sharkman Karate"] = { Beli = 2500000, Fragment = 5000 },
    ["Death Step"] = { Beli = 2500000, Fragment = 5000 },
    ["Dragon Talon"] = { Beli = 3000000, Fragment = 5000 },
    ["Godhuman"] = { Beli = 5000000, Fragment = 5000 },
    ["Electric Claw"] = { Beli = 3000000, Fragment = 5000 }
}
function BuyMelee(br, bs)
    browhat = {
        ["Black Leg"] = "BuyBlackLeg",
        ["Fishman Karate"] = "BuyFishmanKarate",
        ["Electro"] = "BuyElectro",
        ["Dragon Claw"] = function()
            dragonclawtrue =
                CommF:InvokeServer("BlackbeardReward", "DragonClaw", "1") == 1
            CommF:InvokeServer("BlackbeardReward", "DragonClaw", "2")
            return dragonclawtrue
        end,
        ["Superhuman"] = "BuySuperhuman",
        ["Sharkman Karate"] = "BuySharkmanKarate",
        ["Death Step"] = "BuyDeathStep",
        ["Dragon Talon"] = "BuyDragonTalon",
        ["Godhuman"] = "BuyGodhuman",
        ["Electric Claw"] = "BuyElectricClaw"
    }
    momo = browhat[br]
    if type(momo) == "string" then
        CommF:InvokeServer(momo, true)
        CommF:InvokeServer(momo)
    else
        momo = momo()
    end
    if bs then
        v = br
        if
            pricemelee[v] and pricemelee[v].Beli and pricemelee[v].Beli <= game.Players.LocalPlayer.Data.Beli.Value and
            pricemelee[v].Fragment and
            pricemelee[v].Fragment <= game.Players.LocalPlayer.Data.Fragments.Value
        then
            momo = browhat[v]
            if type(momo) == "string" then
                CommF:InvokeServer(momo, true)
                CommF:InvokeServer(momo)
            elseif type(momo) == "function" then
                momo()
            end
        end
    end
end

function GetAndCheckMeleeMastery(bu)
    browhat = {
        ["Black Leg"] = "BuyBlackLeg",
        ["Fishman Karate"] = "BuyFishmanKarate",
        ["Electro"] = "BuyElectro",
        ["Dragon Claw"] = function()
            dragonclawtrue =
                CommF:InvokeServer("BlackbeardReward", "DragonClaw", "1") == 1
            CommF:InvokeServer("BlackbeardReward", "DragonClaw", "2")
            return dragonclawtrue
        end,
        ["Superhuman"] = "BuySuperhuman",
        ["Sharkman Karate"] = "BuySharkmanKarate",
        ["Death Step"] = "BuyDeathStep",
        ["Dragon Talon"] = "BuyDragonTalon",
        ["Godhuman"] = "BuyGodhuman",
        ["Electric Claw"] = "BuyElectricClaw"
    }
    mm = bu
    usingmelee = browhat[NameMelee()]
    momo = browhat[mm]
    if type(momo) == "string" then
        momo = (CommF:InvokeServer(momo, true) == 1)
    else
        momo = momo()
    end
    if momo then
        if not CheckBackPack(mm) then
            repeat
                wait()
                BuyMelee(mm)
            until CheckBackPack(mm)
        end
        if game.Players.LocalPlayer.Character:FindFirstChild(mm) or game.Players.LocalPlayer.Backpack:FindFirstChild(mm) then
            kwekrwe = { game.Players.LocalPlayer.Character, game.Players.LocalPlayer.Backpack }
            for r, v in pairs(kwekrwe) do
                if v:FindFirstChild(mm) then
                    return v[mm].Level.Value
                end
            end
        end
    end
    return 0
end

function SaveMasteryMelee()
    local checked = {}
    Melee_Mastery = Melee_Mastery
        or
        {
            ["Black Leg"] = "BuyBlackLeg",
            ["Fishman Karate"] = "BuyFishmanKarate",
            ["Electro"] = "BuyElectro",
            ["Dragon Claw"] = function()
                dragonclawtrue =
                    CommF:InvokeServer("BlackbeardReward", "DragonClaw", "1") == 1
                CommF:InvokeServer("BlackbeardReward", "DragonClaw", "2")
                return dragonclawtrue
            end,
            ["Superhuman"] = "BuySuperhuman",
            ["Sharkman Karate"] = "BuySharkmanKarate",
            ["Death Step"] = "BuyDeathStep",
            ["Dragon Talon"] = "BuyDragonTalon",
            ["Godhuman"] = "BuyGodhuman",
            ["Electric Claw"] = "BuyElectricClaw"
        }
    for r, v in pairs(Melee_Mastery) do
        if type(v) == "number" and v < 400 or type(v) ~= "number" then
            Melee_Mastery[r] = GetAndCheckMeleeMastery(r)
        end
        print(r, Melee_Mastery[r])
    end
    return Melee_Mastery
end

getgenv().MLLV = SaveMasteryMelee()
function getNextSwordToFarm()
    local highestRarity = -math.huge
    local swordsByRarity = {}
    local selectedSword = nil
    local aimmastery = nil
    for i, v in pairs(CommF:InvokeServer("getInventory")) do
        if v.Type == "Sword" then
            if v.Rarity > highestRarity then
                highestRarity = v.Rarity
            end
            if not swordsByRarity[v.Rarity] then
                swordsByRarity[v.Rarity] = {}
            end
            table.insert(swordsByRarity[v.Rarity], v)
        end
    end
    local function checkAndSelectSword(swords)
        for _, sword in pairs(swords) do
            local masteryIndex = 600
            if BFSettings.Mastery.Sword.Method == "Half" then
                masteryIndex = sword.MasteryRequirements["X"]
            end
            if masteryIndex and sword.Mastery < masteryIndex then
                selectedSword = sword
                aimmastery = masteryIndex
                return true
            end
        end
        return false
    end

    for rarity = highestRarity, 0, -1 do
        local swords = swordsByRarity[rarity]
        if swords then
            if checkAndSelectSword(swords) then
                return selectedSword, aimmastery
            end
        end
    end
end

function AutoMeleeMasteryCheck()
    task.spawn(function()
        getgenv().FragmentNeeded = false
        while task.wait(.1) do
            pcall(function()
                if MLLV["Superhuman"] == 0 then
                    BuyMelee('Superhuman')
                    if MLLV["Black Leg"] < 400 then
                        BuyMelee('Black Leg')
                        SetMeleeWait('Black Leg', 400)
                    elseif MLLV["Electro"] < 400 then
                        BuyMelee('Electro')
                        SetMeleeWait('Electro', 400)
                    elseif MLLV["Fishman Karate"] < 400 then
                        BuyMelee('Fishman Karate')
                        SetMeleeWait('Fishman Karate', 400)
                    elseif MLLV["Dragon Claw"] < 400 then
                        if MLLV['Dragon Claw'] == 0 then
                            if game.Players.LocalPlayer.Data.Fragments.Value < 1500 then
                                getgenv().FragmentNeeded = true
                            else
                                BuyMelee('Dragon Claw')
                                getgenv().FragmentNeeded = false
                            end
                        else
                            BuyMelee('Dragon Claw')
                            SetMeleeWait('Dragon Claw', 400)
                        end
                    else
                        BuyMelee('Superhuman')
                    end
                elseif MLLV['Sharkman Karate'] == 0 or MLLV['Death Step'] == 0 or MLLV['Electric Claw'] == 0 or MLLV['Dragon Talon'] == 0 then
                    if MLLV['Fishman Karate'] < 400 then
                        BuyMelee('Fishman Karate')
                        SetMeleeWait('Fishman Karate', 400)
                    elseif MLLV['Black Leg'] < 400 then
                        BuyMelee('Black Leg')
                        SetMeleeWait('Black Leg', 400)
                    elseif MLLV['Electro'] < 400 then
                        BuyMelee('Electro')
                        SetMeleeWait('Electro', 400)
                    elseif MLLV['Dragon Claw'] < 400 then
                        BuyMelee('Dragon Claw')
                        SetMeleeWait('Dragon Claw', 400)
                    elseif MLLV['Superhuman'] < 400 then
                        BuyMelee('Superhuman')
                        SetMeleeWait('Superhuman', 400)
                    elseif MLLV['Sharkman Karate'] > 0 and MLLV['Sharkman Karate'] < 400 then
                        BuyMelee('Sharkman Karate')
                        SetMeleeWait('Sharkman Karate', 400)
                    elseif MLLV['Death Step'] > 0 and MLLV['Death Step'] < 400 then
                        BuyMelee('Death Step')
                        SetMeleeWait('Death Step', 400)
                    elseif MLLV['Electric Claw'] > 0 and MLLV['Electric Claw'] < 400 then
                        BuyMelee('Electric Claw')
                        SetMeleeWait('Electric Claw', 400)
                    elseif MLLV['Dragon Talon'] > 0 and MLLV['Dragon Talon'] < 400 then
                        SetMeleeWait('Dragon Talon', 400)
                        BuyMelee('Dragon Talon')
                    end
                    if MLLV['Sharkman Karate'] == 0 then
                        BuyMelee('Sharkman Karate')
                    elseif MLLV['Death Step'] == 0 then
                        BuyMelee('Death Step')
                    elseif MLLV['Electric Claw'] == 0 then
                        BuyMelee('Electric Claw')
                    elseif MLLV['Dragon Talon'] == 0 then
                        BuyMelee('Dragon Talon')
                    end
                elseif MLLV['Superhuman'] < 400 then
                    BuyMelee('Superhuman')
                    SetMeleeWait('Superhuman', 400)
                elseif MLLV['Sharkman Karate'] < 400 then
                    BuyMelee('Sharkman Karate')
                    SetMeleeWait('Sharkman Karate', 400)
                elseif MLLV['Death Step'] < 400 then
                    BuyMelee('Death Step')
                    SetMeleeWait('Death Step', 400)
                elseif MLLV['Electric Claw'] < 400 then
                    BuyMelee('Electric Claw')
                    SetMeleeWait('Electric Claw', 400)
                elseif MLLV['Dragon Talon'] < 400 then
                    SetMeleeWait('Dragon Talon', 400)
                    BuyMelee('Dragon Talon')
                elseif MLLV['Godhuman'] == 0 then
                    if not AllV2MeleeStyles400Mastery then
                        AllV2MeleeStyles400Mastery = true
                    end
                    if BFSettings.AutoItems.CDK and (checkinv("Yama") and checkinv("Yama").Mastery < 350) or (checkinv("Tushita") and checkinv("Tushita").Mastery < 350) then
                        getgenv().WeaponType = 'Sword'
                        if checkinv("Yama") and checkinv("Yama").Mastery < 350 then
                            SetMeleeWait("Yama", 350)
                            if not CheckBackPack("Yama") then
                                LoadItem('Yama')
                            end
                        elseif checkinv("Tushita") and checkinv("Tushita").Mastery < 350 then
                            SetMeleeWait("Tushita", 350)
                            if not CheckBackPack("Tushita") then
                                LoadItem('Tushita')
                            end
                        end
                    end
                else
                    if BFSettings.AutoItems.CDK and (checkinv("Yama") and checkinv("Yama").Mastery < 350) or (checkinv("Tushita") and checkinv("Tushita").Mastery < 350) then
                        getgenv().WeaponType = 'Sword'
                        if checkinv("Yama") and checkinv("Yama").Mastery < 350 then
                            SetMeleeWait("Yama", 350)
                            if not CheckBackPack("Yama") then
                                LoadItem('Yama')
                            end
                        elseif checkinv("Tushita") and checkinv("Tushita").Mastery < 350 then
                            SetMeleeWait("Tushita", 350)
                            if not CheckBackPack("Tushita") then
                                LoadItem('Tushita')
                            end
                        end
                    else
                        if BFSettings.Mastery.Melee and (getgenv().CDKQuest == "" or getgenv().CDKQuest == nil) then
                            if MLLV['Godhuman'] < 600 then
                                BuyMelee('Godhuman')
                                getgenv().WeaponType = "Melee"
                                SetMeleeWait('Godhuman', 600)
                            elseif MLLV['Dragon Talon'] < 600 then
                                BuyMelee('Dragon Talon')
                                getgenv().WeaponType = "Melee"
                                SetMeleeWait('Dragon Talon', 600)
                            elseif MLLV['Electric Claw'] < 600 then
                                BuyMelee('Electric Claw')
                                getgenv().WeaponType = "Melee"
                                SetMeleeWait('Electric Claw', 600)
                            elseif MLLV['Sharkman Karate'] < 600 then
                                BuyMelee('Sharkman Karate')
                                getgenv().WeaponType = "Melee"
                                SetMeleeWait('Sharkman Karate', 600)
                            elseif MLLV['Death Step'] < 600 then
                                BuyMelee('Death Step')
                                getgenv().WeaponType = "Melee"
                                SetMeleeWait('Death Step', 600)
                            elseif MLLV['Superhuman'] < 600 then
                                BuyMelee('Superhuman')
                                getgenv().WeaponType = "Melee"
                                SetMeleeWait('Superhuman', 600)
                            else
                                BuyMelee("Godhuman")
                                BFSettings.Mastery.Melee = false
                                SetMeleeWait("Done Your Melee Task")
                            end
                        elseif BFSettings.Mastery.Sword.Enable and (getgenv().CDKQuest == "" or getgenv().CDKQuest == nil) then
                            local SwordMasteryFarm, SwordMasteryFarm2 = getNextSwordToFarm()
                            if SwordMasteryFarm and not SwordMasteryFarm.Equipped then
                                LoadItem(SwordMasteryFarm.Name)
                            elseif SwordMasteryFarm and SwordMasteryFarm.Equipped then
                                getgenv().WeaponType = 'Sword'
                                SetMeleeWait(SwordMasteryFarm.Name, tonumber(SwordMasteryFarm2))
                            else
                                getgenv().WeaponType = 'Melee'
                            end
                        else
                            BuyMelee("Godhuman")
                            if getgenv().CDKQuest ~= '' and getgenv().CDKQuest ~= nil then
                                getgenv().WeaponType = "Sword"
                            else
                                getgenv().WeaponType = 'Melee'
                            end
                        end
                    end
                end
            end)
        end
    end)
end

AutoMeleeMasteryCheck()
for r, k in pairs(PlayerGui.Notifications:GetChildren()) do
    if k and k:IsA("TextLabel") and k.Text then
        local text = string.lower(k.Text)
        if string.find(text, "spotted") then
            getgenv().PirateRaidTick = true
        elseif string.find(text, "good job") then
            getgenv().PirateRaidTick = false
        elseif string.find(text, "rare item") then
            CommF:InvokeServer("BuyDragonTalon", true)
        elseif string.find(text, "loading...") then
            getgenv().DimensionLoading = true
        end
    end
end
PlayerGui.Notifications.ChildAdded:Connect(function(k)
    if k and k:IsA("TextLabel") and k.Text then
        local text = string.lower(k.Text)
        if string.find(text, "spotted") then
            getgenv().PirateRaidTick = true
        elseif string.find(text, "good job") then
            getgenv().PirateRaidTick = false
        elseif string.find(text, "rare item") then
            CommF:InvokeServer("BuyDragonTalon", true)
        elseif string.find(text, "loading...") then
            getgenv().DimensionLoading = true
        end
    end
end)
function checkfireessence()
    if string.find(CommF:InvokeServer("BuyDragonTalon", true), "Set") then
        return false
    else
        return true
    end
end
AutoHallowScythe = function()
    if CheckBackPack("Hallow Essence") then
        EquipWeapon('Hallow Essence')
        TP1(CFrame.new(-8935, 144, 6060))
        VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.Space, false, game)
        wait()
        VirtualInputManager:SendKeyEvent(false, Enum.KeyCode.Space, false, game)
    end
    if Bosses['Soul Reaper'] then
        KillNigga(Bosses['Soul Reaper'])
        return
    end
end
function CheckMobPirateRaid()
    local target = nil
    local cl = { "PirateBasic", "PirateBrigade", "FishBoat", "PirateGrandBrigade" }
    for r, v in pairs(game.workspace.Enemies:GetChildren()) do
        if not table.find(cl, v.Name)
            and not string.find(v.Name, "Friend") and not string.find(v.Name, "rip_indra True Form")
            and v:FindFirstChild("Humanoid")
            and v.Humanoid.Health > 0
            and v:FindFirstChild("HumanoidRootPart")
            and (v.HumanoidRootPart.Position - Vector3.new(-5543.5327148438, 313.80062866211, -2964.2585449219)).magnitude <= 300
        then
            target = v
            break
        end
    end

    for r, v in pairs(game.ReplicatedStorage:GetChildren()) do
        if not table.find(cl, v.Name)
            and not string.find(v.Name, "Friend") and not string.find(v.Name, "rip_indra True Form")
            and v:FindFirstChild("Humanoid")
            and v.Humanoid.Health > 0
            and v:FindFirstChild("HumanoidRootPart")
            and (v.HumanoidRootPart.Position - Vector3.new(-5543.5327148438, 313.80062866211, -2964.2585449219)).magnitude <= 300
        then
            target = v
            break
        end
    end

    return target
end

function farmraidcastle()
    local startTime = os.time()
    if getgenv().PirateRaidTick then
        if GetDistance(CFrame.new(Vector3.new(-5543.5327148438, 313.80062866211, -2964.2585449219))) > 300 then
            TP1(CFrame.new(Vector3.new(-5543.5327148438, 313.80062866211, -2964.2585449219)))
        end
        repeat wait() TP1(CFrame.new(Vector3.new(-5543.5327148438, 313.80062866211, -2964.2585449219))) until CheckMobPirateRaid() or (not getgenv().PirateRaidTick and not CheckMobPirateRaid())
        local PirateMob = CheckMobPirateRaid()
        if PirateMob then
            KillNigga(PirateMob)
        end
    else
        return
    end
end

local v316, v317, v318, v319
local PreviousHeroRemoteFired
local PreviousHeroPassed
local PreviousHeroPassed2
local WaterkeyPassed
local IceCastleDoorPassed
local GodhumanMaterialPassed
local meleetaskchecked = false
local FarmmingForGodhuman
function AutoMeleeCheck()
    task.spawn(function()
        getgenv().FragmentNeeded = false
        while task.wait(1) do
            if MLLV['Sharkman Karate'] == 0 or MLLV['Death Step'] == 0 or MLLV['Electric Claw'] == 0 or MLLV['Dragon Talon'] == 0 then
                if not IceCastleDoorPassed and Level.Value >= 1500 then
                    if not World2 then
                        TeleportWorld(2)
                    else
                        getgenv().MeleeTask = 'Find Ice'
                    end
                elseif not WaterkeyPassed and Level.Value >= 1500 then
                    getgenv().MeleeTask = 'Find Waterkey'
                elseif Level.Value >= 1600 and PreviousHeroPassed and not PreviousHeroPassed2 then
                    if not World3 then
                        TeleportWorld(3)
                    else
                        getgenv().MeleeTask = 'Previous Hero Puzzle'
                    end
                elseif World3 and v318 and v318 > 0 and not checkfireessence() and not check2xexp() then
                    if not World3 then
                        TeleportWorld(3)
                    else
                        CommF:InvokeServer("Bones", "Buy", 1, 1)
                            getgenv().MeleeTask = 'Find Fire Essence'
                    end
                else
                    getgenv().MeleeTask = nil
                end
            elseif AllV2MeleeStyles400Mastery and MLLV['Godhuman'] == 0 then
                GodhumanMaterialPassed = typeof(CommF:InvokeServer("BuyGodhuman", true)) ~=
                    'string'
                FarmmingForGodhuman = true
                if GodhumanMaterialPassed and game.Players.LocalPlayer.Data.Fragments.Value >= 5000 and game.Players.LocalPlayer.Data.Beli.Value >= 5000000 then
                    BuyMelee('Godhuman')
                end
                if not GodhumanMaterialPassed then
                    getgenv().MeleeTask = 'Farm Godhuman'
                else
                    getgenv().MeleeTask = nil
                end
            else
                FarmmingForGodhuman = false
                getgenv().MeleeTask = nil
            end
            if not meleetaskchecked then meleetaskchecked = true end
        end
    end)
end
function FindFireEssence()
    if CheckBackPack("Fire Essence") then
        return CommF:InvokeServer("BuyDragonTalon", true)
    end
    if Bosses['Soul Reaper'] or CheckBackPack('Hallow Essence') then
        return AutoHallowScythe()
    end
    if Level.Value >= 2000 then
        if not PlayerGui.Main:FindFirstChild("Quest").Visible then
            FarmMobByLevel(2000)
        end
        if PlayerGui.Main:FindFirstChild("Quest").Visible then
            KillMobList({
                "Posessed Mummy",
                "Demonic Soul",
                "Living Zombie",
                "Reborn Skeleton"
            })
        end
    else
        KillMobList({
            "Posessed Mummy",
            "Demonic Soul",
            "Living Zombie",
            "Reborn Skeleton"
        })
    end
end

function GHMMaterial()
    local FishTails = CheckMaterialCount('Fish Tail')
    local MagmaOre = CheckMaterialCount('Magma Ore')
    local MysticDroplet = CheckMaterialCount('Mystic Droplet')
    local DragonScale = CheckMaterialCount('Dragon Scale')
    if FishTails < 20 then
        if not World3 then
            TeleportWorld(3)
        else
            KillMobList({ "Fishman Raider", "Fishman Captain" })
        end
    elseif DragonScale < 10 then
        if not World3 then
            TeleportWorld(3)
        else
            KillMobList({ "Dragon Crew Archer", "Dragon Crew Warrior" })
        end
    elseif MagmaOre < 20 then
        if not World2 then
            TeleportWorld(2)
        else
            KillMobList({ "Lava Pirate", "Magma Ninja" })
        end
    elseif MysticDroplet < 10 then
        if not World2 then
            TeleportWorld(2)
        else
            KillMobList({ "Sea Soldier", "Water Fighter" })
        end
    else
        GodhumanMaterialPassed = true
        TeleportWorld(3)
    end
end

AutoMeleeFunc = function()
    if getgenv().MeleeTask == 'Find Ice' then
        if not World2 then TeleportWorld(2) end
        if not CheckBackPack("Library Key") then
            if Bosses["Awakened Ice Admiral"] then
                KillNigga(Bosses["Awakened Ice Admiral"])
            else
                getgenv().CurrentFarmTaskDoing = 'Hopping for Ice Admiral'
                hopserverlow()
            end
        end
        if CheckBackPack("Library Key") then
            EquipWeapon('Library Key')
            TP1(CFrame.new(
                6375.9126,
                296.634583,
                -6843.14062,
                -0.849467814,
                1.5493983e-08,
                -0.527640462,
                3.70608895e-08,
                1,
                -3.0301031e-08,
                0.527640462,
                -4.5294577e-08,
                -0.849467814
            ))
            getgenv().MeleeTask = nil
            return
        end
    elseif getgenv().MeleeTask == 'Find Waterkey' then
        if not World2 then TeleportWorld(2) end
        if not CheckBackPack('Water Key') then
            if Bosses["Tide Keeper"] then
                KillNigga(Bosses["Tide Keeper"])
            else
                getgenv().CurrentFarmTaskDoing = 'Hopping for Tide Keeper'
                hopserverlow()
            end
        end
        if CheckBackPack('Water Key') then
            CommF:InvokeServer("BuySharkmanKarate", true)
        end
    elseif getgenv().MeleeTask == 'Previous Hero Puzzle' then
        if not World3 then TeleportWorld(3) end
        if GetDistance(CFrame.new(-10371.4717, 330.764496, -10131.4199, -0.804111481, 0, -0.594478488, 0, 1, 0, 0.594478488, 0,-0.804111481)) >= 8 then
            TP1(CFrame.new(-10371.4717, 330.764496, -10131.4199, -0.804111481, 0, -0.594478488, 0, 1, 0, 0.594478488, 0,-0.804111481))
            wait(2)
        end
        if GetDistance(CFrame.new(-10371.4717, 330.764496, -10131.4199, -0.804111481, 0, -0.594478488, 0, 1, 0, 0.594478488, 0,-0.804111481)) < 8 then
            local result = CommF:InvokeServer("BuyElectricClaw", true)
            if result == "Nah." or result == 4 then
                CommF:InvokeServer("BuyElectricClaw", "Start")
                repeat wait()
                    Character.PrimaryPart.CFrame = CFrame.new(-12556, 337, -7559)
                    result = CommF:InvokeServer("BuyElectricClaw", true)
                until result == 0 or result == 3
            end
        end
        getgenv().MeleeTask = nil
    elseif getgenv().MeleeTask == 'Find Fire Essence' then
        getgenv().CurrentFarmTaskDoing = "Farm 500 Bones"
        FindFireEssence()
    elseif getgenv().MeleeTask == 'Farm Godhuman' or FarmmingForGodhuman then
        GHMMaterial()
    end
end
checkkilllongma = function()
    if not BFSettings.AutoItems.CDK then return true end
    if CommF:InvokeServer("TushitaProgress")["OpenedDoor"] then
        return true
    else
        return false
    end
end
function HaveBerries()
    local BerryBush = game:GetService("CollectionService"):GetTagged("BerryBush")

    local Distance, Nearest = math.huge, nil

    for i = 1, #BerryBush do
        local Bush = BerryBush[i]

        for AttributeName, BerryName in pairs(Bush:GetAttributes()) do
            local Magnitude = (Bush.Parent:GetPivot().Position - LocalPlayer.Character.HumanoidRootPart.Position)
                .Magnitude

            if Magnitude < Distance then
                Nearest, Distance = Bush, Magnitude
            end
        end
    end
    return Nearest
end

function DistancePlayer(distanceThreshold)
    local Players = game:GetService("Players")
    local LocalPlayer = Players.LocalPlayer

    for _, player in ipairs(Players:GetPlayers()) do
        if player.Name ~= game.Players.LocalPlayer.Name and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            local playerPos = player.Character.HumanoidRootPart.Position
            local localPlayerPos = LocalPlayer.Character.HumanoidRootPart.Position
            if q1(playerPos, localPlayerPos) <= distanceThreshold then
                return true
            end
        end
    end
    return false
end

local function shouldHopServer()
    return BFSettings["Hop if Other Players are Nearby"] and DistancePlayer(100)
end

local function handleBossEvent(boss)
    if boss then
        getgenv().CurrentFarmTask = "Farm Boss Event"
        KillNigga(boss)
    end
end
local Islands = {}
for i, v in pairs(workspace.Map:GetChildren()) do
    if v:IsA("Model") and v.WorldPivot.Position.Y > 0 and v.WorldPivot.Position.Y < 1500 then
        table.insert(Islands, { Name = v.Name, CFrame = CFrame.new(v.WorldPivot.Position) })
    end
end
local function handleWorld1(level)
    if BFSettings.Optional["SkipLevel"] and level < 50 then
        if shouldHopServer() then
            HopServer()
        end
        if level < 20 then
            getgenv().CurrentFarmTask = "Skip Lv.0 -> Lv.20"
            KillMobList({ "Sky Bandit", "Dark Master" })
        elseif level < 50 then
            getgenv().CurrentFarmTask = "Skip Lv.20 -> Lv.50"
            KillMobList({ "Royal Squad", "Shanda" })
        end
    else
        getgenv().CurrentFarmTask = "Farm Level"
        if shouldHopServer() then
            HopServer()
        end
        FarmMobByLevel()
    end
end

local function handleWorld2()
    local BOSSCP = Bosses['Darkbeard'] or Bosses['Core']

    if BOSSCP then
        handleBossEvent(BOSSCP)
    elseif CheckBackPack("Fist of Darkness") then
        EquipWeapon("Fist of Darkness")
        TP1(workspace.Map.DarkbeardArena.Summoner.WorldPivot)
    elseif CheckBackPack('Hidden Key') and not checkinv('Rengoku') then
        EquipWeapon('Hidden Key')
        getgenv().CurrentFarmTask = "Get Rengoku"
        TP1(CFrame.new(6571.1201171875, 299.23028564453, -6967.841796875))
    elseif CheckBackPack('Library Key') and not IceCastleDoorPassed then
        getgenv().CurrentFarmTask = "Open Library Door"
        EquipWeapon('Library Key')
        TP1(CFrame.new(6375.9126, 296.634583, -6843.14062, -0.849467814, 1.5493983e-08, -0.527640462, 3.70608895e-08, 1,
            -3.0301031e-08, 0.527640462, -4.5294577e-08, -0.849467814))
    elseif CheckBackPack('Water Key') and not WaterkeyPassed and not check2xexp() then
        if Bosses['Tide Keeper'] then
            getgenv().CurrentFarmTask = "Get Water Key"
            KillNigga(Bosses['Tide Keeper'])
        end
    elseif not CommF:InvokeServer("OpenLibrary") and Bosses['Awakened Ice Admiral'] and not check2xexp() then
        getgenv().CurrentFarmTask = "Get Library Key"
        KillNigga(Bosses['Awakened Ice Admiral'])
    else
        if shouldHopServer() then
            HopServer()
        end
        getgenv().CurrentFarmTask = "Farm Level"
        FarmMobByLevel()
    end
end

local function handleWorld3(level)
    local BOSSCP
    if (level < 2220 or checkkilllongma()) and Bosses['rip_indra True Form'] then
        BOSSCP = Bosses['rip_indra True Form']
    end

    if BFSettings.AutoItems.CDK and CommF:InvokeServer("TushitaProgress")["OpenedDoor"]
        and not CommF:InvokeServer("TushitaProgress")["KilledLongma"] and Bosses["Longma"] and not BOSSCP then
        BOSSCP = Bosses['Longma']
    end

    if not BOSSCP then
        BOSSCP = Bosses['Cake Prince'] or Bosses['Dough King'] or Bosses['Tyrant of the Skies']
    end
    if BOSSCP then
        handleBossEvent(BOSSCP)
    elseif CheckBackPack("Red Key") and not CommF:InvokeServer("CakeScientist", "Check") then
        CommF:InvokeServer("CakeScientist", "Check")
        wait()
        CommF:InvokeServer("RaidsNpc", "Check")
    elseif level < LevelMax or game.PlaceId ~= 7449423635 then
        getgenv().CurrentFarmTask = "Farm Level"
        if shouldHopServer() then
            HopServer()
        end
        FarmMobByLevel()
    else
        getgenv().CurrentFarmTask = "Farm Cake Prince"
        if shouldHopServer() then
            HopServer()
        end
        if not PlayerGui.Main:FindFirstChild("Quest").Visible then
            FarmMobByLevel(2275)
        else
            KillMobList({
                "Head Baker",
                "Baking Staff",
                "Cake Guard",
                "Cookie Crafter"
            })
        end
    end
end

-- Main Function
function AutoL()
    local level = Level.Value
    if World1 then
        handleWorld1(level)
    elseif World2 then
        handleWorld2()
    elseif World3 then
        handleWorld3(level)
    end
end

local function IsUnlockedSaberDoor()
    for i, v in next, game:GetService("Workspace").Map.Jungle.Final:GetChildren() do
        if v:IsA("Part") and not v.CanCollide then
            return true
        end
    end
end
local function SaberTouchTemplate()
    for i, v in next, game:GetService("Workspace").Map.Jungle.QuestPlates:GetChildren() do
        if v:IsA("Model") then
            if v.Button:FindFirstChild("TouchInterest") then
                return v
            end
        end
    end
end
local function CupDoor()
    return workspace.Map.Desert.Burn.Part.CanCollide == false
end
AutoSaber = function()
    if not World1 then
        TeleportWorld(1)
        return;
    end
    task.wait()
    if checkinv("Saber") then
        getgenv().CurrentTask = ''
        return
    end
    if not CommF:InvokeServer("ProQuestProgress")["KilledShanks"] and CommF:InvokeServer("ProQuestProgress")["UsedRelic"] then
        getgenv().CurrentFarmTaskDoing = 'Getting Saber: Finding Saber Expert'
        if Bosses['Saber Expert'] then
            KillNigga(Bosses['Saber Expert'])
        else
            getgenv().CurrentFarmTaskDoing = 'Hopping for Shanks'
            hopserverlow()
        end
    elseif not CommF:InvokeServer("ProQuestProgress")["UsedTorch"] then
        getgenv().CurrentFarmTaskDoing = 'Getting Saber: Touching templates in jungle'
        for i = 5, 1, -1 do
            CommF:InvokeServer(
                "ProQuestProgress", "Plate", i)
            wait(.25)
        end
        wait(.5)
        CommF:InvokeServer("ProQuestProgress", "GetTorch")
        CommF:InvokeServer("ProQuestProgress", "DestroyTorch")
    elseif not CommF:InvokeServer("ProQuestProgress")["UsedCup"] then
        CommF:InvokeServer("ProQuestProgress", "GetCup")
        EquipWeapon("Cup")
        CommF:InvokeServer("ProQuestProgress", "FillCup",
            game:GetService("Players").LocalPlayer.Character.Cup)
        CommF:InvokeServer("ProQuestProgress", "SickMan")
    elseif not CommF:InvokeServer("ProQuestProgress")["KilledMob"] then
        CommF:InvokeServer("ProQuestProgress", "RichSon")
        getgenv().CurrentFarmTaskDoing = 'Finding Mob Leader'
        if workspace._WorldOrigin.EnemySpawns:FindFirstChild("Mob Leader [Lv. 120] [Boss]") then
            TP1(workspace._WorldOrigin.EnemySpawns["Mob Leader [Lv. 120] [Boss]"].CFrame + Vector3.new(0,30,0))
        end
        if Bosses['Mob Leader'] then
            KillNigga(Bosses['Mob Leader'])
        else
            getgenv().CurrentFarmTaskDoing = 'Hopping for Mob Leader'
            hopserverlow()
        end
    elseif not CommF:InvokeServer("ProQuestProgress")["UsedRelic"] then
        TP1(CFrame.new(-1405.3677978516, 29.977333068848, 4.5685839653015))
        if not CheckBackPack("Relic") then
            CommF:InvokeServer("ProQuestProgress", "RichSon")
        end
        if CheckBackPack 'Relic' then
            EquipWeapon("Relic")
            --tweening = true
           CommF:InvokeServer('ProQuestProgress', "PlaceRelic")
        end
    end
end
AutoPole = function()
    if not World1 then
        TeleportWorld(1)
    end
    if Bosses["Thunder God"] then
        KillNigga(Bosses["Thunder God"])
    end
end
function tweenfruit()
    if queue:empty() or queue:top() ~= "Collecting Fruit" or #ServerData.ServerFruit <= 0 then
        return
    end
    for i, v in pairs(ServerData.ServerFruit) do
        print(v.Name)
        if string.find(v.Name, "Fruit") and v:FindFirstChild "Handle" then
            getgenv().CurrentFarmTaskDoing = 'Collecting '.. v.Name
            repeat wait()
                Sex_Tween = NormalTween(v.Handle.CFrame)
            until not v or not v.Parent or v.Parent ~= game.workspace or #ServerData.ServerFruit <= 0 or GetDistance(v.Handle) <= 10
            if not v or not v.Parent or v.Parent ~= game.workspace or #ServerData.ServerFruit <= 0 then
                Sex_Tween:Cancel()
            end
            VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.Space, false, game)
            wait(0.1)
            VirtualInputManager:SendKeyEvent(false, Enum.KeyCode.Space, false, game)
        end
    end
end

AutoBartiloQuest = function()
    local QuestBartiloId = CommF:InvokeServer("BartiloQuestProgress",
        "Bartilo")
    if QuestBartiloId == 0 then
        getgenv().CurrentFarmTaskDoing = 'Killing 50 Swan Pirates'
        if PlayerGui.Main.Quest.Container.QuestTitle.Title.Text:find("Swan Pirate") and PlayerGui.Main.Quest.Container.QuestTitle.Title.Text:find("50") and PlayerGui.Main.Quest.Visible then
            KillMobList({ "Swan Pirate" })
        else
            --tweening = true
            TP1(CFrame.new(-456.28952, 73.0200958, 299.895966))
            if GetDistance(CFrame.new(-456.28952, 73.0200958, 299.895966)) < 10 then
                local args = {
                    [1] = "StartQuest",
                    [2] = "BartiloQuest",
                    [3] = 1
                }
                CommF:InvokeServer(unpack(args))
            end
        end
    elseif QuestBartiloId == 1 then
        getgenv().CurrentFarmTaskDoing = 'Finding Jeremy'
        if Bosses.Jeremy then
            KillNigga(Bosses.Jeremy)
        else
            getgenv().CurrentFarmTaskDoing = 'Hopping for Bartilo'
            hopserverlow()
        end
    elseif QuestBartiloId == 2 then
        local StartCFrame =
            CFrame.new(
                -1837.46155,
                44.2921753,
                1656.19873,
                0.999881566,
                -1.03885048e-22,
                -0.0153914848,
                1.07805858e-22,
                1,
                2.53909284e-22,
                0.0153914848,
                -2.55538502e-22,
                0.999881566
            )
        if GetDistance(StartCFrame) > 400 then
            getgenv().CurrentFarmTaskDoing = 'Starting templates puzzle'
            --tweening = true
            TP1(StartCFrame)
        else
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame =
                CFrame.new(-1836, 11, 1714)
            task.wait(.5)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                CFrame.new(-1850.49329, 13.1789551, 1750.89685)
            task.wait(.5)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                CFrame.new(-1858.87305, 19.3777466, 1712.01807)
            task.wait(.5)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                CFrame.new(-1803.94324, 16.5789185, 1750.89685)
            task.wait(.5)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                CFrame.new(-1858.55835, 16.8604317, 1724.79541)
            task.wait(.5)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                CFrame.new(-1869.54224, 15.987854, 1681.00659)
            task.wait(.5)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                CFrame.new(-1800.0979, 16.4978027, 1684.52368)
            task.wait(.5)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                CFrame.new(-1819.26343, 14.795166, 1717.90625)
            task.wait(.5)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                CFrame.new(-1813.51843, 14.8604736, 1724.79541)
        end
    end
end
function getMeleeMastery()
    local buoieltrul = NameMelee(true)
    if buoieltrul then
        if buoieltrul:FindFirstChild "Level" then
            MLLV[buoieltrul.Name] = buoieltrul.Level.Value
        end
    end
end

function GetLowestValueFruit()
    local min = math.huge
    for i, v in pairs(CommF:InvokeServer("getInventory")) do
        if v.Type == "Blox Fruit" then
            min = math.min(min, v.Value)
        end
    end
    for i, v in pairs(CommF:InvokeServer("getInventory")) do
        if v.Type == "Blox Fruit" then
            if v.Value == min and v.Value < 1000000 then
                return v.Name
            end
        end
    end
    return false
end

RaidsModule = require(game.ReplicatedStorage.Raids)
Raidslist = {}
for r, v in pairs(RaidsModule.raids) do
    if v.Name ~= " " then
        table.insert(Raidslist, v)
    end
end
for r, v in pairs(RaidsModule.advancedRaids) do
    if v.Name ~= " " then
        table.insert(Raidslist, v)
    end
end
function checkneedawk()
    local needawk = false
    for i, v in pairs(CommF:InvokeServer("getAwakenedAbilities")) do
        for i1, v1 in pairs(v) do
            if i1 == "Awakened" then
                if v1 == false then
                    needawk = true
                end
            end
        end
    end
    return needawk
end

local function mmb(v)  
    local OC = tostring(v):split('-')
    if #OC >= 3 then 
        local OC2 = {} 
        for i,v in pairs(OC) do 
            table.insert(OC2,v)
            if #OC2 >= #OC/2 then break end 
        end
        return tostring(unpack(OC2))
    else
        print(OC[1])
        return tostring(OC[1])
    end
end

local awkfruit = false
if BFSettings["Awakening Fruit"] then
    spawn(function()
        pcall(function()
            while wait(.5) do
                if tostring(game.Players.LocalPlayer.Data.DevilFruit.Value) ~= "" then
                    local selraid = mmb(tostring(game.Players.LocalPlayer.Data.DevilFruit.Value))
                    if table.find(Raidslist, selraid) and MLLV["Godhuman"] > 0 and checkSkullGuitar()
                    then
                        if checkneedawk() then
                            if tostring(selraid) ~= "Dough" and tostring(selraid) ~= "Phoenix" then
                                awkfruit = true
                            elseif tostring(selraid) == "Dough" or tostring(selraid) == "Phoenix" then
                                if tostring(selraiad) == "Phoenix" then
                                    awkfruit = false
                                elseif tostring(selraid) == "Dough" and CommF:InvokeServer("CakeScientist", "Check") then
                                    awkfruit = true
                                else
                                    if tonumber(CommF:InvokeServer("RaidsNpc", "Select", "Ice")) ~= 1 then
                                        return
                                    end
                                end
                            end
                        else
                            awkfruit = false
                        end
                    else
                        awkfruit = false
                    end
                else
                    awkfruit = false
                end
            end
        end)
    end)
end
function buychip()
    local fruit = GetLowestValueFruit()
    if fruit then
        buychip = true
        CommF:InvokeServer("LoadFruit", fruit)
    end
    local selraid = mmb(tostring(game.Players.LocalPlayer.Data.DevilFruit.Value))
    if awkfruit then
        if tonumber(CommF:InvokeServer("RaidsNpc", "Select", selraid)) ~= 1 then
            return
        end
    else
        if tonumber(CommF:InvokeServer("RaidsNpc", "Select", "Ice")) ~= 1 then
            return
        end
    end
    buychip = false
end

local haveDarkFragment
local haveEctoplasm
local haveBones
local sgquestchecked = false
getgenv().SkullGuitarQuest = nil
function checksgquest()
    haveDarkFragment = CheckMaterialCount("Dark Fragment") ~= 0
    haveEctoplasm = CheckMaterialCount("Ectoplasm") >= 250
    haveBones = CheckMaterialCount("Bones") >= 500
    if not haveDarkFragment or not haveEctoplasm or not haveBones then
        if not haveDarkFragment then
            if not World2 then
                TeleportWorld(2)
            end
            if CheckMaterialCount("Dark Fragment") == 0 then
                if Bosses.Darkbead then
                    return "Soul Guitar | Kill Darkbeard"
                elseif not Bosses.Darkbead then
                    if not CheckBackPack("Fist of Darkness") then
                        return "Soul Guitar | Find Fist of Darkness"
                    elseif CheckBackPack("Fist of Darkness") then
                        return "Soul Guitar | Kill Darkbeard"
                    end
                end
            else
                return ""
            end
        elseif not haveEctoplasm then
            if not World2 then
                TeleportWorld(2)
            end
            if CheckMaterialCount("Ectoplasm") < 250 then
                return "Soul Guitar | Farm 250 Ectoplasm"
            else
                return ""
            end
        elseif not haveBones then
            if not World3 then
                TeleportWorld(3)
            end
            if CheckMaterialCount("Bones") < 500 then
                return "Soul Guitar | Farm 500 Bones"
            else
                return ""
            end
        else
            return ""
        end
    else
        if not World3 then
            TeleportWorld(3)
        end
        if CommF:InvokeServer("GuitarPuzzleProgress", "Check") == nil then
            if game:GetService("Lighting").Sky.MoonTextureId == "http://www.roblox.com/asset/?id=9709149431" and (game.Lighting.ClockTime <= 5 or game.Lighting.ClockTime >= 18) then
                if CommF:InvokeServer("GuitarPuzzleProgress", "Check") == nil then
                    return "Soul Guitar | Pray"
                end
            else
                if BFSettings.HopOption["HopFindFullMoonGetSG"] then
                    HopApi('Full Moon')
                end
            end
        end
        if type(CommF:InvokeServer("GuitarPuzzleProgress", "Check")) == "table" then
            if not CommF:InvokeServer("GuitarPuzzleProgress", "Check")["Swamp"] then
                return "Soul Guitar | Swamp Quest"
            elseif not CommF:InvokeServer("GuitarPuzzleProgress", "Check")["Gravestones"] then
                return "Soul Guitar | Gravestones Quest"
            elseif not CommF:InvokeServer("GuitarPuzzleProgress", "Check")["Ghost"] then
                return "Soul Guitar | Ghost Quest"
            elseif not CommF:InvokeServer("GuitarPuzzleProgress", "Check")["Trophies"] then
                return "Soul Guitar | Trophies1"
            elseif not CommF:InvokeServer("GuitarPuzzleProgress", "Check")["Pipes"] then
                return "Soul Guitar | Pipes"
            else
                CommF
                    :InvokeServer("soulGuitarBuy", true)
                wait(.1)
                CommF
                    :InvokeServer("soulGuitarBuy")
                return ""
            end
        end
    end
end

if tonumber(BFSettings["LockFrag"]) == 0 then
    BFSettings["LockFrag"] = 15000
end
if not getgenv().LastBuyChipTick then
    getgenv().LastBuyChipTick = tick()
end
local data = PlrData
local lastBuyChipTick = getgenv().LastBuyChipTick
local farmsg = false

local function canBuyChipCheck()
    local level = Level.Value
    local defenseLevel = data.Stats["Defense"].Level.Value
    local fragments = Fragments.Value
    local islandRaiding = LocalPlayer:GetAttribute("IslandRaiding") == true
    local fragmentNeeded = getgenv().FragmentNeeded or false
    local cdkQuest = getgenv().CDKQuest
    local meleeTask = getgenv().MeleeTask
    local skullGuitarQuest = getgenv().SkullGuitarQuest
    local lastBuyTime = tick() - lastBuyChipTick

    return level >= 1100 and not World1 and IsPlayerAlive() and not getgenv().MeleeTask and defenseLevel >= 1200 and
        getgenv().CurrentFarmTaskDoing ~= "Collect Chest" and getgenv().CurrentFarmTaskDoing ~= "Picking up Chest"
        and
        not CheckBackPack("Special Microchip") and
        not islandRaiding and
        (fragments < tonumber(BFSettings["LockFrag"]) or fragmentNeeded or awkfruit) and
        (cdkQuest == "" or cdkQuest == nil) and
        (meleeTask == "" or meleeTask == "None" or meleeTask == nil) and
        (skullGuitarQuest == "" or skullGuitarQuest == nil) and
        not check2xexp() and lastBuyTime > 20 and queue:empty()
end
local function buyHakiAbilities()
    if data.Beli.Value >= 3500000 then
        CommF:InvokeServer("BuyHaki", "Geppo")
        CommF:InvokeServer("BuyHaki", "Buso")
        CommF:InvokeServer("BuyHaki", "Soru")
    end
end

local function handleSpecialItems()
    if BFSettings.AutoItems["Skull Guitar"] and not checkinv("Skull Guitar") and MLLV["Godhuman"] > 0 then
        if not check2 then
            repeat wait()
                getgenv().SkullGuitarQuest = checksgquest()
            until getgenv().SkullGuitarQuest and getgenv().SkullGuitarQuest ~= ""
        else
            getgenv().SkullGuitarQuest = checksgquest()
        end
    end
    if checkinv('Skull Guitar') and getgenv().SkullGuitarQuest then
        getgenv().SkullGuitarQuest = nil
    end
    if World3 and BFSettings.AutoItems.CDK and checkSkullGuitar() and (not BFSettings["EvoRace"] or not table.find({'Mink', 'Human'}, Race.Value) or string.find(CheckRace(), "V3")) and MLLV["Godhuman"] > 0 and
        not checkinv('Cursed Dual Katana') and checkinv("Tushita") and checkinv("Yama") and
        checkinv("Tushita").Mastery >= 350 and checkinv("Yama").Mastery >= 350 then
        if not check2 then
            repeat wait()
                getgenv().CDKQuest = cdkquestcheck()
            until getgenv().CDKQuest
            print(getgenv().CDKQuest)
        else
            getgenv().CDKQuest = cdkquestcheck()
        end
        getgenv().WeaponType = 'Sword'
    end
    if checkinv('Cursed Dual Katana') and getgenv().CDKQuest then
        getgenv().CDKQuest = nil
    end
end
function addstats(Stat)
    CommF:InvokeServer("AddPoint", Stat,
        game:GetService("Players").LocalPlayer.Data.Points.Value)
end

function autohaki()
    if not game:GetService("Players").LocalPlayer.Character:FindFirstChild("HasBuso") then
        CommF:InvokeServer("Buso")
    end
end
function autostats()
    local function addpoint(a)
        CommF:InvokeServer("AddPoint", a,game:GetService("Players").LocalPlayer.Data.Points.Value)
    end
    if PlrData.Points.Value > 0 then
        if PlrData.Stats["Melee"].Level.Value < LevelMax then
            addpoint("Melee")
            return autostats()
        elseif PlrData.Stats["Defense"].Level.Value < LevelMax then
            addpoint("Defense")
            return autostats()
        else
            addpoint("Sword")
            return autostats()
        end
    end
end
autostats()
PlrData.Points:GetPropertyChangedSignal('Value'):Connect(autostats)
spawn(function()
    while wait() do
        getMeleeMastery()
        if not WaterkeyPassed then WaterkeyPassed = typeof(CommF:InvokeServer("BuySharkmanKarate", true)) ~= 'string' end
        if not PreviousHeroRemoteFired then PreviousHeroRemoteFired = CommF:InvokeServer("BuyElectricClaw", true) end
        if not PreviousHeroPassed then PreviousHeroPassed = typeof(PreviousHeroRemoteFired) ~= 'string' end
        if not PreviousHeroPassed2 then PreviousHeroPassed2 = PreviousHeroRemoteFired ~= 4 end
        if not IceCastleDoorPassed then IceCastleDoorPassed = CommF:InvokeServer("OpenLibrary") end
    end
end)
spawn(function()
    while wait() do
        if canBuyChipCheck() then
            getgenv().LastBuyChipTick = tick()
            buychip()
        end
        CommF:InvokeServer("CakePrinceSpawner")
        handleSpecialItems()
        buyHakiAbilities()
        CommF:InvokeServer("Cousin", "Buy")
        check2 = true
    end
end)
game:GetService("RunService").Heartbeat:Connect(function()
    v316, v317, v318, v319 = CommF:InvokeServer("Bones", "Check")
    for _, v in pairs(LocalPlayer.Character:GetChildren()) do
        if (v:IsA("BasePart") or v:IsA("Part")) then
            v.CanCollide = false
        end
    end
    AddVelocity()
    autohaki()
end)
spawn(function()
    while wait(150) do
        pcall(function()
            if BFSettings.Fruit["SnipeFruit"] and BFSettings.Fruit["SnipeFruitSelectFruitToSnipe"] ~= "" and tostring(game.Players.LocalPlayer.Data.DevilFruit.Value) ~= BFSettings.Fruit["SnipeFruitSelectFruitToSnipe"] then
                local Check_Sell_Fruit = CommF:InvokeServer("GetFruits")
                for i, v in next, Check_Sell_Fruit do
                    if v.OnSale and BFSettings.Fruit["SnipeFruitSelectFruitToSnipe"] == v.Name then
                        CommF:InvokeServer("PurchaseRawFruit", v.Name)
                        break
                    end
                end
            end
        end)
    end
end)
function MobAura()
    local status, result = pcall(function()
        local closestEnemy = nil
        local minDistance = 701
        for _, v in pairs(workspace.Enemies:GetChildren()) do
            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                local distance = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude
                if distance < minDistance then
                    minDistance = distance
                    closestEnemy = v
                end
            end
        end
        if closestEnemy then
            KillNigga(closestEnemy)
        end
    end)
    if not status then
       print(result)
    end
end

function IsIslandRaid(cu)
    if game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island " .. cu) then
        min = 2500
        for r, v in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
            if
                v.Name == "Island " .. cu and
                q1(v.CFrame, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame) < min
            then
                min = q1(v.CFrame, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
            end
        end
        for r, v in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
            if
                v.Name == "Island " .. cu and
                q1(v.CFrame, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame) <= min
            then
                return v
            end
        end
    end
end

function getNextIsland()
    TableIslandsRaid = { 5, 4, 3, 2, 1 }
    for r, v in pairs(TableIslandsRaid) do
        if
            IsIslandRaid(v) and
            q1(IsIslandRaid(v).CFrame, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame) <=
            2500
        then
            return IsIslandRaid(v)
        end
    end
end

function AutoRaid()
    local ReplicatedStorage = game:GetService("ReplicatedStorage")
    if not World1 then
        if LocalPlayer:GetAttribute("IslandRaiding") == false then
            if game.Players.LocalPlayer.Backpack:FindFirstChild("Special Microchip") or game.Players.LocalPlayer.Character:FindFirstChild("Special Microchip") then
                getgenv().CurrentFarmTaskDoing = "Starting Raid"
                if World2 then
                    repeat
                        wait(.5)
                        EquipWeapon("Speciala Microchip")
                        fireclickdetector(workspace.Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector)
                    until not LocalPlayer.Backpack:FindFirstChild("Special Microchip") and not LocalPlayer.Character:FindFirstChild("Special Microchip")
                elseif World3 then
                    if not game:GetService("Workspace").Map:FindFirstChild"Boat Castle" then
                        TP1(CFrame.new(-4994, 315, -3012), true)
                    end
                    if not game:GetService("Workspace").Map["Boat Castle"].RaidSummon2.Button:FindFirstChild("Main") then
                        TP1(game:GetService("Workspace").Map["Boat Castle"].RaidSummon2.Button.WorldPivot, true)
                    end
                    if game:GetService("Workspace").Map["Boat Castle"].RaidSummon2.Button:FindFirstChild("Main") then
                        if GetDistance(CFrame.new(-5047, 315, -2966)) > 10 then
                            TP1(workspace.Map["Boat Castle"].RaidSummon2.Button.Main.CFrame, true)
                        end
                        if GetDistance(CFrame.new(-5047, 315, -2966)) <= 10 then
                            repeat
                                wait(.5)
                                EquipWeapon("Speciala Microchip")
                                fireclickdetector(workspace.Map["Boat Castle"].RaidSummon2.Button.Main.ClickDetector)
                            until not LocalPlayer.Backpack:FindFirstChild("Special Microchip") and not LocalPlayer.Character:FindFirstChild("Special Microchip")
                        end
                    end
                end
                if not game.Players.LocalPlayer.Backpack:FindFirstChild("Special Microchip") and not game.Players.LocalPlayer.Character:FindFirstChild("Special Microchip") then
                    local aaa = os.time()
                    repeat
                        task.wait(1)
                    until (LocalPlayer:GetAttribute("IslandRaiding") == true and getNextIsland()) or os.time() - aaa > 20 or not IsPlayerAlive()
                end
            end
        elseif LocalPlayer:GetAttribute("IslandRaiding") == true then
            repeat
                wait()
                if type(CommF:InvokeServer("Awakener", "Check")) ~= "table" then
                    if getNextIsland() and GetDistance(getNextIsland().CFrame) > 200 then
                        TP1(getNextIsland().CFrame * CFrame.new(0, 20, 0))
                    end
                    MobAura()
                end
                if type(CommF:InvokeServer("Awakener", "Check")) == "table" then
                    if awkfruit then
                        if CommF:InvokeServer("Awakener", "Awaken") == 0 then
                            CommF:InvokeServer("Awakener", "Teleport")
                        end
                    else
                        CommF:InvokeServer(
                            "Awakener", "Teleport")
                    end
                end
            until LocalPlayer:GetAttribute("IslandRaiding") == false or not IsPlayerAlive()
            wait(5)
        end
    end
end
function LoadBoss(v)
    if not v or v.ClassName ~= 'Model' then return end
    local CastleCFrame = CFrame.new(-5543.5327148438, 313.80062866211, -2964.2585449219)
    local Root = v.PrimaryPart or v:WaitForChild('HumanoidRootPart',3)
    local Hum = v:FindFirstChild('Humanoid')
    if not Hum or not Root then return end
    local IsElite = table.find(Elites,RemoveLevelTitle(v.Name))
    local RealName = Hum.DisplayName
    local IsBoss = (RealName and RealName:find('Boss') and not RealName:find("Tormented", 1, true)) or v.Name == 'Core'
    task.spawn(function()
        if skidymf(v) and IsBoss and not Bosses[v.Name] then
            print('Added Boss '..RealName)
            Bosses[v.Name] = v
        end 
    end)
    task.spawn(function()
        if World3 and skidymf(v) and GetDistance(v.PrimaryPart,CastleCFrame) <= 1500 and (RemoveLevelTitle(v.Name) ~='rip_indra True Form' and not v.Name:find('Friend') and not v.Name:find("Player")) then
            v:AddTag('PirateMob')
            getgenv().PirateRaidTick = true
        end
    end)
    
    if IsElite and skidymf(v) then 
        print("Found elite:",tostring(v.Name))
        _G.CurrentElite = v 
    end
    if IsBoss or IsElite then
        if Hum and Hum:IsA("Humanoid") then 
            local connection1
            local connection2
            connection1 = Hum:GetPropertyChangedSignal("DisplayName"):Connect(function()
                if Hum.DisplayName:find("Tormented", 1, true) then
                    Bosses[v.Name] = nil
                    if connection2 then connection2:Disconnect() end
                    connection1:Disconnect()
                end
            end)
            connection2 = Hum:GetPropertyChangedSignal("Health"):Connect(function()
                if Hum.Health <= 0 then
                    if (IsElite or Bosses[v.Name]) then
                        print('Removed boss:',v.Name)
                        if IsElite then 
                            _G.CurrentElite = nil 
                        end
                        if Bosses[v.Name] then
                            Bosses[v.Name] = nil
                        end
                    end
                    if connection1 then connection1:Disconnect() end
                    connection2:Disconnect()
                end
            end)
        end
    end
end
for i,v in pairs(game.workspace.Enemies:GetChildren()) do 
    task.spawn(LoadBoss,v)
end
for i,v in pairs(game.ReplicatedStorage:GetChildren()) do 
    task.spawn(LoadBoss,v)
end 
game.Workspace.Enemies.ChildAdded:Connect(LoadBoss)
game.ReplicatedStorage.ChildAdded:Connect(LoadBoss)
function farmelite()
    if queue:empty() or queue:top() ~= "Farming Elite" or not _G.CurrentElite or not skidymf(_G.CurrentElite) then
        StopTween()
        return
    end
    if _G.CurrentElite and skidymf(_G.CurrentElite) then
        getgenv().CurrentFarmTaskDoing = "Farming Elite"
        if PlayerGui.Main.Quest.Visible then
            if not string.find(PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, _G.CurrentElite.Name) then
                CommF:InvokeServer("AbandonQuest")
                return farmelite()
            end       
        else
            if GetDistance(CFrame.new(-5416, 314, -2823)) > 5 then
                TP1(CFrame.new(-5416, 314, -2823))
            end
            if GetDistance(CFrame.new(-5416, 314, -2823)) <= 5 then
                wait(1)
                CommF:InvokeServer("EliteHunter")
            end
        end
        if PlayerGui.Main.Quest.Visible and string.find(PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, _G.CurrentElite.Name) then
            repeat
                wait()
                SexTween = NormalTween(_G.CurrentElite.HumanoidRootPart.CFrame)
            until not _G.CurrentElite or not skidymf(_G.CurrentElite) or GetDistance(_G.CurrentElite.HumanoidRootPart.CFrame) < 70
            if SexTween then SexTween:Cancel() end
            if _G.CurrentElite and skidymf(_G.CurrentElite) then
                CommF:InvokeServer("EliteHunter")
                KillNigga(_G.CurrentElite)
            end
        end
    end
end

function LoadItem(a)
    CommF:InvokeServer("LoadItem", a)
end

function KillAura()
    pcall(sethiddenproperty, LocalPlayer, "SimulationRadius", 5000)
    for r, v in pairs(game.Workspace.Enemies:GetChildren()) do
        if skidymf(v) and GetDistance(v.HumanoidRootPart) < 1500 then
            v.Humanoid.Health = 0
            v.Humanoid:ChangeState(15)
            v.Humanoid:ChangeState(Enum.HumanoidStateType.Dead)
            v:BreakJoints()
        end
    end
end

local StartGood = true
function cdkquestcheck()
    if World3 and BFSettings.AutoItems.CDK and MLLV["Godhuman"] > 0 and checkSkullGuitar()
        and not checkinv("Cursed Dual Katana") and checkinv("Tushita") and checkinv("Tushita").Mastery >= 350 and checkinv("Yama") and checkinv("Yama").Mastery >= 350 then
        if CommF:InvokeServer("CDKQuest", "OpenDoor") ~= 'opened' then
            CommF:InvokeServer("CDKQuest",
                "OpenDoor", true)
                wait(1)
        end
        if CommF:InvokeServer("CDKQuest", "OpenDoor") == 'opened' then
            getgenv().WeaponType = 'Sword'
            local Quest = CommF:InvokeServer("CDKQuest", "Progress")
            if Quest.Evil == 3 then
                return "CDK | Get Scroll Yama"
            elseif Quest.Good == 3 then
                return "CDK | Get Scroll Tushita"
            elseif Quest.Evil == 4 and Quest.Good == 4 then
                return 'CDK | Last Quest'
            end
            if Quest.Good == 4 then
                StartGood = false
            end
            if StartGood then
                CommF:InvokeServer("CDKQuest", "StartTrial", "Good")
            else
                CommF:InvokeServer("CDKQuest", "StartTrial", "Evil")
            end
            if StartGood then
                if Quest.Good == -3 then
                    return "CDK | Quest 1"
                elseif Quest.Good == -4 then
                    return "CDK | Quest 2"
                elseif Quest.Good == -5 then
                    return "CDK | Quest 3"
                end
            else
                if Quest.Evil == -3 then
                    return "CDK | Quest 4"
                elseif Quest.Evil == -4 then
                    return "CDK | Quest 5"
                elseif Quest.Evil == -5 then
                    return "CDK | Quest 6"
                end
            end
        end
    end
end
function NearestMob(distance)
    for i,v in game.workspace.Enemies:GetChildren() do 
        if skidymf(v) and GetDistance(v.PrimaryPart) < distance then 
            return v 
        end
    end
end
function CheckTorchDimension(DimensionName) 
    DimensionName = DimensionName == "Yama" and "HellDimension" or "HeavenlyDimension" 
    if game.workspace.Map:FindFirstChild(DimensionName) and GetDistance(game.workspace.Map[DimensionName].WorldPivot) < 1000 then 
        v3 = game.workspace.Map:FindFirstChild(DimensionName):GetChildren()
        for i, v in pairs(v3) do
            if string.find(v.Name, "Torch") then
                if v.ProximityPrompt.Enabled == true then
                    return v
                end
            end
        end
    end
    return nil
end
function NearestHazeMob()
        if not game:GetService("Players").LocalPlayer:FindFirstChild('QuestHaze') then
            return nil
        end
        local min = math.huge
        local Quest_Kill = nil
        for i, v in pairs(game:GetService("Players").LocalPlayer.QuestHaze:GetChildren()) do
            if tonumber(v.Value) > 0 and GetDistance(CFrame.new(v:GetAttribute("Position"))) < min then
                Quest_Kill = v.Name
                min = GetDistance(CFrame.new(v:GetAttribute("Position")))
            end
        end
        return Quest_Kill
    end
function docdkquest()
    Quest_Kill = nil
    CFrame_Mob = nil
    if getgenv().CDKQuest == "CDK | Quest 1" then
        for _, x in next, {CFrame.new(-9550, 21, 4690), CFrame.new(-6120, 16, -2250), CFrame.new(-9530, 7, -8370)} do
            repeat TP1(x) task.wait() until workspace.NPCs:FindFirstChildWhichIsA("Model")
            for _, n in next, workspace.NPCs:GetChildren() do if n.Name == "Luxury Boat Dealer" then print(n) CommF:InvokeServer("CDKQuest", "BoatQuest", n) end end
            wait(1)
        end
        return
    elseif getgenv().CDKQuest == "CDK | Quest 2" then
        if getgenv().PirateRaidTick then
            if GetDistance(CFrame.new(Vector3.new(-5543.5327148438, 313.80062866211, -2964.2585449219))) > 100 then
                TP1(CFrame.new(Vector3.new(-5543.5327148438, 313.80062866211, -2964.2585449219)))
            end
            repeat wait() until CheckMobPirateRaid() or (not getgenv().PirateRaidTick and not CheckMobPirateRaid())
            local PirateMob = CheckMobPirateRaid()
            if PirateMob then
                KillNigga(PirateMob)
            end
        else
            AutoL()
        end
    elseif getgenv().CDKQuest == "CDK | Quest 3" then
        if not game:GetService("Workspace").Map:FindFirstChild("HeavenlyDimension") or GetDistance(game:GetService("Workspace").Map.HeavenlyDimension.WorldPivot) >= 1000 then
            if workspace._WorldOrigin.EnemySpawns:FindFirstChild "Cake Queen [Lv. 2175] [Boss]" then
                TP1(CFrame.new(-728, 383, -10980))
            end
            if Bosses["Cake Queen"] then
                KillNigga(Bosses["Cake Queen"])
                local count = tick()
                repeat wait() until tick() - count >= 30 or (game:GetService("Workspace").Map:FindFirstChild("HeavenlyDimension") and GetDistance(game:GetService("Workspace").Map.HeavenlyDimension.WorldPivot) < 1000)
            elseif workspace._WorldOrigin.EnemySpawns:FindFirstChild "Cake Queen [Lv. 2175] [Boss]" then
                TP1(CFrame.new(-728, 383, -10980))
                repeat wait() until Bosses["Cake Queen"]
            elseif not getgenv().DimensionLoading then
                getgenv().CurrentFarmTaskDoing = "Hop Server Finding Cake Queen"
                HopServer()
            end
        end
        
        if game:GetService("Workspace").Map:FindFirstChild("HeavenlyDimension") and GetDistance(game:GetService("Workspace").Map.HeavenlyDimension.WorldPivot) < 1000 then
            if getgenv().DimensionLoading then getgenv().DimensionLoading = false end
            if game:GetService("Workspace").Map.HeavenlyDimension.Exit.BrickColor == BrickColor.new("Cloudy grey") then 
                TP1(game:GetService("Workspace").Map.HeavenlyDimension.Exit.CFrame)
                wait(2)
            else
                local Torch = CheckTorchDimension('Tushita')
                if Torch then
                    TP1(Torch.CFrame)
                    wait(1)
                    fireproximityprompt(Torch.ProximityPrompt)
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(0,50,0)
                    wait(1)
                    repeat
                        wait()
                        KillAura()
                    until not NearestMob(1500)
                end
            end
        end
    elseif getgenv().CDKQuest == "CDK | Quest 4" then
        local Mob = CheckMob("Mythological Pirate")
        if Mob then
            TP1(Mob.HumanoidRootPart.CFrame)
        else
            TP1(CFrame_Mobs["Mythological Pirate"])
        end
    elseif getgenv().CDKQuest == "CDK | Quest 5" then
        local MobSP = NearestHazeMob()
        repeat
            print(MobSP)
            if MobSP then
                KillMobList({MobSP})
            end
            task.wait()
            MobSP = NearestHazeMob()
        until getgenv().CDKQuest ~= "CDK | Quest 5" or not MobSP
    elseif getgenv().CDKQuest == "CDK | Quest 6" then
        if not game:GetService("Workspace").Map:FindFirstChild("HellDimension") or (game:GetService("Workspace").Map:FindFirstChild("HellDimension") and GetDistance(game:GetService("Workspace").Map.HellDimension.WorldPivot) > 1000) then
            if Bosses["Soul Reaper"] then
                getgenv().CurrentFarmTaskDoing = "Die With a Smile"
                repeat
                    TP1(Bosses["Soul Reaper"].HumanoidRootPart.CFrame)
                    wait(1)
                until getgenv().DimensionLoading or (game:GetService("Workspace").Map:FindFirstChild("HellDimension") and GetDistance(game:GetService("Workspace").Map.HellDimension.WorldPivot) <= 1000) or not Bosses["Soul Reaper"]
                if getgenv().DimensionLoading then getgenv().DimensionLoading = false wait(10) end
            elseif CheckBackPack("Hallow Essence") then
                EquipWeapon('Hallow Essence')
                TP1(CFrame.new(-8935, 144, 6060))
                VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.Space, false, game)
                wait()
                VirtualInputManager:SendKeyEvent(false, Enum.KeyCode.Space, false, game)
            else
                if v318 and v318 > 0 then
                    CommF:InvokeServer("Bones", "Buy", 1, 1)
                        if Level.Value >= 2050 then
                            if not PlayerGui.Main:FindFirstChild("Quest").Visible then
                                FarmMobByLevel(2050)
                            end
                            if PlayerGui.Main:FindFirstChild("Quest").Visible then
                                KillMobList({
                                    "Posessed Mummy",
                                    "Demonic Soul",
                                    "Living Zombie",
                                    "Reborn Skeleton"
                                })
                            end
                        else
                            KillMobList({
                                "Posessed Mummy",
                                "Demonic Soul",
                                "Living Zombie",
                                "Reborn Skeleton"
                            })
                        end
                elseif v316 and v316 < 5000 then
                    if Level.Value >= 2050 then
                        print(1)
                        if not PlayerGui.Main:FindFirstChild("Quest").Visible then
                            FarmMobByLevel(2050)
                        end
                        if PlayerGui.Main:FindFirstChild("Quest").Visible then
                            KillMobList({
                                "Posessed Mummy",
                                "Demonic Soul",
                                "Living Zombie",
                                "Reborn Skeleton"
                            })
                        end
                    else
                        KillMobList({
                            "Posessed Mummy",
                            "Demonic Soul",
                            "Living Zombie",
                            "Reborn Skeleton"
                        })
                    end                
                else
                    AutoL()
                end
            end
        end
        if game:GetService("Workspace").Map:FindFirstChild("HellDimension") and GetDistance(game:GetService("Workspace").Map.HellDimension.WorldPivot) <= 1000 then
            if game:GetService("Workspace").Map.HellDimension.Exit.BrickColor == BrickColor.new("Olivine") then 
                    TP1(game:GetService("Workspace").Map.HellDimension.Exit.CFrame)
                    wait(2) 
            else
                Torch = CheckTorchDimension("Yama")
                if Torch then
                    TP1(Torch.CFrame) 
                    wait(1)
                    fireproximityprompt(Torch.ProximityPrompt)
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(0,30,0)
                    wait(1)
                    repeat
                        wait()
                        KillAura()
                    until not NearestMob(1500)
                end
            end
        end
    elseif getgenv().CDKQuest == "CDK | Get Scroll Tushita" then
        TP1(CFrame.new(-12392.5068, 603.319763, -6596.00586))
        wait(3)
        if workspace.Map.Turtle.Cursed.Pedestal1.ProximityPrompt.Enabled then
            fireproximityprompt(workspace.Map.Turtle.Cursed.Pedestal1.ProximityPrompt)
            wait(1)
            click()
        end
        return
    elseif getgenv().CDKQuest == "CDK | Get Scroll Yama" then
        TP1(CFrame.new(-12391, 603, -6506))
        wait(3)
        if workspace.Map.Turtle.Cursed.Pedestal2.ProximityPrompt.Enabled then
            fireproximityprompt(workspace.Map.Turtle.Cursed.Pedestal2.ProximityPrompt)
            wait(1)
            click()
        end
        return
    elseif getgenv().CDKQuest == "CDK | Last Quest" then
        if not Bosses["Cursed Skeleton Boss"] then
            if GetDistance(CFrame.new(-12360, 603, -6551)) > 50 and workspace.Map.Turtle.Cursed.Pedestal3.ProximityPrompt.Enabled then
                TP1(CFrame.new(-12360, 603, -6551))
                wait(10)
            end
            if workspace.Map.Turtle.Cursed.Pedestal3.ProximityPrompt.Enabled then
                repeat
                    VirtualInputManager:SendKeyEvent(true, "E", false, game)
                    task.wait()
                    VirtualInputManager:SendKeyEvent(false, "E", false, game)
                until not workspace.Map.Turtle.Cursed.Pedestal3.ProximityPrompt.Enabled
                repeat
                    wait()
                until tonumber(workspace.Map.Turtle.Cursed.BossDoor.AssemblyCenterOfMass.Y) < 580
                click()
                repeat
                    NormalTween(CFrame.new(-12262, 599, -6550))
                    wait()
                until Bosses["Cursed Skeleton Boss"]
            end
        end
        if Bosses["Cursed Skeleton Boss"] then
            getgenv().WeaponType  = 'Sword'
            KillNigga(Bosses["Cursed Skeleton Boss"])
        end
    end
end
function GetNearIsland()
    if #Islands <= 0 then
        return nil, nil
    end
    local a, b, c = nil, nil, math.huge
    for i, island in pairs(Islands) do
        local distance = (island.CFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position)
            .Magnitude
        if distance < c then
            a, b, c = i, island, distance
        end
    end
    return a, b
end

function dosgquest()
    if getgenv().SkullGuitarQuest == "Soul Guitar | Kill Darkbeard" then
        if not Bosses["Darkbeard"] then
            EquipWeapon("Fist of Darkness")
            TP1(workspace.Map.DarkbeardArena.Summoner.WorldPivot)
        end
        if Bosses["Darkbeard"] then
            KillNigga(Bosses["Darkbeard"])
            return
        end
    elseif getgenv().SkullGuitarQuest == "Soul Guitar | Pray" then
        getgenv().CurrentFarmTaskDoing = "Praying"
        TP1(CFrame.new(-8654, 141, 6165))
        CommF:InvokeServer("gravestoneEvent", 2)
        CommF:InvokeServer("gravestoneEvent", 2,
            true)
    elseif getgenv().SkullGuitarQuest == "Soul Guitar | Pipes" then
        if GetDistance(CFrame.new(-9603, 6, 6129)) > 10 then
            TP1(CFrame.new(-9603, 6, 6129))
        end
        local args = {
            [1] = "GuitarPuzzleProgress",
            [2] = "Pipes"
        }

        CommF:InvokeServer(unpack(args))
    elseif getgenv().SkullGuitarQuest == "Soul Guitar | Find Fist of Darkness" then
        if not World2 then TeleportWorld(2) end
        if not CheckBackPack("Fist of Darkness") then
            getgenv().CurrentFarmTaskDoing = "Picking up Chest"
            local TotalChestCollected = 0
            local count = tick()
            repeat
                wait()
                if tick() - count > 30 then
                    if TotalChestCollected == 0 then hopserverlow() return end
                    count = tick()
                end
                local numisland, island = GetNearIsland()
                if numisland == nil or island == nil then
                    if TotalChestCollected < 70 then
                        for i, v in pairs(workspace.Map:GetChildren()) do
                            if v:IsA("Model") and v.WorldPivot.Position.Y > 0 and v.WorldPivot.Position.Y < 1500 then
                                table.insert(Islands, { Name = v.Name, CFrame = CFrame.new(v.WorldPivot.Position) })
                            end
                        end
                    end
                end
                if numisland ~= nil and island ~= nil then
                    print(island.Name)
                    if GetDistance(island.CFrame) > 1500 then
                        TP1(island.CFrame)
                    end
                    wait(1)
                    if GetDistance(island.CFrame) <= 1500 then
                        table.remove(Islands, numisland)
                        local startotal = 0
                        if #workspace:WaitForChild("ChestModels"):GetChildren() > 0 then
                            repeat
                                wait()
                                for _, chest in pairs(workspace:WaitForChild("ChestModels"):GetDescendants()) do
                                    if startotal >= 20 or CheckBackPack("Fist of Darkness") or TotalChestCollected >= 70 then break end
                                    if chest.Name == "TouchInterest" then
                                        TotalChestCollected = TotalChestCollected + 1
                                        startotal = startotal + 1
                                        if chest.Parent then
                                            TP1(chest.Parent.CFrame)
                                            VirtualInputManager:SendKeyEvent(true, "Q", false, game)
                                            wait()
                                            VirtualInputManager:SendKeyEvent(false, "Q", false, game)
                                            if chest.Parent then
                                                firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart,
                                                    chest.Parent, 0)
                                            end
                                            wait(.5)
                                        end
                                    end
                                end
                            until #workspace:WaitForChild("ChestModels"):GetChildren() <= 0 or startotal >= 20 or TotalChestCollected >= 70 or CheckBackPack("Fist of Darkness") or CheckMaterialCount("Dark Fragment") ~= 0
                        end
                    end
                end
            until TotalChestCollected >= 70 or CheckBackPack("Fist of Darkness") or CheckMaterialCount("Dark Fragment") ~= 0
            if not CheckBackPack("Fist of Darkness") and CheckMaterialCount("Dark Fragment") == 0 then
                hopserverlow()
            end
        else
            return
        end
    elseif getgenv().SkullGuitarQuest == "Soul Guitar | Farm 250 Ectoplasm" then
        if not World2 then
            TeleportWorld(2)
        end
        if shouldHopServer() then
            hopserverlow()
        end
        if CheckMaterialCount("Ectoplasm") < 250 then
            KillMobList({ "Ship Steward", "Ship Engineer", "Ship Deckhand", "Ship Officer" })
        else
            return
        end
    elseif getgenv().SkullGuitarQuest == "Soul Guitar | Farm 500 Bones" then
        if not World3 then
            TeleportWorld(3)
        end
        if shouldHopServer() then
            hopserverlow()
        end
        if CheckMaterialCount("Bones") < 500 then
            KillMobList({
                "Posessed Mummy",
                "Demonic Soul",
                "Living Zombie",
                "Reborn Skeleton"
            })
        else
            return
        end
    elseif getgenv().SkullGuitarQuest == "Soul Guitar | Swamp Quest" then
        if shouldHopServer() then
            hopserverlow()
        end
        local countzb = 0
        TP1(MobSpawnClone['Living Zombie'])
        for _, enemy in pairs(game.workspace.Enemies:GetChildren()) do
            if enemy.Name == "Living Zombie" and skidymf(enemy) then
                countzb +=1
            end
        end
        if countzb == 6 then
            local zb = CheckMob('Living Zombie')
            if zb then
                repeat wait()
                    KillNigga(zb)
                    zb = CheckMob('Living Zombie')
                until not zb
            end
        end
    elseif getgenv().SkullGuitarQuest == "Soul Guitar | Gravestones Quest" then
        abxc = {
            Placard7 = "Left",
            Placard6 = "Left",
            Placard5 = "Left",
            Placard4 = "Right",
            Placard3 = "Left",
            Placard2 = "Right",
            Placard1 = "Right",
        }
        order = { "Placard7", "Placard6", "Placard5", "Placard4", "Placard3", "Placard2", "Placard1" }
        --for i=7,1,-1 do
        --fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Placard"..tostring(i)][abcx["Placard"..tostring(i)]])

        --end
        for _, placard in ipairs(order) do
            fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"][placard][abxc[placard]]
                .ClickDetector)
        end
    elseif getgenv().SkullGuitarQuest == "Soul Guitar | Ghost Quest" then
        CommF:InvokeServer("GuitarPuzzleProgress", "Ghost")
        CommF:InvokeServer("GuitarPuzzleProgress", "Ghost", true)
    elseif getgenv().SkullGuitarQuest == "Soul Guitar | Trophies1" then
        if GetDistance(CFrame.new(-9531, 6, 6033)) > 10 then
            TP1(CFrame.new(-9531, 6, 6033))
        end
        local args = {
            [1] = "GuitarPuzzleProgress",
            [2] = "Trophies"
        }

        CommF:InvokeServer(unpack(args))
    end
end

function farmtushita1()
    if BFSettings.AutoItems.CDK and not CommF:InvokeServer("TushitaProgress")["OpenedDoor"] and Bosses["rip_indra True Form"] then
        if not CheckBackPack("Holy Torch") then
            repeat wait()
                TP1(CFrame.new(5713, 19, 257))
            until CheckBackPack("Holy Torch")
        end
        if CheckBackPack("Holy Torch") then
            EquipWeapon("Holy Torch")
            for i = 1, 5 do
                CommF:InvokeServer("TushitaProgress", "Torch", i)
                wait(.25)
            end
            return
        end
    else
        return
    end
end

function getmirror()
    if CheckBackPack("Red Key") and not CommF:InvokeServer("CakeScientist", "Check") then
        CommF:InvokeServer("CakeScientist", "Check")
        wait()
        CommF:InvokeServer("RaidsNpc", "Check")
    end
    if not CheckBackPack("Sweet Chalice") then
        if not CheckBackPack("God's Chalice") then
            return
        else
            if CheckMaterialCount("Conjured Cocoa") >= 10 then
                CommF:InvokeServer("SweetChaliceNpc")
            else
                KillMobList({ "Cocoa Warrior", "Chocolate Bar Battler" })
            end
        end
    else
        CommF:InvokeServer("CakePrinceSpawner")
        if not CheckMob(DoughBoss, true) then
            KillMobList({
                "Cookie Crafter",
                "Cake Guard",
                "Head Baker",
                "Baking Staff"
            })
        else
            KillNigga(CheckMob(DoughBoss, true))
        end
    end
end

checkpole = function()
    if getgenv().BFSettings.AutoItems["Pole"] then
        if checkinv("Pole (1st Form)") then
            return true
        else
            return false
        end
    else
        return true
    end
end
function CheckRace()
    local v113 = CommF:InvokeServer("Wenlocktoad", "1")
    local v111 = CommF:InvokeServer("Alchemist", "1")
    if game.Players.LocalPlayer.Character:FindFirstChild("RaceTransformed") then
        return "V4"
    end
    if v113 == -2 then
        return "V3"
    end
    if v111 == -2 then
        return "V2"
    end
    return "V1"
end

function checkflower1()
    return workspace:FindFirstChild "Flower1" and workspace.Flower1.Transparency ~= 1
end

function checkflower2()
    return workspace:FindFirstChild "Flower2" and workspace.Flower2.Transparency ~= 1
end

function needv3()
    return game.Players.LocalPlayer.Data.Race.Value == "Human"
end

function RaceV2()
    if CheckRace() == 'V2' then return end
    if string.find(CheckRace(), "V1") then
        CommF:InvokeServer("Alchemist", "2")
        if not CheckBackPack("Flower 1") or not CheckBackPack("Flower 2") or not CheckBackPack("Flower 3") then
            if (not CheckBackPack("Flower 1") and checkflower1()) or (not CheckBackPack("Flower 2") and checkflower2()) then
                if not CheckBackPack("Flower 1") and checkflower1() then
                    getgenv().CurrentFarmTaskDoing = "Collecting Flower 1"
                    repeat
                        wait()
                        TP1(Workspace.Flower1.CFrame)
                        VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.Space, false, game)
                        wait()
                        VirtualInputManager:SendKeyEvent(false, Enum.KeyCode.Space, false, game)
                    until CheckBackPack("Flower 1") or not checkflower1()
                elseif not CheckBackPack("Flower 2") and checkflower2() then
                    getgenv().CurrentFarmTaskDoing = "Collecting Flower 2"
                    repeat
                        wait()
                        TP1(Workspace.Flower2.CFrame)
                        VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.Space, false, game)
                        wait()
                        VirtualInputManager:SendKeyEvent(false, Enum.KeyCode.Space, false, game)
                    until CheckBackPack("Flower 2") or not checkflower2()
                end
            else
                repeat
                    wait()
                    AutoL()
                until (not CheckBackPack("Flower 1") and checkflower1()) or (not CheckBackPack("Flower 2") and checkflower2()) or (CheckBackPack("Flower 1") and CheckBackPack("Flower 2") and CheckBackPack("Flower 3"))
            end
        else
            CommF:InvokeServer("Alchemist", "3")
        end
    end
end

local BlBossHuman = {}
function RaceV3()
    local v113 = CommF:InvokeServer("Wenlocktoad", "1")
    if v113 == 0 then
        CommF:InvokeServer("Wenlocktoad", "2")
        return
    elseif v113 == 2 then
        CommF:InvokeServer("Wenlocktoad", "3")
        return
    elseif v113 == -1 then
        return
    end
    if Race.Value == "Human" then
        local DetectbossHuman = (not table.find(BlBossHuman, "Jeremy") and Bosses["Jeremy"]) or
            (not table.find(BlBossHuman, "Orbitus") and Bosses["Orbitus"]) or
            (not table.find(BlBossHuman, "Diamond") and Bosses["Diamond"])
        if DetectbossHuman then
            KillNigga(DetectbossHuman)
            if not table.find(BlBossHuman, DetectbossHuman.Name) then
                table.insert(BlBossHuman, DetectbossHuman.Name)
            end
        end
    elseif Race.Value == "Mink" then
        repeat
            wait()
            local numisland, island = GetNearIsland()
            if numisland == nil or island == nil then
                if CommF:InvokeServer("Wenlocktoad", "1") ~= 2 then
                    for i, v in pairs(workspace.Map:GetChildren()) do
                        if v:IsA("Model") and v.WorldPivot.Position.Y > 0 and v.WorldPivot.Position.Y < 1500 then
                            table.insert(Islands, { Name = v.Name, CFrame = CFrame.new(v.WorldPivot.Position) })
                        end
                    end
                end
            end
            if numisland ~= nil and island ~= nil then
                if GetDistance(island.CFrame) > 1500 then
                    TP1(island.CFrame)
                end
                wait(1)
                if GetDistance(island.CFrame) <= 1500 then
                    table.remove(Islands, numisland)
                    local startotal = 0
                    if #workspace:WaitForChild("ChestModels"):GetChildren() > 0 then
                        repeat
                            wait()
                            for _, chest in pairs(workspace:WaitForChild("ChestModels"):GetDescendants()) do
                                if CommF:InvokeServer("Wenlocktoad", "1") == 2 then break end
                                if chest.Name == "TouchInterest" then
                                    if chest.Parent then
                                        TP1(chest.Parent.CFrame)
                                        if chest.Parent then
                                            firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart,
                                                chest.Parent, 0)
                                            wait(.5)
                                        end
                                    end
                                end
                            end
                        until #workspace:WaitForChild("ChestModels"):GetChildren() <= 0 or CommF:InvokeServer("Wenlocktoad", "1") == 2
                    end
                end
            end
        until CommF:InvokeServer("Wenlocktoad", "1") == 2
    end
end

checksaber = function()
    if getgenv().BFSettings.AutoItems.Saber then
        if checkinv("Saber") then
            return true
        else
            return false
        end
    else
        return true
    end
end
function collectberries()
    if HaveBerries() then
        if #HaveBerries():GetChildren() == 0 then
            getgenv().CurrentFarmTaskDoing = "Tweening to Berry"
            repeat
                wait()
                TP1(CFrame.new(HaveBerries().Parent:GetPivot().Position))
            until #HaveBerries():GetChildren() > 0 and (HaveBerries().Parent:GetPivot().Position - LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 20
        end
        if #HaveBerries():GetChildren() > 0 then
            for i, v in pairs(HaveBerries():GetChildren()) do
                if v:IsA("Model") then
                    if (v:GetPivot().Position - LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 5 then
                        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v:GetPivot().Position)
                        wait(.5)
                    end
                    if (v:GetPivot().Position - LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5 then
                        getgenv().CurrentFarmTaskDoing = "Collect Berry"
                        if v:FindFirstChild("ProximityPrompt") then fireproximityprompt(v.ProximityPrompt) end
                    end
                end
            end
        end
    end
end
spawn(function()
    while wait() do
        local status, result = pcall(function()
            local level = Level.Value
            if BFSettings["EvoRace"] and CommF:InvokeServer("BartiloQuestProgress", "Bartilo") == 3 and not check2xexp() and string.find(CheckRace(), "V1") and Beli.Value >= 500000 then
                if not World2 then TeleportWorld(2) end
                queue:push("Evo Race V2", Priority["Evo Race V2"])
            else
                queue:pop("Evo Race V2")
            end
            if BFSettings["EvoRace"] and string.find(CheckRace(), "V2") and level >= LevelMax and MLLV["Godhuman"] > 0 and checkSkullGuitar() and table.find({'Mink', 'Human'}, Race.Value) and Beli.Value >= 2000000 then
                if not World2 then TeleportWorld(2) end
                queue:push("Evo Race V3", Priority["Evo Race V3"])
            else
                queue:pop("Evo Race V3")
            end
            if #ServerData.ServerFruit > 0 then
                queue:push("Collecting Fruit", Priority["Collecting Fruit"])
            else
                queue:pop("Collecting Fruit")
            end
            if level >= 200 and getgenv().BFSettings.AutoItems.Saber and not checkinv("Saber") then
                if not World1 then
                    TeleportWorld(1)
                end
                queue:push("Getting Saber", Priority["Getting Saber"])
            else
                queue:pop("Getting Saber")
            end
            if level > 500 and getgenv().BFSettings.AutoItems["Pole"] and not checkinv("Pole (1st Form)") then
                if not World1 then
                    TeleportWorld(1)
                end
                if Bosses["Thunder God"] then
                    queue:push("Getting Pole", Priority["Getting Pole"])
                else
                    getgenv().CurrentFarmTaskDoing = 'Hop Find Thunder God'
                    HopServer()
                end
            else
                queue:pop("Getting Pole")
            end
            if World1 and level >= 700 and
                checkpole() and checksaber()  then
                queue:push("Do Sea 2 Quest", Priority["Do Sea 2 Quest"])
            else
                queue:pop("Do Sea 2 Quest")
            end
            if BFSettings.AutoItems["Collect Berries"] and HaveBerries() then
                queue:push("Collect Berries", Priority["Collect Berries"])
            else
                queue:pop("Collect Berries")
            end
            if World2 then
                if level >= 850 and CommF:InvokeServer("BartiloQuestProgress", "Bartilo") ~= 3 then
                    queue:push("Bartilo Quest", Priority["Bartilo Quest"])
                else
                    queue:pop('Bartilo Quest')
                end
                if level >= 1500 and CommF:InvokeServer("BartiloQuestProgress", "Bartilo") == 3 and IceCastleDoorPassed and WaterkeyPassed then
                    queue:push("Auto Third Sea", Priority["Auto Third Sea"])
                end
            elseif World3 then
                if BFSettings.AutoItems.CDK then
                    if not CommF:InvokeServer("TushitaProgress")["OpenedDoor"] and Bosses["rip_indra True Form"] and level >= 2200 then
                        queue:push("Getting Tushita", Priority["Getting Tushita"])
                    else
                        queue:pop("Getting Tushita")
                    end
                    if not checkinv("Yama") and CommF:InvokeServer("EliteHunter", "Progress") >= 30 then
                        queue:push("Getting Yama")
                    else
                        queue:pop("Getting Yama")
                    end
                else
                    queue:pop("Getting Yama")
                    queue:pop("Getting Tushita")
                end
                if _G.CurrentElite and skidymf(_G.CurrentElite) then
                    queue:push("Farming Elite", Priority["Farming Elite"])
                else
                    queue:pop("Farming Elite")
                end
                if getgenv().PirateRaidTick then
                    queue:push("Farm Pirate Raid", Priority["Farm Pirate Raid"])
                else
                    queue:pop("Farm Pirate Raid")
                end
                --[[if BFSettings.Hop["Hop For Get Tushita"] and BFSettings.AutoItems.CDK and Level.Value >= 2200 and checkinv("Yama") and not checkinv("Tushita") then
                    if not CommF:InvokeServer("TushitaProgress")["OpenedDoor"] then
                        if Bosses["rip_indra True Form"] then
                            queue:push("Getting Tushita", Priority["Getting Tushita"])
                        else
                            getgenv().CurrentFarmTask = "Get Tushita"
                            getgenv().CurrentFarmTaskDoing = "Hop Find Rip_Indra"
                            queue:pop("Getting Tushita")
                            repeat
                                HopApi("rip_indra")
                                wait(1)
                            until Bosses["rip_indra True Form"]
                        end
                    elseif not CommF:InvokeServer("TushitaProgress")["KilledLongma"] then
                        if Bosses["Longma"] then
                            getgenv().CurrentFarmTask = "Get Tushita"
                            KillNigga(Bosses["Longma"])
                        elseif BFSettings.Hop["Hop For Get Tushita"] then
                            getgenv().CurrentFarmTask = "Get Tushita"
                            getgenv().CurrentFarmTaskDoing = "Hop Find Longma"
                            HopServer()
                        end
                    end
                else
                    queue:pop("Getting Tushita")
                end]]--
                if BFSettings.AutoItems["GetMirrorFactorWhenHaveCup"] and (CheckBackPack("Sweet Chalice") or CheckBackPack("God's Chalice")) and level >= 2300 and CheckMaterialCount("Mirror Fractal") == 0 then
                    queue:push("Get Mirror", Priority["Get Mirror"])
                else
                    queue:pop("Get Mirror")
                end
                --[[if CheckMaterialCount("Mirror Fractal") == 0 and BFSettings.Hop['Hop Find Mirror'] and not CheckBackPack("Sweet Chalice") and not CheckBackPack("God's Chalice") and MLLV["Godhuman"] > 0 and
                    checkSkullGuitar()
                    and
                    checkCDK()
                    and
                    checkValkyrieHelm()
                then
                    if not Bosses["Dough King"] then
                        getgenv().CurrentFarmTask = "Hopping find Dough King"
                        repeat
                            HopApi("Dough King")
                            wait(1)
                        until Bosses["Dough King"]
                        if CheckBackPack("Sweet Chalice") or CheckBackPack("God's Chalice") then
                            queue:push("Get Mirror", Priority["Get Mirror"])
                        end
                    else
                        getgenv().CurrentFarmTask = "Get Mirror"
                        KillNigga(Bosses["Dough King"])
                    end
                end]]--
            end
            queuechecked = true
        end)
        if not status then
            print('queue error'..tostring(result))
        end
    end
end)
AutoMeleeCheck()
repeat
    task.wait()
until check2 and meleetaskchecked and queuechecked
CodesX2 = {
    "Sub2CaptainMaui",
    "CODE_SERVICIO",
    "CINCODEMAYO_BOOST",
    "15B_BESTBROTHERS",
    "DEVSCOOKING",
    "GAMERROBOT_YT",
    "ADMINGIVEAWAY",
    "GAMER_ROBOT_1M",
    "TY_FOR_WATCHING",
    "kittgaming",
    "Sub2Fer999",
    "Enyu_is_Pro",
    "Magicbus",
    "JCWK",
    "Starcodeheo",
    "Bluxxy",
    "fudd10_v2",
    "FUDD10",
    "BIGNEWS",
    "THEGREATACE",
    "SUB2GAMERROBOT_EXP1",
    "Sub2OfficialNoobie",
    "StrawHatMaine",
    "SUB2NOOBMASTER123",
    "Sub2Daigrock",
    "Axiore",
    "TantaiGaming",
    "WildDares",
    "BossBuild",
    "GetPranked",
    "EARN_FRUITS",
    "SUB2GAMERROBOT_RESET1",
    "KITT_RESET"
}
spawn(function()
    for r, v in pairs(CodesX2) do
        game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(v)
    end
end)
if getgenv().BFSettings["BlackScreen"] then
    local BlackScreen = Instance.new("Frame")
    local PressPText = Instance.new("TextLabel")
    local UserInputService = game:GetService("UserInputService")
    BlackScreen.ZIndex = 1
    BlackScreen.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    BlackScreen.BorderColor3 = Color3.fromRGB(0, 0, 0)
    BlackScreen.BorderSizePixel = 0
    BlackScreen.Position = UDim2.new(0, 0, 0, -60)
    BlackScreen.Size = UDim2.new(1, 0, 1, 60)
    BlackScreen.Name = "BlackScreen"
    BlackScreen.Parent = ScreenGui

    PressPText.Font = Enum.Font.Gotham
    PressPText.Text = "Press P to toggle black screen"
    PressPText.TextColor3 = Color3.fromRGB(255, 255, 255)
    PressPText.TextSize = 25
    PressPText.TextTransparency = 0.5
    PressPText.AnchorPoint = Vector2.new(0.5, 0.5)
    PressPText.BackgroundTransparency = 1
    PressPText.Position = UDim2.new(0.5, 0, 0.5, 0)
    PressPText.Size = UDim2.new(0, 200, 0, 30)
    PressPText.Name = "PressPText"
    PressPText.Parent = BlackScreen
    local DoubleClick = Instance.new("TextButton")
    local UserInputService = game:GetService("UserInputService")
    local lastClickTime = 0
    local doubleClickThreshold = 0.25
    DoubleClick.Font = Enum.Font.Gotham
    DoubleClick.Text = "Or double click to toggle"
    DoubleClick.TextColor3 = Color3.fromRGB(255, 255, 255)
    DoubleClick.TextSize = 25
    DoubleClick.TextTransparency = 0.5
    DoubleClick.AnchorPoint = Vector2.new(0.5, 0.5)
    DoubleClick.BackgroundTransparency = 1
    DoubleClick.Position = UDim2.new(0.5, 0, 0.525, 0)
    DoubleClick.Size = UDim2.new(0, 200, 0, 30)
    DoubleClick.Name = "DoubleClick"
    DoubleClick.Parent = BlackScreen

    UserInputService.InputBegan:Connect(function(input, gameProcessedEvent)
        if input.KeyCode == Enum.KeyCode.P then
            BlackScreen.Visible = not BlackScreen.Visible
        elseif input.UserInputType == Enum.UserInputType.MouseButton1 then
            local currentTime = tick()
            if currentTime - lastClickTime <= doubleClickThreshold then
                BlackScreen.Visible = not BlackScreen.Visible
            end
            lastClickTime = currentTime
        end
    end)
end
local taskFunctions = {
    ["Collecting Fruit"] = tweenfruit,
    ["Farm Pirate Raid"] = farmraidcastle,
    ["Getting Tushita"] = farmtushita1,
    ["Farming Elite"] = farmelite,
    ["Auto Third Sea"] = AutoThirdSea,
    ["Getting Saber"] = AutoSaber,
    ["Evo Race V2"] = RaceV2,
    ["Evo Race V3"] = RaceV3,
    ["Getting Pole"] = AutoPole,
    ["Bartilo Quest"] = AutoBartiloQuest,
    ["Do Sea 2 Quest"] = AutoSecondSea,
    ["Get Mirror"] = getmirror,
    ["Collect Berries"] = collectberries,
    ["Getting Yama"] = function()
        TP1(CFrame.new(5251, 18, 456))
        repeat
            wait(5)
            fireclickdetector(workspace.Map.Waterfall.SealedKatana.Hitbox.ClickDetector)
        until checkinv("Yama")
    end
}
spawn(function()
    while wait() do
        local success, err = pcall(function()
            if getgenv().MeleeTask and getgenv().MeleeTask ~= '' and getgenv().MeleeTask ~= 'None' then
                getgenv().CurrentFarmTask = getgenv().MeleeTask
                AutoMeleeFunc()
            elseif getgenv().CDKQuest and getgenv().CDKQuest ~= "" then
                getgenv().CurrentFarmTask = getgenv().CDKQuest
                docdkquest()
            elseif getgenv().SkullGuitarQuest and getgenv().SkullGuitarQuest ~= "" and getgenv().SkullGuitarQuest ~= nil then
                getgenv().CurrentFarmTask = getgenv().SkullGuitarQuest
                dosgquest()
            elseif (getgenv().CDKQuest == "" or getgenv().CDKQuest == nil) and (game.Players.LocalPlayer:GetAttribute("IslandRaiding") == true or CheckBackPack('Special Microchip')) then
                getgenv().CurrentFarmTask = "Doing Raid"
                AutoRaid()
            elseif not queue:empty() then
                getgenv().CurrentFarmTask = queue:top()
                if taskFunctions[queue:top()] then
                    taskFunctions[queue:top()]()
                end
            --[[elseif World3 and not checkinv("Valkyrie Helm") and BFSettings.Hop["Hop Find Valkyrie Helm"] and MLLV["Godhuman"] > 0 and checkSkullGuitar() and (not BFSettings.AutoItems.CDK or checkinv('Tushita')) then
                getgenv().CurrentFarmTask = "Find Valkyrie Helm"
                if Bosses["rip_indra True Form"] then
                    KillNigga(Bosses["rip_indra True Form"])
                else
                    getgenv().CurrentFarmTaskDoing = "Hop Find Valkyrie Helm"
                    repeat
                        HopApi("rip_indra")
                        wait(1)
                    until Bosses["rip_indra True Form"]
                end]]--
            else
                AutoL()
            end
        end)
        if not success then
            print('function error'..tostring(err))
        end
    end
end)
getgenv().Ran = true
