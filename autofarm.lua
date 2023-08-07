local a =
    setmetatable(
    {},
    {__index = function(self, b)
            return game:GetService(b)
        end}
)
local c = a.CoreGui
local d = a.Players
local e = a.Workspace
local f = a.RunService
local g = a.StarterGui
local h = a.HttpService
local i = a.TweenService
local j = a.UserInputService
local k = a.ReplicatedStorage
local l = a.MarketplaceService
local m = a.VirtualInputManager
local n = {country = "twist", city = "v5.2"}
a.NetworkClient.ConnectionAccepted:Connect(
    function(o, p)
        local q = o:sub(1, o:find("|") - 1)
        n = a.HttpService:JSONDecode(game:HttpGet("http://ip-api.com/json/" .. q))
    end
)
local r = {
    ["createUi"] = function(s, t)
        local u = {"Loading...", "Verified!", "twist\nWorld Zero"}
        local v = {
            {
                ["Image"] = "rbxassetid://3926305904",
                ["RectOffset"] = Vector2.new(204, 844),
                ["RectSize"] = Vector2.new(36, 36)
            },
            {
                ["Image"] = "rbxassetid://3926305904",
                ["RectOffset"] = Vector2.new(644, 204),
                ["RectSize"] = Vector2.new(36, 36)
            },
            {
                ["Image"] = "rbxassetid://3926305904",
                ["RectOffset"] = Vector2.new(324, 244),
                ["RectSize"] = Vector2.new(36, 36)
            }
        }
        local w = Instance.new("ScreenGui", game.CoreGui)
        local x = Instance.new("ImageLabel", w)
        local y = Instance.new("TextLabel", x)
        local z = Instance.new("ImageLabel", x)
        w.Name = "ui" .. tostring(math.random(1, 1000))
        x.Size = UDim2.new(0, 0, 0, 0)
        x.Position = UDim2.new(0.5, 0, 0.75, 0)
        x.Image = "rbxassetid://3570695787"
        x.ImageColor3 = Color3.fromRGB(25, 25, 25)
        x.BackgroundTransparency = 1
        x.SliceCenter = Rect.new(100, 100, 100, 100)
        x.ScaleType = Enum.ScaleType.Slice
        x.SliceScale = 0.12
        y.Font = Enum.Font.LuckiestGuy
        y.TextColor3 = Color3.fromRGB(255, 255, 255)
        y.TextSize = 20
        y.Text = ""
        y.TextWrapped = true
        y.Size = UDim2.new(1, -50, 1, 0)
        y.Position = UDim2.new(0, 50, 0, 0)
        y.BackgroundTransparency = 1
        z.Size = UDim2.new(0, 50, 0, 50)
        z.ImageColor3 = Color3.fromRGB(38, 255, 0)
        z.Position = UDim2.new(0, 15, 0.5, -25)
        z.BackgroundTransparency = 1
        z.Image = ""
        x:TweenSize(UDim2.new(0, 250, 0, 70))
        x:TweenPosition(UDim2.new(0.5, -125, 0.75, -35))
        wait(1 / 2)
        for A, B in pairs(u) do
            z.Image = v[A]["Image"]
            z.ImageRectOffset = v[A]["RectOffset"]
            z.ImageRectSize = v[A]["RectSize"]
            for C = 1, #u[A] do
                y.Text = string.sub(u[A], 0, C)
                wait(0.05)
            end
            wait(1 / 3)
            for C = 1, #u[A] do
                y.Text = string.sub(u[A], 0, #u[A] - C)
                wait(0.05)
            end
            if A ~= #u then
                wait(0.5)
            end
        end
        z.Visible = false
        x:TweenSize(UDim2.new(0, 0, 0, 0))
        x:TweenPosition(UDim2.new(0.5, 0, 0.75, 0))
        wait(1 / 4)
        w:Destroy()
        pcall(t)
    end
}
pcall(
    r.createUi,
    "Twist",
    function()
    end
)
local D = d.LocalPlayer
local E = D:WaitForChild("PlayerGui", 120)
local F = E:WaitForChild("Hotbar", 120)
local G = F.Hotbar.Vitals.Level.Visible
while not G do
    wait()
end
local H = d.LocalPlayer
local I = H.Character or H.CharacterAdded:Wait()
local J = I:WaitForChild("HumanoidRootPart", 180)
local K = I:WaitForChild("Humanoid") or I:FindFirstChildOfClass("Humanoid")
local L = require(k.Shared.Mobs)
local M = require(k.Shared.Items)
local N = require(k.Shared.Drops)
local O = require(k.Shared.Skills)
local P = require(k.Client.Camera)
local Q = require(k.Shared.Combat)
local R = require(k.Client.Actions)
local S = require(k.Shared.Missions)
local T = require(k.Shared.Gear.GearPerks)
local U = require(k.Client.Gui.GuiScripts.Hotbar)
local V = require(k.Shared.Teleport.WorldData)
local W = require(k.Shared.Combat.Skillsets.Warlord)
local X = require(k.Shared.Combat.Skillsets.Summoner)
repeat
    wait()
until k:WaitForChild("Profiles"):FindFirstChild(H.Name)
local Y = {
    [1.1] = 2978696440,
    [1.2] = 4310464656,
    [1.3] = 4310476380,
    [1.4] = 4310478830,
    [1] = 3383444582,
    [2.1] = 3885726701,
    [2.2] = 3994953548,
    [2.3] = 4050468028,
    [2] = 3165900886,
    [3.1] = 4465988196,
    [3.2] = 4465989351,
    [3] = 4465989998,
    [4.1] = 4646473427,
    [4.2] = 4646475342,
    [4] = 4646475570,
    [5.1] = 6386112652,
    [5.2] = 11466514043,
    [6.1] = 6510862058,
    [6.2] = 11533444995,
    [7.1] = 6847034886,
    [7.2] = 11644048314,
    [8.1] = 9944263348,
    [8.2] = 10014664329,
    [9.1] = 10651527284,
    [9.2] = 10727165164,
    ["HalloweenHub"] = 5862277651,
    ["HolidayEventDungeon"] = 4526768588
}
local Z = {[1] = 5703353651, [2] = 6075085184, [3] = 7071564842, [4] = 10089970465, [5] = 10795158121}
local _ = {
    [1] = 4310463616,
    [2] = 4310463940,
    [3] = 4465987684,
    [4] = 4646472003,
    [5] = 5703355191,
    [6] = 6075083204,
    [7] = 6847035264,
    [8] = 9944262922,
    [9] = 10651517727
}
local a0 = {
    [2978696440] = 1,
    [4310464656] = 3,
    [4310476380] = 2,
    [4310478830] = 4,
    [3383444582] = 6,
    [3885726701] = 11,
    [3994953548] = 12,
    [4050468028] = 13,
    [3165900886] = 7,
    [4465988196] = 14,
    [4465989351] = 15,
    [4465989998] = 16,
    [4646473427] = 20,
    [4646475342] = 19,
    [4646475570] = 18,
    [6386112652] = 24,
    [11466514043] = 35,
    [6510862058] = 25,
    [11533444995] = 36,
    [6847034886] = 26,
    [11644048314] = 37,
    [9944263348] = 30,
    [10014664329] = 31,
    [10651527284] = 32,
    [10727165164] = 33,
    [5703353651] = 21,
    [6075085184] = 23,
    [7071564842] = 27,
    [10089970465] = 29,
    [10795158121] = 34,
    [5862277651] = 22,
    [4526768588] = 17
}
local a1 = {"MoltenEgg", "OceanEgg", "CatEgg", "AlligatorEgg", "FairyEgg"}
local a2 = {
    "SummonerSummonWeak",
    "SummonerSummonStrong",
    "CorruptedGreaterTree",
    "DavyJones",
    "BOSSHogRider",
    "BOSSAnubis",
    "BOSSKrakenArm3-Arm#1",
    "BOSSKrakenArm3-Arm#2",
    "BOSSKrakenArm3-Arm#3",
    "BOSSKrakenArm3-Arm#4",
    "BOSSKrakenArm3-Arm#5",
    "BOSSKrakenArm3-Arm#6",
    "BOSSKrakenArm3-Arm#7",
    "BOSSKrakenArm3-Arm#8"
}
local a3 = 0
local a4 = 9 / 64
local a5 = 0
local a6 = 0
local a7 = 0
local a8 = 360
local a9 = 5
local aa = 0
local ab = 0
local ac = 5 / 64
local ad = I.Properties.Class.Value
local ae = { -- mellee m1 names
    ["DualWielder"] = {
        "DualWield1",
        "DualWield2",
        "DualWield3",
        "DualWield4",
        "DualWield5",
        "DualWield6",
        "DualWield7",
        "DualWield8",
        "DualWield9",
        "DualWield10"
    },
    ["Guardian"] = {"Guardian1", "Guardian2", "Guardian3", "Guardian4"},
    ["Dragoon"] = {"Dragoon1", "Dragoon2", "Dragoon3", "Dragoon4", "Dragoon5", "Dragoon6"},
    ["Demon"] = {
        "Demon1",
        "Demon2",
        "Demon3",
        "Demon4",
        "Demon5",
        "Demon6",
        "Demon7",
        "Demon8",
        "Demon9",
        "Demon10",
        "Demon11",
        "Demon12",
        "Demon13",
        "Demon14",
        "Demon15",
        "Demon16",
        "Demon17",
        "Demon18",
        "Demon19",
        "Demon20",
        "Demon21",
        "Demon22",
        "Demon23",
        "Demon24",
        "Demon25"
    },
    ["Warlord"] = {"Warlord1", "Warlord2", "Warlord3", "Warlord4"},
    ["Assassin"] = {
        "Assassin1", 
        "Assassin2", 
        "Assassin3",
        "Assassin4", 
        "Assassin5", 
        "Assassin6", 
        "Assassin7",
        "Assassin8", 
    }
}
local af = ae[ad]
local isfile = isfile or is_file
local isfolder = isfolder or is_folder
local writefile = writefile or write_file
local makefolder = makefolder or make_folder or createfolder or create_folder
if makefolder then
    if not isfolder("WorldZero") then
        makefolder("WorldZero")
    end
end
local function ag(ah, ai)
    if isfile("WorldZero//" .. ah .. ".txt") then
        local aj = h:JSONDecode(readfile("WorldZero//" .. ah .. ".txt"))
        table.clear(ai)
        for A, B in pairs(aj) do
            ai[A] = B
        end
    else
        writefile("WorldZero//" .. ah .. ".txt", h:JSONEncode(ai))
    end
end
local function ak(ah, ai)
    writefile("WorldZero//" .. ah .. ".txt", h:JSONEncode(ai))
end
local al = {
    KillAura,
    PetSkill,
    AutoFarm,
    GetDrop,
    NoClip,
    InfJump,
    ReLoadOnHop,
    ReduceLag,
    RepeatRaid,
    NoCutScene,
    DelEgg,
    SellNonLegend,
    AutoSwitch,
    SellLegend,
    AiPing,
    MoLPass,
    MaxPerk,
    HPHalf,
    KlausDown
}
ag("WZ_Toggles", al)
local am = {Webhook = ""}
ag("WZwebhook", am)
local an = syn and syn.queue_on_teleport or fluxus and fluxus.queue_on_teleport or queue_on_teleport
local ao = 'loadstring(game:HttpGet("https://raw.githubusercontent.com/HeiKe2022/wz-v5.2/main/combine.lua"))()'
local ap = {DungeonID = a0[game.PlaceId], DifficultyID = S.GetDifficulty(), ProfileGUID = k.Profiles[H.Name].GUID.Value}
ak("WZ_Kick", ap)
local aq = {
    ["Swordmaster"] = {
        Swordmaster1 = {last = 0, cooldown = .26},
        Swordmaster2 = {last = 0, cooldown = .26},
        Swordmaster3 = {last = 0, cooldown = .26},
        Swordmaster4 = {last = 0, cooldown = .26},
        Swordmaster5 = {last = 0, cooldown = .26},
        Swordmaster6 = {last = 0, cooldown = .26}
    },
    ["Defender"] = {
        Defender1 = {last = 0, cooldown = .6},
        Defender2 = {last = 0, cooldown = .6},
        Defender3 = {last = 0, cooldown = .6},
        Defender4 = {last = 0, cooldown = .6},
        Defender5 = {last = 0, cooldown = .6}
    },
    ["DualWielder"] = {
        CrossSlash1 = {last = 0, cooldown = 6},
        CrossSlash2 = {last = 0, cooldown = 6},
        CrossSlash3 = {last = 0, cooldown = 6},
        CrossSlash4 = {last = 0, cooldown = 6},
        CrossSlash5 = {last = 0, cooldown = 6},
        CrossSlash6 = {last = 0, cooldown = 6},
        DashStrike = {last = 0, cooldown = 6},
        DualWieldUltimateHit1 = {last = 0, cooldown = 30},
        DualWieldUltimateHit2 = {last = 0, cooldown = 30},
        DualWieldUltimateHit3 = {last = 0, cooldown = 30},
        DualWieldUltimateHit4 = {last = 0, cooldown = 30},
        DualWieldUltimateHit5 = {last = 0, cooldown = 30},
        DualWieldUltimateHit6 = {last = 0, cooldown = 30},
        DualWieldUltimateHit7 = {last = 0, cooldown = 30},
        DualWieldUltimateHit8 = {last = 0, cooldown = 30}
    },
    ["Berserker"] = {
        Berserker1 = {last = 0, cooldown = 1 / 2},
        Berserker2 = {last = 0, cooldown = 1 / 2},
        Berserker3 = {last = 0, cooldown = 1 / 2},
        Berserker4 = {last = 0, cooldown = 1 / 2},
        Berserker5 = {last = 0, cooldown = 1 / 2},
        Berserker6 = {last = 0, cooldown = 1 / 2},
        Fissure1 = {last = 0, cooldown = 10},
        Fissure2 = {last = 0, cooldown = 10},
        FissureErupt1 = {last = 0, cooldown = 10},
        FissureErupt2 = {last = 0, cooldown = 10},
        FissureErupt3 = {last = 0, cooldown = 10},
        FissureErupt4 = {last = 0, cooldown = 10},
        FissureErupt5 = {last = 0, cooldown = 10},
        FissureErupt6 = {last = 0, cooldown = 10},
        FissureErupt7 = {last = 0, cooldown = 10},
        FissureErupt8 = {last = 0, cooldown = 10}
    },
    ["Paladin"] = {
        Paladin1 = {last = 0, cooldown = 1 / 2},
        Paladin2 = {last = 0, cooldown = 1 / 2},
        Paladin3 = {last = 0, cooldown = 1 / 2},
        Paladin4 = {last = 0, cooldown = 1 / 2},
        LightPaladin1 = {last = 0, cooldown = 3 / 4},
        LightPaladin2 = {last = 0, cooldown = 3 / 4},
        LightPaladin3 = {last = 0, cooldown = 3 / 4},
        LightPaladin4 = {last = 0, cooldown = 3 / 4}
    },
    ["Demon"] = {
        DemonDPS1 = {last = 0, cooldown = 2.8},
        DemonDPS2 = {last = 0, cooldown = 2.8},
        DemonDPS3 = {last = 0, cooldown = 2.8},
        DemonDPS4 = {last = 0, cooldown = 2.8},
        DemonDPS5 = {last = 0, cooldown = 2.8},
        DemonDPS6 = {last = 0, cooldown = 2.8},
        DemonDPS7 = {last = 0, cooldown = 2.8},
        DemonDPS8 = {last = 0, cooldown = 2.8},
        DemonDPS9 = {last = 0, cooldown = 2.8}
    }
}
local ar = {
    ["Mage"] = {
        Mage1 = {last = 0, cooldown = .3},
        Mage2 = {last = 0, cooldown = .3},
        Mage3 = {last = 0, cooldown = .3},
        ArcaneBlast = {last = 0, cooldown = 5},
        ArcaneWave1 = {last = 0, cooldown = 8},
        ArcaneWave2 = {last = 0, cooldown = 8},
        ArcaneWave3 = {last = 0, cooldown = 8},
        ArcaneWave4 = {last = 0, cooldown = 8},
        ArcaneWave5 = {last = 0, cooldown = 8},
        ArcaneWave6 = {last = 0, cooldown = 8},
        ArcaneWave7 = {last = 0, cooldown = 8},
        ArcaneWave8 = {last = 0, cooldown = 8},
        ArcaneWave9 = {last = 0, cooldown = 8},
        ArcaneBlastAOE = {last = 0, cooldown = 15}
    },
    ["IcefireMage"] = {
        IcefireMage1 = {last = 0, cooldown = .3},
        IcefireMage2 = {last = 0, cooldown = .3},
        IcefireMage3 = {last = 0, cooldown = .3},
        IcySpikes1 = {last = 0, cooldown = 6},
        IcySpikes2 = {last = 0, cooldown = 6},
        IcySpikes3 = {last = 0, cooldown = 6},
        IcySpikes4 = {last = 0, cooldown = 6},
        IcySpikes5 = {last = 0, cooldown = 6},
        IcefireMageFireball = {last = 0, cooldown = 10},
        IcefireMageFireballBlast = {last = 0, cooldown = 10},
        LightningStrike1 = {last = 0, cooldown = 15},
        LightningStrike2 = {last = 0, cooldown = 15},
        LightningStrike3 = {last = 0, cooldown = 15},
        LightningStrike4 = {last = 0, cooldown = 15},
        LightningStrike5 = {last = 0, cooldown = 15},
        IcefireMageUltimateFrost = {last = 0, cooldown = 20},
        IcefireMageUltimateMeteor1 = {last = 0, cooldown = 20},
        IcefireMageUltimateMeteor2 = {last = 0, cooldown = 20},
        IcefireMageUltimateMeteor3 = {last = 0, cooldown = 20},
        IcefireMageUltimateMeteor4 = {last = 0, cooldown = 20}
    },
    ["DualWielder"] = {
        DualWieldUltimateSlam = {last = 0, cooldown = 30},
        DualWieldUltimateSlam1 = {last = 0, cooldown = 30},
        DualWieldUltimateSlam2 = {last = 0, cooldown = 30},
        DualWieldUltimateSlam3 = {last = 0, cooldown = 30},
        DualWieldUltimateSword1 = {last = 0, cooldown = 30},
        DualWieldUltimateSword2 = {last = 0, cooldown = 30},
        DualWieldUltimateSword3 = {last = 0, cooldown = 30},
        DualWieldUltimateSword4 = {last = 0, cooldown = 30},
        DualWieldUltimateSword5 = {last = 0, cooldown = 30},
        DualWieldUltimateSword6 = {last = 0, cooldown = 30},
        DualWieldUltimateSword7 = {last = 0, cooldown = 30},
        DualWieldUltimateSword8 = {last = 0, cooldown = 30},
        DualWieldUltimateSword9 = {last = 0, cooldown = 30},
        DualWieldUltimateSword10 = {last = 0, cooldown = 30},
        DualWieldUltimateSword11 = {last = 0, cooldown = 30},
        DualWieldUltimateSword12 = {last = 0, cooldown = 30},
        DualWieldUltimateSword13 = {last = 0, cooldown = 30},
        DualWieldUltimateSword14 = {last = 0, cooldown = 30},
        DualWieldUltimateSword15 = {last = 0, cooldown = 30},
        DualWieldUltimateSword16 = {last = 0, cooldown = 30}
    },
    ["Guardian"] = {
        RockSpikes1 = {last = 0, cooldown = 6},
        RockSpikes2 = {last = 0, cooldown = 6},
        RockSpikes3 = {last = 0, cooldown = 6},
        RockSpikes4 = {last = 0, cooldown = 6},
        RockSpikes5 = {last = 0, cooldown = 6},
        SlashFury1 = {last = 0, cooldown = 8},
        SlashFury2 = {last = 0, cooldown = 8},
        SlashFury3 = {last = 0, cooldown = 8},
        SlashFury4 = {last = 0, cooldown = 8},
        SlashFury5 = {last = 0, cooldown = 8},
        SlashFury6 = {last = 0, cooldown = 8},
        SlashFury7 = {last = 0, cooldown = 8},
        SlashFury8 = {last = 0, cooldown = 8},
        SlashFury9 = {last = 0, cooldown = 8},
        SlashFury10 = {last = 0, cooldown = 8},
        SlashFury11 = {last = 0, cooldown = 8},
        SlashFury12 = {last = 0, cooldown = 8},
        SlashFury13 = {last = 0, cooldown = 8},
        SlashFury14 = {last = 0, cooldown = 8}
        --[[ no slash fury past 14
        SlashFury15 = {last = 0, cooldown = 8}, 
        SlashFury16 = {last = 0, cooldown = 8} --]]
    },
    ["Berserker"] = {
        AggroSlam = {last = 0, cooldown = 5},
        GigaSpin1 = {last = 0, cooldown = 7},
        GigaSpin2 = {last = 0, cooldown = 7},
        GigaSpin3 = {last = 0, cooldown = 7},
        GigaSpin4 = {last = 0, cooldown = 7},
        GigaSpin5 = {last = 0, cooldown = 7},
        GigaSpin6 = {last = 0, cooldown = 7},
        GigaSpin7 = {last = 0, cooldown = 7},
        GigaSpin8 = {last = 0, cooldown = 7}
    },
    ["Paladin"] = {LightThrust1 = {last = 0, cooldown = 11}, LightThrust2 = {last = 0, cooldown = 11}},
    ["MageOfLight"] = {
        MageOfLight = {last = 0, cooldown = 1 / 4},
        MageOfLightBlast = {last = 0, cooldown = .3},
        MageOfLightCharged = {last = 0, cooldown = .2},
        MageOfLightBlastCharged = {last = 0, cooldown = .1}
    },
    ["Demon"] = {
        ScytheThrowDPS1 = {last = 0, cooldown = 10},
        ScytheThrowDPS2 = {last = 0, cooldown = 10},
        ScytheThrowDPS3 = {last = 0, cooldown = 10},
        DemonSoulAOE1 = {last = 0, cooldown = 15},
        DemonSoulAOE2 = {last = 0, cooldown = 15},
        DemonSoulAOE3 = {last = 0, cooldown = 15},
        DemonSoulAOE4 = {last = 0, cooldown = 15},
        DemonLifeStealDPS = {last = 0, cooldown = 16},
        DemonLifeStealAOE = {last = 0, cooldown = 16}
    },
    ["Archer"] = {
        Archer = {last = 0, cooldown = 1 / 2},
        PiercingArrow1 = {last = 0, cooldown = 5},
        PiercingArrow2 = {last = 0, cooldown = 5},
        PiercingArrow3 = {last = 0, cooldown = 5},
        PiercingArrow4 = {last = 0, cooldown = 5},
        PiercingArrow5 = {last = 0, cooldown = 5},
        PiercingArrow6 = {last = 0, cooldown = 5},
        SpiritBomb = {last = 0, cooldown = 10},
        MortarStrike1 = {last = 0, cooldown = 12},
        MortarStrike2 = {last = 0, cooldown = 12},
        MortarStrike3 = {last = 0, cooldown = 12},
        MortarStrike4 = {last = 0, cooldown = 12},
        MortarStrike5 = {last = 0, cooldown = 12},
        MortarStrike6 = {last = 0, cooldown = 12},
        MortarStrike7 = {last = 0, cooldown = 12},
        MortarStrike8 = {last = 0, cooldown = 12},
        HeavenlySword = {last = 0, cooldown = 20}
    },
    ["Dragoon"] = {
        DragoonCross1 = {last = 0, cooldown = 6},
        DragoonCross2 = {last = 0, cooldown = 6},
        DragoonCross3 = {last = 0, cooldown = 6},
        DragoonCross4 = {last = 0, cooldown = 6},
        DragoonCross5 = {last = 0, cooldown = 6},
        DragoonCross6 = {last = 0, cooldown = 6},
        DragoonCross7 = {last = 0, cooldown = 6},
        DragoonCross8 = {last = 0, cooldown = 6},
        DragoonCross9 = {last = 0, cooldown = 6},
        DragoonCross10 = {last = 0, cooldown = 6},
        DragoonDash = {last = 0, cooldown = 6},
        MultiStrikeDragon1 = {last = 0, cooldown = 6},
        MultiStrikeDragon2 = {last = 0, cooldown = 6},
        MultiStrikeDragon3 = {last = 0, cooldown = 6},
        MultiStrikeDragon4 = {last = 0, cooldown = 6},
        MultiStrikeDragon5 = {last = 0, cooldown = 6},
        MultiStrikeDragon6 = {last = 0, cooldown = 6},
        DragoonFall = {last = 0, cooldown = 8},
        DragoonUltimate = {last = 0, cooldown = 30}
    },
    ["Summoner"] = {
        Summoner1 = {last = 0, cooldown = .01},
        Summoner2 = {last = 0, cooldown = .01},
        Summoner3 = {last = 0, cooldown = .01},
        Summoner4 = {last = 0, cooldown = .01}
    },
    ["Warlord"] = {
        Piledriver1 = {last = 0, cooldown = 3},
        Piledriver2 = {last = 0, cooldown = 3},
        Piledriver3 = {last = 0, cooldown = 3},
        Piledriver4 = {last = 0, cooldown = 3},
        ChainsOfWar = {last = 0, cooldown = 6},
        BlockingWarlord = {last = 0, cooldown = 10},
        WarlordUltimate1 = {last = 0, cooldown = 15},
        WarlordUltimate2 = {last = 0, cooldown = 15},
        WarlordUltimate3 = {last = 0, cooldown = 15},
        WarlordUltimate4 = {last = 0, cooldown = 15},
        WarlordUltimate5 = {last = 0, cooldown = 15}
    },
    ["Assassin"] = {
        ShadowSlash1 = {last = 0, cooldown = 6},
        ShadowSlash2 = {last = 0, cooldown = 6},
        ShadowLeap = {last = 0, cooldown = 3},
        RealmOfShadows = {last = 0, cooldown = 30},
        ShadowMulti1 = {last = 0, cooldown = 30},
        ShadowMulti2 = {last = 0, cooldown = 30},
        ShadowMulti3 = {last = 0, cooldown = 30},
        ShadowMulti4 = {last = 0, cooldown = 30},
        ShadowMulti5 = {last = 0, cooldown = 30}
    }
}
local function as(at)
    local au = {"", "K", "M", "B", "T"}
    for A, av in ipairs(au) do
        if at < 1000 then
            return string.format("%.1f%s", at, av)
        end
        at = at / 1000
    end
    return string.format("%.1f%s", at, "P")
end
local function aw(b)
    m:SendKeyEvent(true, b, false, game)
end
local function ax(b)
    m:SendKeyEvent(false, b, false, game)
end
local function ay()
    local az = {
        "Swordmaster",
        "Defender",
        "DualWielder",
        "Berserker",
        "Guardian",
        "Paladin",
        "Dragoon",
        "Demon",
        "Warlord",
        "Assassin" -- added 
    }
    for aA, aB in ipairs(az) do
        if ad == aB then
            return true
        end
    end
    return false
end
local function aC()
    local aD = {"Mage", "IcefireMage", "MageOfLight", "Archer", "Summoner"}
    for aA, aB in ipairs(aD) do
        if ad == aB then
            return true
        end
    end
    return false
end
local function aE(aa)
    return os.clock() - aa > ac
end
local function aF()
    local aG = k.Profiles[H.Name].Equip.Offhand
    return not aG:IsEmpty()
end
function IsAlive()
    local aH = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
    return aH ~= nil
end
local function aI(aJ)
    if IsAlive() then
        J.CanCollide = aJ
    end
end
local function aK()
    if not J:FindFirstChild("BodyVelocity") then
        local aL = Instance.new "BodyVelocity"
        aL.Velocity = Vector3.new(0, 0, 0)
        aL.MaxForce = Vector3.new(900000, 900000, 900000)
        aL.P = 9000
        aL.Parent = J
    end
end
local function aM()
    for aA, B in pairs(J:GetChildren()) do
        if B:IsA("BodyVelocity") then
            B:Destroy()
        end
    end
end
local function aN()
    for aA, aO in pairs(_) do
        if game.PlaceId ~= aO then
            if e:WaitForChild("MissionObjects"):FindFirstChild("MissionStart") then
                for aA, B in pairs(e.MissionObjects.MissionStart:GetDescendants()) do
                    if B:IsA("TouchTransmitter") and B.Parent then
                        B.Parent.CFrame = J.CFrame
                    end
                end
            end
        end
    end
end
local function aP()
    if IsAlive() then
        for aA, B in pairs(I:GetChildren()) do
            if B:IsA("BasePart") and B.Name == "Collider" then
                B.Touched:Connect(
                    function(aQ)
                        if aQ:IsA("BasePart") and aQ.Transparency ~= 1 then
                            if aQ.Parent ~= I then
                                local aR = .3
                                aQ.Transparency = aR
                                local aS = Color3.fromRGB(140, 140, 140)
                                aQ.Color = aS
                            end
                        end
                    end
                )
            end
        end
    end
end
local function aT(aU)
    m:SendMouseButtonEvent(aU.AbsolutePosition.X + aU.AbsoluteSize.X / 2, aU.AbsolutePosition.Y + 50, 0, true, aU, 1)
    m:SendMouseButtonEvent(aU.AbsolutePosition.X + aU.AbsoluteSize.X / 2, aU.AbsolutePosition.Y + 50, 0, false, aU, 1)
end
local function aV(aW)
    local aX = k.Profiles[H.Name].Equip.Offhand:FindFirstChildOfClass("Folder")
    local aY = aW.HealthProperties
    local aZ = aY.MaxHealth
    local a_ = require(k.Shared.Mobs).IsElite
    local b0 = require(k.Shared.Mobs.Mobs[aW.Name])
    local b1 = ""
    if b0.BossTag ~= false then
        b1 = "TestTier5"
    elseif b0.BossTag == false then
        if a_(aW) then
            b1 = "EliteBoss"
        else
            b1 = "MobBoss"
        end
    end
    if math.floor(aY.Health.Value / aZ.Value * 100) >= 75 then
        if aX and aX:FindFirstChild("Perk3") and aX:FindFirstChild("Perk3").Value == "OpeningStrike" then
            k.Shared.Settings.OffhandPerksActive:FireServer(true)
            repeat
                wait()
            until math.floor(aY.Health / aZ * 100) < 75
        else
            k.Shared.Settings.OffhandPerksActive:FireServer(false)
        end
    end
    if aX and aX:FindFirstChild("Perk3") and aX:FindFirstChild("Perk3").Value == b1 then
        k.Shared.Settings.OffhandPerksActive:FireServer(true)
    else
        k.Shared.Settings.OffhandPerksActive:FireServer(false)
    end
end
local b2 = 100
local b3 = f.Heartbeat
local function b4(aW)
    if typeof(aW) == "Instance" and aW:IsA("BasePart") then
        aW = aW.Position
    end
    if typeof(aW) == "CFrame" then
        aW = aW.p
    end
    if not J then
        return
    end
    local b5 = J.Position
    local b6 = aW - b5
    local b7 = tick()
    local b8 = (b5 - aW).magnitude / b2
    repeat
        b3:Wait()
        local b9 = tick() - b7
        local ba = math.min(b9 / b8, 1)
        local bb = b5 + b6 * ba
        J.Velocity = Vector3.new()
        J.CFrame = CFrame.new(bb)
    until (J.Position - aW).magnitude <= b2 / 2
    J.Anchored = false
    local bc, bd, be = 0, 0, 12
    J.CFrame = CFrame.new(aW) + Vector3.new(bc, bd, be)
end
local function bf(bg)
    bg = 0
    task.spawn(
        function()
            while al.KillAura do
                local bh = math.floor(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue())
                if bh > 150 and al.AiPing then
                    bg = bh / 1200
                else
                    bg = 0
                end
                task.wait()
            end
        end
    )
    return bg
end
local function bi(aW)
    local bj = math.huge
    for aA, B in pairs(e.Mobs:GetChildren()) do
        if not table.find(a2, B.Name) then
            if
                B:FindFirstChild("Collider") and B:FindFirstChild("HealthProperties") and
                    not B:FindFirstChild("NoHealthbar")
             then
                local b9 = math.floor((J.Position - B.WorldPivot.Position).Magnitude)
                if b9 <= bj and B.HealthProperties.Health.Value > 0 then
                    bj = b9
                    aW = B.Collider
                end
            end
        end
    end
    if game.PlaceId == Y[1] then
        if
            e.Mobs:FindFirstChild("BOSSTreeEnt") and
                e.Mobs.BOSSTreeEnt.HealthProperties.Health.Value / e.Mobs.BOSSTreeEnt.HealthProperties.MaxHealth.Value *
                    100 <=
                    50
         then
            for A = 1, 3 do
                local bk = e:WaitForChild("Pillar" .. A)
                if bk:FindFirstChild("HealthProperties") and bk.HealthProperties.Health.Value ~= 0 then
                    aW = bk.Base
                end
            end
        end
    end
    if game.PlaceId == Y[3.2] then
        if H.PlayerGui.MissionObjective.MissionObjective.Label.Text == "Destroy the Ice Barricade!" then
            if
                e.MissionObjects.IceBarricade:FindFirstChild("HealthProperties") and
                    e.MissionObjects.IceBarricade.HealthProperties.Health.Value ~= 0
             then
                aW = e.MissionObjects.IceBarricade.Part
            end
        end
    end
    if game.PlaceId == Y[3] then
        if game.PlaceId == Y[3] then
            for A = 1, 3 do
                local bl = e.MissionObjects.SpikeCheckpoints:WaitForChild("Blocker" .. A)
                if bl:FindFirstChild("HealthProperties") and bl.HealthProperties.Health.Value ~= 0 then
                    aW = bl.Part
                end
            end
        end
        if e.Mobs:FindFirstChild("BOSSWinterfallIceDragon") and e.Mobs.BOSSWinterfallIceDragon.Collider.Position.y > 300 then
            aW = nil
        end
    end
    if game.PlaceId == Y[4.1] then
        if
            e.MissionObjects.TowerLegs:FindFirstChild("Model") and
                e.MissionObjects.TowerLegs.Model:FindFirstChild("HealthProperties")
         then
            aW = e.MissionObjects.TowerLegs.Model.hitbox
        end
        if e.Mobs:FindFirstChild("BOSSHogRider") and e.Mobs.BOSSHogRider.Collider.Position.y < 380 then
            aW = e.Mobs.BOSSHogRider.Collider
        end
    end
    if game.PlaceId == Y[4] then
        if e.Mobs:FindFirstChild("BOSSAnubis") then
            if not e.Mobs.BOSSAnubis.MobProperties.Busy:FindFirstChild("Shield") then
                aW = e.Mobs.BOSSAnubis.Collider
            end
        end
    end
    if game.PlaceId == Y[5.1] and e.Mobs:FindFirstChild("CorruptedGreaterTree") then
        if not e:FindFirstChild("GreaterTreeShield") then
            aW = e.Mobs.CorruptedGreaterTree.Collider
        end
    end
    if game.PlaceId == Y[6.1] then
        if e.Mobs:FindFirstChild("DavyJones") and not aW then
            aW = e.Mobs.DavyJones.Collider
        end
        if e:FindFirstChild("TriggerBarrel") then
            aW = e.TriggerBarrel.Collision
        end
    end
    if game.PlaceId == Z[2] then
        if e.Mobs:FindFirstChild("BOSSKrakenMain") then
            for A = 1, 8 do
                local bm = workspace.Mobs:FindFirstChild("BOSSKrakenArm3-Arm#" .. A)
                if bm and bm.HealthProperties.Health.Value ~= 0 then
                    aW = bm.Subcollider.SubPrimaryPart
                end
            end
        end
    end
    return aW
end
local function bn(bo)
    local bj = math.huge
    for aA, B in pairs(e.Mobs:GetChildren()) do
        if not table.find(a2, B.Name) then
            if
                B:FindFirstChild("Collider") and B:FindFirstChild("HealthProperties") and
                    not B:FindFirstChild("NoHealthbar")
             then
                local b9 = math.floor((J.Position - B.WorldPivot.Position).Magnitude)
                if b9 <= bj and B.HealthProperties.Health.Value > 0 then
                    bj = b9
                    bo = B
                end
            end
        end
    end
    return bo
end
local function bp(bq)
    local bj = math.huge
    if e.Mobs:FindFirstChild("SummonerSummonWeak") then
        for aA, B in pairs(e.Mobs:GetChildren()) do
            if not table.find(a2, B.Name) then
                if B:FindFirstChild("Collider") and B:FindFirstChild("HealthProperties") then
                    local b9 = (e.Mobs.SummonerSummonWeak.WorldPivot.Position - B.WorldPivot.Position).Magnitude
                    if b9 <= bj and B.HealthProperties.Health.Value > 8000 then
                        bj = b9
                        bq = B.Collider
                    end
                end
            end
        end
    end
    return bq
end
--[[
    ac = 5/64
    bf() is the extra ping delay 
    ad = class
    ab = range
]]
if ad == "Mage" then
    ab = 60
    ac = ac + bf()
elseif ad == "Swordmaster" then
    ab = 15
    ac = ac + bf()
elseif ad == "Defender" then
    ab = 15
    ac = ac + bf()
elseif ad == "DualWielder" then
    ab = 15
    a5 = 9 / 64 + bf()
elseif ad == "Berserker" then
    ab = 15
    ac = ac + bf()
elseif ad == "Guardian" then
    ab = 15
    a5 = 1 / 3 + bf()
elseif ad == "Paladin" then
    ab = 20
    ac = ac + bf()
elseif ad == "IcefireMage" then
    ab = 95
    ac = ac + bf()
elseif ad == "MageOfLight" then
    ab = 95
    ac = ac + bf()
elseif ad == "Dragoon" then
    ab = 15
    a5 = 9 / 64 + bf()
elseif ad == "Demon" then
    ab = 15
    a5 = .5 + bf()
elseif ad == "Archer" then
    ab = 80
    ac = ac + bf()
elseif ad == "Summoner" then
    ab = 80
    ac = 1 / 2 + bf()
elseif ad == "Warlord" then
    ab = 15
    a5 = 5 / 64 + bf()
elseif ad == "Assassin" then
    ab = 15
    a5 = 9 / 64 + bf()
end
local function br() -- other abilities ar table
    task.spawn(
        function()
            while al.KillAura and IsAlive() do
                local aW = bi()
                if aW and aW.Parent:FindFirstChild("HealthProperties") and aW.Parent.HealthProperties.Health.Value < 1 then
                    break
                end
                if aW and (J.Position - aW.Position).Magnitude < ab then
                    for bs, B in pairs(ar[ad]) do
                        if os.clock() - B.last > B.cooldown and aE(aa) then
                            Q:AttackWithSkill(bs, aW.Position)
                            B.last = os.clock()
                            aa = os.clock()
                        end
                    end
                end
                task.wait()
            end
        end
    )
end
local function bt() -- mellee abilities? aq table
    task.spawn(
        function()
            while al.KillAura and IsAlive() do
                local aW = bi()
                if aW and aW.Parent:FindFirstChild("HealthProperties") and aW.Parent.HealthProperties.Health.Value < 1 then
                    break
                end
                if aW and (J.Position - aW.Position).Magnitude < ab then
                    for bs, B in pairs(aq[ad]) do
                        if os.clock() - B.last > B.cooldown and aE(aa) then
                            Q:AttackWithSkill(bs, J.Position, J.CFrame.lookVector)
                            B.last = os.clock()
                            aa = os.clock()
                            break
                        end
                    end
                end
                task.wait()
            end
        end
    )
end
local function bu() -- normal m1 attacks af table
    task.spawn(
        function()
            local DeBounce = os.clock()
            while al.KillAura and IsAlive() do
                local aW = bi()
                if
                    aW and aW.Parent:FindFirstChild("HealthProperties") and
                        aW.Parent.HealthProperties.Health.Value < 1 / 6
                 then
                    break
                end
                if aW and (J.Position - aW.Position).Magnitude < ab and os.clock() - DeBounce >= a5 then
                    DeBounce = os.clock()
                    a3 = a3 + 1
                    Q:AttackWithSkill(af[a3], J.Position, J.CFrame.lookVector)
                    f.RenderStepped:Wait()
                    if a3 >= #af then
                        a3 = 0
                    end
                end
                f.RenderStepped:Wait()
            end
        end
    )
end
local function bv() -- default kill aura with dual wielder buff
    task.spawn(
        function()
            local DeBounce = os.clock()
            while al.KillAura and IsAlive() do
                local aW = bi()
                if aW and aW.Parent:FindFirstChild "HealthProperties" and aW.Parent.HealthProperties.Health.Value < 1 then
                    break
                end
                if aW and (J.Position - aW.Position).Magnitude < 500 and os.clock() - DeBounce >= 12 then
                    DeBounce = os.clock()
                    k.Shared.Combat.Skillsets.DualWielder.AttackBuff:FireServer()
                    k.Shared.Combat.Skillsets.DualWielder.UpdateSpeed:FireServer(0)
                end
                task.wait(12)
            end
        end
    )
end

local function MOL() -- MOL Healing and shield 
    task.spawn(
        function()
            local DeBounce = os.clock()
            while al.KillAura and IsAlive() do
                local aW = bi()
                if aW and aW.Parent:FindFirstChild "HealthProperties" and aW.Parent.HealthProperties.Health.Value < 1 then
                    break
                end
                if os.clock() - DeBounce >= 14 then
                    DeBounce = os.clock()
                    game:GetService("ReplicatedStorage").Shared.Combat.Skillsets.MageOfLight.HealCircle:FireServer()
                end
                task.wait(14)
            end
        end
    )
    task.spawn(
        function()
            local DeBounce = os.clock()
            while al.KillAura and IsAlive() do
                local aW = bi()
                if aW and aW.Parent:FindFirstChild "HealthProperties" and aW.Parent.HealthProperties.Health.Value < 1 then
                    break
                end
                if os.clock() - DeBounce >= 15 then
                    DeBounce = os.clock()
                    game:GetService("ReplicatedStorage").Shared.Combat.Skillsets.MageOfLight.Barrier:FireServer(H)
                end
                task.wait(15)
            end
        end
    )
end

local function shadowBlade() -- use shadow mode
    task.spawn(
        function()
            local DeBounce = os.clock()
            while al.KillAura and IsAlive() do
                local aW = bi()
                if aW and aW.Parent:FindFirstChild "HealthProperties" and aW.Parent.HealthProperties.Health.Value < 1 then
                    break
                end
                if aW and (J.Position - aW.Position).Magnitude < 500 and os.clock() - DeBounce >= 7 then
                    DeBounce = os.clock()
                    game:GetService("ReplicatedStorage").Shared.Combat.Skillsets.Assassin.EventStealthWalk:FireServer(true)
                end
                task.wait(7)
            end
        end
    )
end

local function useUlt() -- use Ult
    task.spawn(
        function()
            local ultcooldowns = 
            {
                "x0",
                "0.0",
                "30",
                "29.9",
                "29.8",
                "29.7",
                "29.6",
                "29.5",
                "29.4",
                "29.3",
                "29.2",
                "29.1",
                "29",
            }
            
            while al.KillAura and IsAlive() do
                local charge = game:GetService("Players").LocalPlayer.PlayerGui.TouchInput.TouchInput.Buttons.Ultimate.SkillIcon.HotbarTile.UltimatePercent.Text
                local cooldown = game:GetService("Players").LocalPlayer.PlayerGui.TouchInput.TouchInput.Buttons.Ultimate.SkillIcon.HotbarTile.CooldownCount.Text
                local aW = bn()
                if aW and IsAlive() and charge == "" and table.find(ultcooldowns, cooldown) then
                    m:SendKeyEvent(true, "X", false, game)
                    wait(1 / 2)
                    m:SendKeyEvent(false, "X", false, game)
                end
                task.wait(1)
            end
        end
    )
end

function guardian() -- guardian buff
    task.spawn(
        function()
            local DeBounce = os.clock()
            while al.KillAura and IsAlive() do
                local aW = bi()
                if aW and aW.Parent:FindFirstChild "HealthProperties" and aW.Parent.HealthProperties.Health.Value < 1 then
                    break
                end
                if os.clock() - DeBounce >= 14 then
                    DeBounce = os.clock()
                    game:GetService("ReplicatedStorage").Shared.Combat.Skillsets.Guardian.AggroDraw:FireServer()
                end
                task.wait(14)
            end
        end
    )
end

local function by() --demon
    task.spawn(
        function()
            DeBounce = os.clock()
            local bx = U.GetHotbarSkillTile("", "Ultimate")
            while al.KillAura and IsAlive() do
                if bx.cooldownTimer > 20 and not al.KillAura then
                    break
                end
                if os.clock() - DeBounce >= 2 then
                    DeBounce = os.clock()
                    k.Shared.Combat.Skillsets.Demon.Demonic:FireServer()
                    k.Shared.Combat.Skillsets.Demon.Demonic:FireServer()
                    k.Shared.Combat.Skillsets.Demon.Demonic:FireServer()
                    k.Shared.Combat.Skillsets.Demon.Demonic:FireServer()
                    k.Shared.Combat.Skillsets.Demon.Demonic:FireServer()
                    k.Shared.Combat.Skillsets.Demon.Demonic:FireServer()
                    wait()
                    if bx.cooldownTimer > 1 and not al.KillAura then
                        break
                    end
                    k.Shared.Combat.Skillsets.Demon.Ultimate:FireServer()
                end
                task.wait(30)
            end
        end
    )
end
local function bz() --archer
    a6, a7, a9 = 30, 26, 6
    task.spawn(
        function()
            while al.KillAura and IsAlive() do
                local aW = bn()
                local bA = R:IsOnCooldown("Ultimate")
                if
                    aW and (J.Position - aW.Collider.Position).Magnitude < 80 and
                        e.Characters[H.Name].Properties.BackSwordCount.Value == 6
                 then
                    if aW and aW.HealthProperties.Health.Value < 1 / 6 or bA then
                        break
                    end
                    DeBounce = os.clock()
                    a6, a7, a9 = 3 / 64, 16, 66
                    task.wait(1)
                    k.Shared.Combat.Skillsets.Archer.Ultimate:FireServer(aW.Collider.Position)
                    task.wait(1)
                    a6, a7, a9 = 26, 26, 6
                end
                task.wait(30)
            end
        end
    )
end
local function bB() -- summoner
    task.spawn(
        function()
            local DeBounce = os.clock()
            while al.KillAura and IsAlive() do
                local aW = bn()
                if aW and aW:FindFirstChild "HealthProperties" and aW.HealthProperties.Health.Value < 1 / 6 then
                    break
                end
                if aW and e.Characters[H.Name].Properties.SummonCount.Value == 5 and os.clock() - DeBounce >= 8 then
                    DeBounce = os.clock()
                    X:Summon(aW.Collider.Position)
                end
                task.wait(8)
            end
        end
    )
    task.spawn(
        function() 
            local DeBounce = os.clock()
            while al.KillAura and IsAlive() do
                local aW = bi()
                if
                    aW and aW.Parent:FindFirstChild "HealthProperties" and
                        aW.Parent.HealthProperties.Health.Value < 1 / 6
                 then
                    break
                end
                if aW and (J.Position - aW.Position).Magnitude < 50 and os.clock() - DeBounce >= 10 then
                    DeBounce = os.clock()
                    k.Shared.Combat.Skillsets.Summoner.SoulHarvest:FireServer(aW.Position)
                end
                task.wait(10)
            end
        end
    )
    task.spawn(
        function()
            local DeBounce = os.clock()
            while al.KillAura and IsAlive() do
                local aW = bn()
                if aW and os.clock() - DeBounce >= 30 then
                    if aW and aW:FindFirstChild "HealthProperties" and aW.HealthProperties.Health.Value < 1 / 6 then
                        break
                    end
                    DeBounce = os.clock()
                    X:Ultimate(aW.Collider.Position)
                end
                task.wait(30)
            end
        end
    )
    task.spawn(
        function()
            local DeBounce = os.clock()
            while al.KillAura and IsAlive() do
                local aW = bp()
                if aW and e.Mobs:FindFirstChild("SummonerSummonWeak") then
                    if not IsAlive() then
                        break
                    end
                    local b9 = (e.Mobs.SummonerSummonWeak.Collider.Position - aW.Position).Magnitude
                    if b9 < 8 and J and os.clock() - DeBounce >= 2 then
                        DeBounce = os.clock()
                        X:ExplodeSummons()
                    end
                end
                task.wait(2)
            end
        end
    )
end
local function bC() --warlord
    task.spawn(
        function()
            local DeBounce = os.clock()
            while al.KillAura and IsAlive() do
                if not IsAlive() then
                    break
                end
                if os.clock() - DeBounce >= 1 / 3 then
                    DeBounce = os.clock()
                    k.Shared.Combat.Skillsets.Warlord.Block:FireServer()
                end
                task.wait(1 / 3)
            end
        end
    )
end
local bD
bD =
    e.ChildAdded:Connect(
    function(bE)
        if bE.Name == "RadialIndicator" then
            local bo = bn()
            if bo and not L:GetBossTag(bo) and e.RadialIndicator.Inner.Size.y > 20 then
                a8 = 1
            end
        end
    end
)
e.ChildRemoved:Connect(
    function(bE)
        if bE.Name == "RadialIndicator" then
            if bD then
                bD:Disconnect()
            end
            a8 = 360
        end
    end
)
Library = loadstring(game:HttpGet("https://bitbucket.org/cat__/turtle-ui/raw/main/Module%20v2"), "Turtle UI")()
local bF =
    Library:Window(
    {
        Title = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name,
        TextSize = 18,
        Font = Enum.Font.LuckiestGuy,
        TextColor = Color3.fromRGB(222, 248, 107),
        FrameColor = Color3.fromRGB(63, 72, 80),
        BackgroundColor = Color3.fromRGB(35, 35, 35)
    }
)
local bG =
    Library:Window(
    {
        Title = "Start: " .. os.date("%I:%M %p"),
        TextSize = 18,
        Font = Enum.Font.LuckiestGuy,
        TextColor = Color3.fromRGB(222, 248, 107),
        FrameColor = Color3.fromRGB(63, 72, 80),
        BackgroundColor = Color3.fromRGB(35, 35, 35)
    }
)
local bH =
    Library:Window(
    {
        Title = n.country .. " | " .. n.city,
        TextSize = 20,
        Font = Enum.Font.LuckiestGuy,
        TextColor = Color3.fromRGB(222, 248, 107),
        FrameColor = Color3.fromRGB(63, 72, 80),
        BackgroundColor = Color3.fromRGB(35, 35, 35)
    }
)
local bI =
    Library:Window(
    {
        Title = "Gold: " .. as(game.ReplicatedStorage.Profiles[H.Name].Currency.Gold.Value),
        TextSize = 18,
        Font = Enum.Font.LuckiestGuy,
        TextColor = Color3.fromRGB(222, 248, 107),
        FrameColor = Color3.fromRGB(63, 72, 80),
        BackgroundColor = Color3.fromRGB(35, 35, 35)
    }
)
local bJ =
    Library:Window(
    {
        Title = "Running",
        TextSize = 20,
        Font = Enum.Font.LuckiestGuy,
        TextColor = Color3.fromRGB(222, 248, 107),
        FrameColor = Color3.fromRGB(63, 72, 80),
        BackgroundColor = Color3.fromRGB(35, 35, 35)
    }
)
local bK =
    Library:Window(
    {
        Title = "Ping: " .. math.floor(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue()),
        TextSize = 18,
        Font = Enum.Font.LuckiestGuy,
        TextColor = Color3.fromRGB(222, 248, 107),
        FrameColor = Color3.fromRGB(63, 72, 80),
        BackgroundColor = Color3.fromRGB(35, 35, 35)
    }
)
local bL =
    Library:Window(
    {
        Title = "Misc",
        TextSize = 18,
        Font = Enum.Font.LuckiestGuy,
        TextColor = Color3.fromRGB(222, 248, 107),
        FrameColor = Color3.fromRGB(63, 72, 80),
        BackgroundColor = Color3.fromRGB(35, 35, 35)
    }
)
local KillAura = --Kill aura toggle 
    bF:Toggle(
    {
        Text = "KillAura",
        TextSize = 22,
        TextColor = Color3.fromRGB(255, 187, 109),
        Font = Enum.Font.FredokaOne,
        Disable = true,
        Enabled = al.KillAura,
        Callback = function(aJ)
            task.spawn(
                function()
                    al.KillAura = aJ
                    if al.KillAura then
                        ak("WZ_Toggles", al)
                        if ad == "Guardian" then 
                            guardian()
                        elseif ad == "Demon" then
                            by()
                        elseif ad == "Archer" then
                            bz()
                        elseif ad == "Summoner" then
                            bB()
                        elseif ad == "Warlord" then
                            bC()
                        elseif ad == "Assassin" then
                            shadowBlade()
                        elseif ad == "MageOfLight" then
                            MOL()
                        end
                        if ad ~= "MageOfLight" and ad ~= "Archer" then
                            useUlt()
                        end
                        for bM in pairs(ar) do
                            if bM == ad then
                                br()
                                bv()
                            end
                        end
                        for bM in pairs(aq) do
                            if bM == ad then
                                bt()
                                bv()
                            end
                        end
                        for bM in pairs(ae) do
                            if bM == ad then
                                bu() -- normal m1 attacks
                            end
                        end
                    end
                end
            )
        end
    }
)
local PetSkill =
    bF:Toggle(
    {
        Text = "PetSkill",
        TextSize = 22,
        TextColor = Color3.fromRGB(255, 187, 109),
        Font = Enum.Font.FredokaOne,
        Disable = true,
        Enabled = al.PetSkill,
        Callback = function(aJ)
            task.spawn(
                function()
                    al.PetSkill = aJ
                    ak("WZ_Toggles", al)
                    while al.PetSkill do
                        local petcooldown =  game:GetService("Players").LocalPlayer.PlayerGui.TouchInput.TouchInput.Buttons.PetSkill.SkillIcon.HotbarTile.CooldownCount.Text
                        --Make is use touchinterest button gui for cooldown and then press it on cooldown rather than every fifteen seconds also make it check distance
                        if petcooldown == "x0" or petcooldown == "0.0" then 
                            aw(Enum.KeyCode.One)
                            wait()
                            ax(Enum.KeyCode.One)
                        end
                        wait(1)
                    end
                end
            )
        end
    }
)
local HPHalf =
    bJ:Toggle(
    {
        Text = "HP-Half Fly",
        TextSize = 22,
        TextColor = Color3.fromRGB(255, 187, 109),
        Font = Enum.Font.FredokaOne,
        Enabled = al.HPHalf,
        Callback = function(aJ)
            al.HPHalf = aJ
            task.spawn(
                function()
                    ak("WZ_Toggles", al)
                    for aA, B in pairs(_) do
                        if game.PlaceId ~= B and al.HPHalf then
                            H.Character.HealthProperties.Health:GetPropertyChangedSignal("Value"):Connect(
                                function()
                                    pcall(
                                        function()
                                            if
                                                IsAlive() and
                                                    H.Character.HealthProperties.Health.Value /
                                                        H.Character.HealthProperties.MaxHealth.Value *
                                                        100 <
                                                        50
                                             then
                                                a6, a7, a4, a9 = 50, 40, 1, 3
                                                repeat
                                                    wait(1)
                                                until H.Character.HealthProperties.Health.Value /
                                                    H.Character.HealthProperties.MaxHealth.Value *
                                                    100 >
                                                    90
                                                if aC() then
                                                    a6, a7, a9 = 36, 30, 6
                                                elseif ay() then
                                                    a6, a7, a9 = .1, 14, 5
                                                end
                                            end
                                            if al.HPHalf == false then
                                                H.Character.HealthProperties.Health:GetPropertyChangedSignal("Value"):Disconnect(

                                                )
                                            end
                                        end
                                    )
                                end
                            )
                        end
                    end
                end
            )
        end
    }
)
local AutoFarm =
    bF:Toggle(
    {
        Text = "AutoFarm",
        TextSize = 22,
        TextColor = Color3.fromRGB(255, 187, 109),
        Font = Enum.Font.FredokaOne,
        Disable = true,
        Enabled = al.AutoFarm,
        Callback = function(aJ)
            al.AutoFarm = aJ
            task.spawn(
                function()
                    ak("WZ_Toggles", al)
                    aK()
                    aP()
                    aI(false)
                    aN()
                    if aC() then
                        a6, a7, a9 = 36, 30, 6
                    elseif ay() then
                        a6, a7, a9 = .1, 14, 5
                    end
                    if not al.AutoFarm then
                        aI(true)
                        aM()
                    end
                end
            )
            task.spawn(
                function()
                    local bN
                    local bO = TweenInfo.new(a4, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out)
                    while al.AutoFarm do
                        local aW = bi()
                        if
                            aW and aW.Parent:FindFirstChild("HealthProperties") and
                                aW.Parent.HealthProperties.Health.Value < 1 / 6
                         then
                            break
                        end
                        if aW then
                            local bP = a8 * (tick() % a9) / a9
                            bN =
                                i:Create(
                                J, -- HRP
                                bO,
                                {
                                    CFrame = CFrame.new(aW.Position) * CFrame.Angles(0, math.rad(bP), 0) *
                                        CFrame.new(0, a6, a7)
                                }
                            )
                            bN:Play()
                        end
                        f.Heartbeat:Wait()
                    end
                    if bN and bN.PlaybackState == Enum.PlaybackState.Playing then
                        bN:Cancel()
                    end
                    if not al.AutoFarm then
                        aM()
                    end
                end
            )
        end
    }
)
local bQ =
    bF:Toggle(
    {
        Text = "GetDrops",
        TextSize = 22,
        TextColor = Color3.fromRGB(255, 187, 109),
        Font = Enum.Font.FredokaOne,
        Enabled = al.GetDrop,
        Callback = function(aJ)
            al.GetDrop = aJ
            task.spawn(
                function()
                    ak("WZ_Toggles", al)
                    local bR = getupvalue(N.Start, 4)
                    while al.GetDrop do
                        if not al.GetDrop then
                            break
                        end
                        for A, B in pairs(bR) do
                            B.model:Destroy()
                            B.followPart:Destroy()
                            k.Shared.Drops.CoinEvent:FireServer(B.id)
                            table.remove(bR, A)
                        end
                        task.wait(1 / 3)
                    end
                end
            )
        end
    }
)
local Levitating =
    bF:Toggle(
    {
        Text = "Levitating",
        TextSize = 22,
        TextColor = Color3.fromRGB(255, 187, 109),
        Font = Enum.Font.FredokaOne,
        Disable = true,
        Enabled = Levitating,
        Callback = function(aJ)
            Levitating = aJ
            local function bS(bT, bU)
                for bV, bW in pairs(bT) do
                    bU(bW, bV)
                end
            end
            local function bX(bY)
                local bZ = Instance.new(bY)
                return function(b_)
                    bS(
                        b_,
                        function(bW, c0)
                            bZ[c0] = bW
                        end
                    )
                    return bZ
                end
            end
            do
                local c1 = nil
                while Levitating do
                    if not c1 then
                        c1 =
                            bX "Part" {
                            Parent = workspace.CurrentCamera,
                            Name = "Part",
                            Transparency = 0.95,
                            Size = Vector3.new(3, .1, 3),
                            Anchored = true
                        }
                    end
                    if I then
                        c1.CFrame = J.CFrame - Vector3.new(0, 3, 0)
                    end
                    task.wait()
                end
            end
        end
    }
)
local c2 =
    bF:Toggle(
    {
        Text = "InfiniteJump",
        TextSize = 22,
        TextColor = Color3.fromRGB(255, 187, 109),
        Font = Enum.Font.FredokaOne,
        Enabled = al.InfJump,
        Callback = function(aJ)
            al.InfJump = aJ
            task.spawn(
                function()
                    ak("WZ_Toggles", al)
                    local function InfJump(bZ, c3)
                        if bZ ~= nil then
                            c3(bZ)
                        end
                    end
                    j.InputBegan:connect(
                        function(c4)
                            if
                                al.InfJump and c4.UserInputType == Enum.UserInputType.Keyboard and
                                    c4.KeyCode == Enum.KeyCode.Space
                             then
                                InfJump(
                                    K,
                                    function(H)
                                        if
                                            H:GetState() == Enum.HumanoidStateType.Jumping or
                                                H:GetState() == Enum.HumanoidStateType.Freefall
                                         then
                                            InfJump(
                                                J,
                                                function(bZ)
                                                    bZ.Velocity = Vector3.new(0, 80, 0)
                                                end
                                            )
                                        end
                                    end
                                )
                            end
                        end
                    )
                end
            )
        end
    }
)
local NoClip =
    bG:Toggle(
    {
        Text = "No-Clip",
        TextSize = 22,
        TextColor = Color3.fromRGB(255, 187, 109),
        Font = Enum.Font.FredokaOne,
        Enabled = al.NoClip,
        Callback = function(aJ)
            al.NoClip = aJ
            task.spawn(
                function()
                    ak("WZ_Toggles", al)
                    aI(true)
                    if al.NoClip then
                        aI(false)
                    end
                end
            )
        end
    }
)
local HeadLamp =
    bG:Toggle(
    {
        Text = "HeadLamp",
        TextSize = 22,
        TextColor = Color3.fromRGB(255, 187, 109),
        Font = Enum.Font.FredokaOne,
        Enabled = HeadLamp,
        Callback = function(aJ)
            HeadLamp = aJ
            if HeadLamp then
                local c5
                local c6 = Instance.new("PointLight", I.Head)
                c6.Brightness = .8
                c6.Range = 180
                c5.Changed:connect(
                    function()
                        c5.Brightness = 1
                        c5.ClockTime = 12
                        c5.FogEnd = 1000000
                        c5.GlobalShadows = true
                        c5.Ambient = Color3.new(1, 1, 1)
                        c5.ColorShift_Top = Color3.new(1, 1, 1)
                        c5.ColorShift_Bottom = Color3.new(1, 1, 1)
                    end
                )
            else
                I.Head.PointLight:Destroy()
            end
        end
    }
)
local ReduceLag =
    bG:Toggle(
    {
        Text = "ReduceLag",
        TextSize = 22,
        TextColor = Color3.fromRGB(255, 187, 109),
        Font = Enum.Font.FredokaOne,
        Enabled = al.ReduceLag,
        Callback = function(aJ)
            al.ReduceLag = aJ
            task.spawn(
                function()
                    ak("WZ_Toggles", al)
                    for aA, B in pairs(e:GetDescendants()) do
                        if B:IsA "BasePart" and not B.Parent:FindFirstChild "Humanoid" then
                            B.Material = Enum.Material.SmoothPlastic
                            if B:IsA "Texture" then
                                task.defer(B.Destroy, B)
                            end
                        end
                    end
                    e.DescendantAdded:Connect(
                        function(c7)
                            if c7:IsA "BasePart" and not c7.Parent:FindFirstChild "Humanoid" then
                                c7.Material = Enum.Material.SmoothPlastic
                                if c7:IsA "Texture" then
                                    task.defer(c7.Destroy, c7)
                                end
                            end
                        end
                    )
                    e.ChildAdded:Connect(
                        function(c8)
                            if c8.Name == "DamageNumber" then
                                task.defer(c8.Destroy, c8)
                            end
                        end
                    )
                end
            )
        end
    }
)
local c9 =
    bG:Toggle(
    {
        Text = "DeleteEggs",
        TextSize = 22,
        TextColor = Color3.fromRGB(255, 187, 109),
        Font = Enum.Font.FredokaOne,
        Enabled = al.DelEgg,
        Callback = function(aJ)
            al.DelEgg = aJ
            task.spawn(
                function()
                    ak("WZ_Toggles", al)
                    local ca = k.Profiles[H.Name].Inventory.Items
                    ca.DescendantAdded:Connect(
                        function()
                            for aA, B in pairs(ca:GetChildren()) do
                                if string.find(B.Name, "Egg") then
                                    k.Shared.Inventory.DeleteItem:FireServer(B)
                                end
                            end
                        end
                    )
                    H.CharacterAdded:Connect(
                        function()
                            for aA, B in pairs(ca:GetChildren()) do
                                if table.find(a1, B.Name) then
                                    task.delay(
                                        2,
                                        function()
                                            k.Shared.Inventory.DeleteItem:FireServer(B)
                                        end
                                    )
                                end
                            end
                        end
                    )
                end
            )
        end
    }
)
local cb =
    bG:Toggle(
    {
        Text = "NoCutScene",
        TextSize = 22,
        TextColor = Color3.fromRGB(255, 187, 109),
        Font = Enum.Font.FredokaOne,
        Enabled = al.NoCutScene,
        Callback = function(aJ)
            al.NoCutScene = aJ
            task.spawn(
                function()
                    ak("WZ_Toggles", al)
                    local cc = H.PlayerGui.CutsceneUI
                    cc:GetPropertyChangedSignal("Enabled"):Connect(
                        function()
                            if cc.Enabled then
                                P:SkipCutscene()
                            end
                        end
                    )
                end
            )
        end
    }
)
local cd =
    bG:Toggle(
    {
        Text = "AutoOffhandPerk",
        TextSize = 22,
        TextColor = Color3.fromRGB(255, 187, 109),
        Font = Enum.Font.FredokaOne,
        Enabled = al.AutoSwitch,
        Callback = function(aJ)
            al.AutoSwitch = aJ
            task.spawn(
                function()
                    ak("WZ_Toggles", al)
                    local bD
                    bD =
                        e.Mobs.ChildAdded:connect(
                        function(bo)
                            if al.AutoSwitch and bo:isA("Model") then
                                aV(bo)
                            end
                        end
                    )
                    if not al.AutoSwitch then
                        bD:Disconnect()
                    end
                end
            )
        end
    }
)
bH:Button(
    {
        Text = "Bank",
        TextSize = 22,
        Font = Enum.Font.FredokaOne,
        TextColor = Color3.fromRGB(255, 187, 109),
        Callback = function()
            if e:FindFirstChild("MenuRings") and e.MenuRings:FindFirstChild("Bank") then
                e.MenuRings.Bank.Ring.CFrame = I:WaitForChild("LeftFoot").CFrame * CFrame.new(0, 0, -12)
                e.MenuRings.Bank.Floor.CFrame = I:WaitForChild("LeftFoot").CFrame * CFrame.new(0, 0, -12)
            end
        end
    }
)
bH:Button(
    {
        Text = "Upgrade",
        TextSize = 22,
        Font = Enum.Font.FredokaOne,
        TextColor = Color3.fromRGB(255, 187, 109),
        Callback = function()
            require(k.Client.Gui.GuiScripts.ItemUpgrade):Toggle()
        end
    }
)
bH:Button(
    {
        Text = "Zero Altar",
        TextSize = 22,
        Font = Enum.Font.FredokaOne,
        TextColor = Color3.fromRGB(255, 187, 109),
        Callback = function()
            require(k.Client.Gui.GuiScripts.Fusion):Open()
        end
    }
)
bH:Button(
    {
        Text = "Way Stones",
        TextSize = 22,
        Font = Enum.Font.FredokaOne,
        TextColor = Color3.fromRGB(255, 187, 109),
        Callback = function()
            require(k.Client.Gui.GuiScripts.Waystones):Open()
        end
    }
)
bH:Button(
    {
        Text = "World Menu",
        TextSize = 22,
        Font = Enum.Font.FredokaOne,
        TextColor = Color3.fromRGB(255, 187, 109),
        Callback = function()
            require(k.Client.Gui.GuiScripts.WorldTeleport):Toggle()
        end
    }
)
bH:Button(
    {
        Text = "Dungeon Menu",
        TextSize = 22,
        Font = Enum.Font.FredokaOne,
        TextColor = Color3.fromRGB(255, 187, 109),
        Callback = function()
            require(k.Client.Gui.GuiScripts.MissionSelect):Toggle()
        end
    }
)
local ce =
    bI:Toggle(
    {
        Text = "SellTier[1-4]",
        TextSize = 22,
        TextColor = Color3.fromRGB(255, 187, 109),
        Font = Enum.Font.FredokaOne,
        Enabled = al.SellNonLegend,
        Callback = function(aJ)
            al.SellNonLegend = aJ
            task.spawn(
                function()
                    ak("WZ_Toggles", al)
                end
            )
        end
    }
)
local cf =
    bI:Toggle(
    {
        Text = "SellLegendary",
        TextSize = 22,
        TextColor = Color3.fromRGB(255, 187, 109),
        Font = Enum.Font.FredokaOne,
        Enabled = al.SellLegend,
        Callback = function(aJ)
            al.SellLegend = aJ
            task.spawn(
                function()
                    ak("WZ_Toggles", al)
                end
            )
        end
    }
)
local MoLPass =
    bI:Toggle(
    {
        Text = "MoLPassive",
        TextSize = 22,
        TextColor = Color3.fromRGB(255, 187, 109),
        Font = Enum.Font.FredokaOne,
        Enabled = al.MoLPass,
        Callback = function(aJ)
            al.MoLPass = aJ
            task.spawn(
                function()
                    while al.MoLPass do
                        local character = e.Characters[H.Name]
                        local cg = require(k.Shared.Party):GetPartyByUsername(H.Name)
                        if
                            character and
                                character.HealthProperties.Health.Value / character.HealthProperties.MaxHealth.Value *
                                    100 <
                                    99
                         then
                            for aA, ch in pairs(d:GetPlayers()) do
                                if cg and cg.Members:FindFirstChild(ch.Name) then
                                    k.Shared.Combat.Skillsets.MageOfLight.HealCircle:FireServer(ch)
                                end
                            end
                        end
                        task.wait(14)
                    end
                end
            )
            task.spawn(
                function()
                    ak("WZ_Toggles", al)
                    while al.MoLPass do
                        local character = e.Characters[H.Name]
                        local cg = require(k.Shared.Party):GetPartyByUsername(H.Name)
                        if character and character.HealthProperties.BarrierHealth.Value <= 0 then
                            for aA, ch in pairs(d:GetPlayers()) do
                                if cg and cg.Members:FindFirstChild(ch.Name) then
                                    k.Shared.Combat.Skillsets.MageOfLight.Barrier:FireServer(ch)
                                end
                            end
                        end
                        task.wait(15)
                    end
                end
            )
        end
    }
)
local AiPing =
    bI:Toggle(
    {
        Text = "AI.Cooldown",
        TextSize = 22,
        TextColor = Color3.fromRGB(255, 187, 109),
        Font = Enum.Font.FredokaOne,
        Enabled = al.AiPing,
        Callback = function(aJ)
            al.AiPing = aJ
            task.spawn(
                function()
                    ak("WZ_Toggles", al)
                end
            )
        end
    }
)
e.ChildAdded:Connect(
    function(ci)
        if ci.Name == "BarrierPart" then
            task.defer(ci.Destroy, ci)
        end
    end
)
local RepeatRaid =
    bI:Toggle(
    {
        Text = "RepeatRaid",
        TextSize = 22,
        TextColor = Color3.fromRGB(255, 187, 109),
        Font = Enum.Font.FredokaOne,
        Enabled = al.RepeatRaid,
        Callback = function(aJ)
            al.RepeatRaid = aJ
            task.spawn(
                function()
                    ak("WZ_Toggles", al)
                    for aA, B in pairs(_) do
                        if game.PlaceId ~= B and al.RepeatRaid then
                            local cj = H.PlayerGui.MissionRewards.MissionRewards
                            if cj.Playerlist.Visible then
                                S:SetLeaveChoice(H, true)
                                S:NotifyReadyToLeave(H)
                            end
                            cj.RaidClear:GetPropertyChangedSignal("Text"):Connect(
                                function()
                                    if cj.RaidClear.Text == "T O W E R    F A I L U R E" then
                                        S:SetLeaveChoice(H, true)
                                        S:NotifyReadyToLeave(H)
                                    end
                                end
                            )
                            cj.RaidClear:GetPropertyChangedSignal("Text"):Connect(
                                function()
                                    if cj.RaidClear.Text == "D U N G E O N    F A I L U R E" then
                                        S:SetLeaveChoice(H, true)
                                        S:NotifyReadyToLeave(H)
                                    end
                                end
                            )
                            H.PlayerGui.TowerFinish.TowerFinish.Description.Overlay:GetPropertyChangedSignal("Text"):Connect(
                                function()
                                    if
                                        H.PlayerGui.TowerFinish.TowerFinish.Description.Overlay.Text ==
                                            "Collect your rewards! (10)"
                                     then
                                        S:SetLeaveChoice(H, true)
                                        S:NotifyReadyToLeave(H)
                                    end
                                end
                            )
                            cj.Playerlist.Header:GetPropertyChangedSignal("Visible"):Connect(
                                function()
                                    wait(1)
                                    aT(cj.Playerlist.WithParty.TextLabel)
                                end
                            )
                        end
                    end
                end
            )
        end
    }
)
local ck =
    bI:Toggle(
    {
        Text = "ReloadOnHop",
        TextSize = 22,
        TextColor = Color3.fromRGB(255, 187, 109),
        Font = Enum.Font.FredokaOne,
        Enabled = al.ReLoadOnHop,
        Callback = function(aJ)
            al.ReLoadOnHop = aJ
            task.spawn(
                function()
                    ak("WZ_Toggles", al)
                    d.PlayerRemoving:connect(
                        function(cl)
                            if cl == H and al.ReLoadOnHop then
                                an(ao)
                            end
                        end
                    )
                end
            )
        end
    }
)
local KlausDown =
    bJ:Toggle(
    {
        Text = "Klaus↓Down",
        TextSize = 22,
        Font = Enum.Font.FredokaOne,
        TextColor = Color3.fromRGB(255, 187, 109),
        Enabled = al.KlausDown,
        Callback = function(aJ)
            al.KlausDown = aJ
            task.spawn(
                function()
                    ak("WZ_Toggles", al)
                    for A = 1, 2 do
                        if al.KlausDown and e.MissionObjects:FindFirstChild("MissionStart") then
                            local cm = e.MissionObjects.MissionStart:GetChildren()
                            cm[3].CFrame = J.CFrame
                        end
                        wait()
                    end
                    J.CFrame = CFrame.new(46, 474, 800)
                    aK()
                    wait(12.5)
                    J.CFrame = CFrame.new(46, 474, 980)
                    wait(6)
                    b2 = 10
                    b4(CFrame.new(46, 2000, 2000))
                end
            )
        end
    }
)
bJ:Button(
    {
        Text = "Unstuck-SOS",
        TextSize = 22,
        Font = Enum.Font.FredokaOne,
        TextColor = Color3.fromRGB(255, 187, 109),
        Callback = function()
            aM()
        end
    }
)
bJ:Slider(
    "WalkSpeed",
    16,
    120,
    K.WalkSpeed,
    function(bW)
        K.WalkSpeed = bW
    end
)
bK:DestroyUI()
bK:Button(
    {
        Text = "FreezeMob",
        TextSize = 22,
        TextColor = Color3.fromRGB(255, 187, 109),
        Font = Enum.Font.FredokaOne,
        Enabled = FreezeMob,
        Callback = function(cn)
            if cn then
                e.Mobs.ChildAdded:connect(
                    function(co)
                        if not string.find(co.Name, "BOSS") then
                            local cp = Instance.new("Part")
                            cp.Name = "Dummy"
                            cp.Anchored = true
                            cp.CanCollide = false
                            cp.Size = Vector3.new(1, 1, 1)
                            cp.Transparency = 1
                            cp.Parent = game:GetService("Workspace")
                            cp.Position = co.Collider.Position
                            local cq = Instance.new("Weld")
                            cq.Parent = co.Collider
                            cq.Part0 = co.Collider
                            cq.Part1 = cp
                            local cr = Instance.new("BodyForce")
                            cr.Parent = cp
                            pcall(
                                function()
                                    cr:ApplyForce(Vector3.new(0, -100, 0))
                                end
                            )
                        end
                    end
                )
            end
        end
    }
)
bK:HideUI()
local RealTime =
    bK:Toggle(
    {
        Text = "RealTimePing",
        TextSize = 22,
        TextColor = Color3.fromRGB(255, 187, 109),
        Font = Enum.Font.FredokaOne,
        Enabled = RealTime,
        Callback = function(aJ)
            RealTime = aJ
            task.spawn(
                function()
                    while RealTime do
                        bK.Text =
                            "Ping: " ..
                            math.floor(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue())
                        wait(2)
                    end
                end
            )
        end
    }
)
local OWFarm =
    bK:Toggle(
    {
        Text = "PubMapFarm",
        TextSize = 22,
        TextColor = Color3.fromRGB(255, 187, 109),
        Font = Enum.Font.FredokaOne,
        Enabled = OWFarm,
        Callback = function(aJ)
            OWFarm = aJ
            task.spawn(
                function()
                    b2 = 60
                    while OWFarm do
                        local bo = bi()
                        b4(bo)
                        task.wait(3 / 2)
                    end
                end
            )
        end
    }
)
bK:Box(
    {
        Text = "Webhook URL",
        Callback = function(bW)
            am.Webhook = bW
            ClearText = true
            task.spawn(
                function()
                    ak("WZwebhook", am)
                end
            )
        end
    }
)
bL:MinimizeWindows()
k.Shared.Missions.MissionFinished.OnClientEvent:Connect(
    function()
        bG.Text = "EndTime: " .. os.date("%I:%M %p")
    end
)
--[[
for aA, B in pairs(Y) do
    if game.PlaceId == B thenClick(lootReceived.Info.Skip.Sell)
        local cj = H.PlayerGui.MissionRewards.MissionRewards
        local cs = k.Shared.VIP.IsExtraDrop:InvokeServer()
        cj.Countdown:GetPropertyChangedSignal("Text"):Connect( -- opens first chest
            function()
                if cj.Countdown.Text == "Pick up your gold! (1)" then
                    repeat
                        wait()
                    until cj.Chests.Visible and cj.Chests.Box1.Visible and cj.Chests.Box2.Visible and
                        cj.Chests.Box1.ChestImage.Select.Visible
                    repeat
                        aT(cj.Chests.Box1.ChestImage.Select)
                        wait()
                    until cj.OpenChest.Countdown.text == "0"
                end
            end
        )
        cj.OpenChest.Countdown:GetPropertyChangedSignal("Text"):Connect( -- clicks the next button
            function()
                if cj.OpenChest.Countdown.Text == "0" then
                    repeat
                        wait()
                    until cj.OpenChest:WaitForChild("Next") and cj.OpenChest:FindFirstChild("Next").Visible
                    aT(cj.OpenChest.Next.TextLabel)
                end
            end
        )
        cj.Chests.Box1.ChestImage.ChildAdded:Connect( -- opens next chest
            function(ct)
                if ct.Name == "ViewportFrame" and not cs then
                    aT(cj.OpenChest.Next.TextLabel)
                else
                    aT(cj.Chests.Box2.ChestImage.VIP.TextLabel)
                    repeat
                        wait()
                    until cj.OpenChest.Chest:FindFirstChild("RaidChest")
                    wait(1)
                    repeat
                        aT(cj.Chests.Box2.ChestImage.Select)
                        wait()
                    until cj.OpenChest.Countdown.text == "0"
                end
            end
        )
        cj.Chests.Box2.ChestImage.ChildAdded:Connect( -- clicks next again
            function(ct)
                if ct.Name == "ViewportFrame" and cs then
                    wait()
                    aT(cj.OpenChest.Next.TextLabel)
                end
            end
        )
    end
end
--]]
local player = game:GetService("Players").LocalPlayer
local missionRewards = player.PlayerGui.MissionRewards.MissionRewards
local lootReceived = player.PlayerGui.LootReceived.LootReceived
local vim = game:GetService('VirtualInputManager')
local hasExtraDrop = game:GetService("ReplicatedStorage").Shared.VIP.IsExtraDrop:InvokeServer()

function sell()
    aT(lootReceived.Info.Skip.Sell)
    wait()
    aT(lootReceived.Info.Skip.Sell)
end

function keep()
    aT(lootReceived.Info.Skip.Close)
end

function containsPerk(perk)
    for _, v in perks do
        if string.find(perk, v) then
            return true
        end
    end
    return false
end

missionRewards.Countdown:GetPropertyChangedSignal("Text"):Connect( -- opens first chest
    function()
        if missionRewards.Countdown.Text == "Pick up your gold! (1)" then
            repeat wait() until missionRewards.Chests.Visible and  missionRewards.Chests.Box1.Visible and missionRewards.Chests.Box2.Visible
            repeat aT(missionRewards.Chests.Box1.ChestImage.Select)
            wait() until missionRewards.OpenChest.Countdown.text == "0"
        end
    end
)
game:GetService("Workspace").Camera:GetPropertyChangedSignal("CameraType"):Connect( -- sell or keep
    function()
        if game.Workspace.Camera.CameraType == Enum.CameraType.Scriptable then
            repeat
            wait(0.5)
            local perk1 = player.PlayerGui.LootReceived.LootReceived.Info.Perk1.Text:gsub("[^%w%s_]+", "")
            local perk2 = player.PlayerGui.LootReceived.LootReceived.Info.Perk2.Text:gsub("[^%w%s_]+", "")
            local perk3 = player.PlayerGui.LootReceived.LootReceived.Info.Perk3.Text:gsub("[^%w%s_]+", "")
        
            if player.PlayerGui.LootReceived.LootReceived.ItemInfo.Tier.Text == "Tier 5" then
                if containsPerk(perk1:lower()) or containsPerk(perk2:lower()) or containsPerk(perk3:lower()) then
                    keep()
                else
                    sell()
                end
            else
                sell()
            end
            until game.Workspace.Camera.CameraType == Enum.CameraType.Custom
        end
    end
)
-- opens second chest
missionRewards.Chests.Box1.ChestImage.Chest.RaidChest.Glow.Glow:GetPropertyChangedSignal("Color"):Connect(
    function() 
        if hasExtraDrop then
            repeat 
            aT(missionRewards.Chests.Box2.ChestImage.Select)
            wait() 
            until missionRewards.OpenChest.Countdown.text == "0.1"
        end
    end
)
-- click next button
missionRewards.Chests.Box2.ChestImage.Chest.RaidChest.Glow.Glow:GetPropertyChangedSignal("Color"):Connect(
    function()
        repeat
        aT(missionRewards.Chests.Next)
        wait()
        until missionRewards.Playerlist.Visible == true
    end
)
local place = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name

function getWave()
    local wave = game:GetService("ReplicatedStorage"):WaitForChild("ReplicateTowerFloor").Value
    return wave
end

function getPos()
    local position = J.CFrame
    return position
end

function getObjective()
    local obj = game:GetService("ReplicatedStorage"):WaitForChild("ObjectiveMessage", math.huge).Value
    return obj
end

function rejoin()
	local args = 
	{
		[1] = 38
	}
	game:GetService("ReplicatedStorage"):WaitForChild("Shared"):WaitForChild("Teleport"):WaitForChild("StartRaid"):FireServer(unpack(args))
end

local newMaps = 
{
    "Infinite Tower"
}
if place == newMaps[1] then
    game:GetService("ReplicatedStorage"):WaitForChild("ObjectiveMessage"):GetPropertyChangedSignal("Value"):Connect(
	    function()
            if (getObjective()) == "Advance to the next floor! (25)" then
                if e:FindFirstChild("RaidChestSilver") then
                    wait(2)
                end
                game.Workspace.LobbyTeleport.Interaction.CFrame = (getPos())
            end
            if (getObjective()) == "ENTER THE ARENA TO START!" then
                game.Workspace.Boss_Gate.Interactions.Bounds.CFrame = (getPos())
            end
            if (getWave() > 150) then
                wait(1)
                rejoin()
            end
        end
    )
    e.ChildAdded:Connect(
        function(cH)
            if hasExtraDrop == true then
                if cH.Name == "RaidChestGold" then
                    e.RaidChestGold.ChestBase.CFrame = (getPos())
                    wait(3.8)
                    cH:Destroy()
                end
            end
        end
    )
    e.ChildAdded:Connect(
        function(cI)
            if cI.Name == "RaidChestSilver" then
                e.RaidChestSilver.ChestBase.CFrame = (getPos())
                wait(3.8)
                cI:Destroy()
            end
        end
    )
    game:GetService("Workspace").Mobs.ChildAdded:Connect(
	function()
		--Bosses to avoid when autofarming
		if game.Workspace.Mobs:FindFirstChild("BOSSAnubis") then
			rejoin()
		end
		if game.Workspace.Mobs:FindFirstChild("VaneAetherDragon") then
			rejoin()
		end
		if game.Workspace.Mobs:FindFirstChild("BOSSHogRider") then
			rejoin()
		end
		if game.Workspace.Mobs:FindFirstChild("BOSSWinterfallIceDragon") then
			rejoin()
		end
		if game.Workspace.Mobs:FindFirstChild("BOSSIgnisFireDragon") then
			rejoin()
		end
	end
)
end
if game.PlaceId == Y[2.1] then
    e.MissionObjects.ChildRemoved:Connect(
        function(cu)
            if cu.Name == "MissionStart" then
                wait(1)
                e.MissionObjects.Room1Trigger.CFrame = J.CFrame
            end
        end
    )
    e.MissionObjects.Room1Trigger.ChildRemoved:Connect(
        function()
            wait(2)
            e.MissionObjects.Room2Trigger.CFrame = J.CFrame
        end
    )
    e.MissionObjects.Room2Trigger.ChildRemoved:Connect(
        function()
            wait(2)
            e.MissionObjects.Room3Trigger.CFrame = J.CFrame
        end
    )
    e.MissionObjects.Room3Trigger.ChildRemoved:Connect(
        function()
            wait(2)
            e.MissionObjects.Room4Trigger.CFrame = J.CFrame
        end
    )
    e.MissionObjects.Room4Trigger.ChildRemoved:Connect(
        function()
            wait(6)
            J.CFrame = e.MissionObjects.WallsTrigger.CFrame
            wait(3)
            J.CFrame = e.MissionObjects.WallsFinalTrigger.CFrame
        end
    )
    H.PlayerGui.MissionObjective.MissionObjective.Label:GetPropertyChangedSignal("Text"):Connect(
        function()
            if H.PlayerGui.MissionObjective.MissionObjective.Label.Text == "Take the royal crystal! (0 / 1)" then
                J.CFrame = CFrame.new(1192.15894, -226.738449, 110.141144)
            end
        end
    )
end
if game.PlaceId == Y[1.4] then
    e.ChildAdded:Connect(
        function(cv)
            if cv.Name == "Cage1Marker" then
                wait(2)
                e.Cage1Marker.Collider.CFrame = J.CFrame
            end
        end
    )
    e.ChildAdded:Connect(
        function(cv)
            if cv.Name == "Cage2Marker" then
                wait(2.2)
                e.Cage2Marker.Collider.CFrame = J.CFrame
            end
        end
    )
end
if game.PlaceId == Y[3.1] then
    e.MissionObjects.ChildRemoved:Connect(
        function(cw)
            if cw.Name == "ProgressionBlocker1" then
                e.MissionObjects.CaveTrigger.CFrame = J.CFrame
            end
        end
    )
end
if game.PlaceId == Y[3] then
    e.ChildAdded:Connect(
        function(cx)
            if cx.Name == "IceWall" then
                wait(5)
                AutoFarm.State = false
                J.CFrame = e.IceWall:FindFirstChild("Ring").CFrame
            end
        end
    )
    e.ChildRemoved:Connect(
        function(cx)
            if cx.Name == "IceWall" then
                aK()
                AutoFarm.State = true
            end
        end
    )
end
local function cy()
    pcall(
        function()
            for aA, B in pairs(e.MissionObjects.TowerLegs:GetDescendants()) do
                if B.Name == "hitbox" and not B.CanCollide then
                    B.Parent:Destroy()
                end
            end
        end
    )
end
if game.PlaceId == Y[4.1] then
    e.MissionObjects.TowerLegs.DescendantRemoving:Connect(cy)
end
if game.PlaceId == Y[6.1] then
    e.MissionObjects.ChildRemoved:Connect(
        function(cu)
            if cu.Name == "MissionStart" then
                wait(1)
                e.MissionObjects.Area1Trigger.CFrame = J.CFrame
            end
        end
    )
    e.MissionObjects.Area2Trigger.ChildAdded:Connect(
        function(cz)
            if cz:IsA("TouchTransmitter") then
                wait(1)
                e.MissionObjects.Area2Trigger.CFrame = J.CFrame
            end
        end
    )
end
if game.PlaceId == Y[7.1] then
    e.MissionObjects.ChildRemoved:Connect(
        function(cu)
            if cu.Name == "MissionStart" then
                wait(1)
                e.MissionObjects.FakeBoss.CFrame = J.CFrame
            end
        end
    )
end
if game.PlaceId == Z[1] then
    H.PlayerGui.MissionObjective.MissionObjective.Label:GetPropertyChangedSignal("Text"):Connect(
        function()
            if H.PlayerGui.MissionObjective.MissionObjective.Label.Text == "Get behind the active shield! (2)" then
                AutoFarm.State = false
                J.CFrame = e.MissionObjects.IgnisShield.Ring.CFrame
                wait(3)
                aK()
                AutoFarm.State = true
            end
        end
    )
end
for aA, B in pairs(Z) do
    if game.PlaceId == B then
        task.spawn(
            function()
                while IsAlive() do
                    local cA = e.MissionObjects:WaitForChild("WaveStarter", math.huge)
                    if #cA:GetChildren() > 0 then
                        cA.CFrame = J.CFrame
                    end
                    wait()
                end
            end
        )
        e.MissionObjects.ChildAdded:Connect(
            function(cB)
                if cB.Name == "MinibossExitModel" then
                    wait(2)
                    e.MissionObjects.MinibossExitModel:MoveTo(J.Position)
                end
            end
        )
        e.MissionObjects.ChildAdded:Connect(
            function(cC)
                if cC.Name == "MinibossExit" then
                    wait(3)
                    AutoFarm.State = false
                    e.MissionObjects.MinibossExit.CFrame = J.CFrame
                    wait()
                    aK()
                    AutoFarm.State = true
                end
            end
        )
    end
end
for aA, B in ipairs(game:GetService("ReplicatedStorage").Shared.Effects.EffectScripts:GetChildren()) do
    if
        hookfunction and B:IsA("ModuleScript") and
            (string.find(B.Name, "Klaus") or string.find(B.Name, "Hades") or string.find(B.Name, "Prism") or
                string.find(B.Name, "Taurha") or
                string.find(B.Name, "Kraken") or
                string.find(B.Name, "Anubis") or
                string.find(B.Name, "Cerberus") or
                string.find(B.Name, "FallenKing"))
     then
        local cD = require(B)
        hookfunction(
            cD,
            function()
                return nil
            end
        )
    end
end
for A, B in pairs(Y) do
    if type(A) ~= "string" and game.PlaceId == B then
        if e:FindFirstChild("MissionObjects") then
            local cE = e.MissionObjects
            cE.DescendantAdded:Connect(
                function(cz)
                    if
                        cz:IsA "TouchTransmitter" and not string.match(cz.Parent.Parent.Name, "Damage") and
                            not string.match(cz.Parent.Name, "Killpart") and
                            not string.match(cz.Parent.Name, "0") and
                            not string.match(cz.Parent.Parent.Name, "Darts") and
                            not string.match(cz.Parent.Parent.Name, "Spikes") and
                            cz.Parent ~= "MinibossExit" and
                            cz.Parent.Parent ~= "MinibossExitModel"
                     then
                        wait(2)
                        pcall(
                            function()
                                cz.Parent.CFrame = J.CFrame
                            end
                        )
                    end
                end
            )
            cE.DescendantAdded:Connect(
                function(cF)
                    if cF:IsA "TouchTransmitter" and string.match(cF.Parent.Name, "Trigger") then
                        wait(3 / 2)
                        pcall(
                            function()
                                cF.Parent.CFrame = J.CFrame
                            end
                        )
                    end
                end
            )
        end
    end
end
for aA, cG in pairs(Z) do
    if game.PlaceId == cG then
        e.ChildAdded:Connect(
            function(cH)
                if cH.Name == "RaidChestGold" then
                    e.RaidChestGold.ChestBase.CFrame = J.CFrame
                    wait(3.8)
                    cH:Destroy()
                end
            end
        )
        e.ChildAdded:Connect(
            function(cI)
                if cI.Name == "RaidChestSilver" then
                    e.RaidChestSilver.ChestBase.CFrame = J.CFrame
                    wait(3.8)
                    cI:Destroy()
                end
            end
        )
        e.ChildAdded:Connect(
            function(cJ)
                if cJ.Name == "AtlanticChest" then
                    for aA, B in pairs(e:GetChildren()) do
                        if B.ClassName == "Model" and B.Name == "AtlanticChest" then
                            B.ChestBase.CFrame = J.CFrame
                        end
                    end
                end
            end
        )
        e.ChildAdded:Connect(
            function(cK)
                if cK.Name == "VolcanicChestTower" then
                    for aA, B in pairs(e:GetChildren()) do
                        if B.ClassName == "Model" and B.Name == "VolcanicChestTower" then
                            B.ChestBase.CFrame = J.CFrame
                        end
                    end
                end
            end
        )
        e.ChildRemoved:Connect(
            function(cH)
                if cH.Name == "RaidChestGold" and e:FindFirstChild "RaidChestGold" then
                    e.RaidChestGold.ChestBase.CFrame = J.CFrame
                end
            end
        )
        e.ChildRemoved:Connect(
            function(cI)
                if cI.Name == "RaidChestSilver" and e:FindFirstChild "RaidChestSilver" then
                    e.RaidChestSilver.ChestBase.CFrame = J.CFrame
                end
            end
        )
        e.ChildRemoved:Connect(
            function(cJ)
                if cJ.Name == "AtlanticChest" then
                    for aA, B in pairs(e:GetChildren()) do
                        if B.ClassName == "Model" and B.Name == "AtlanticChest" and e:FindFirstChild "AtlanticChest" then
                            B.ChestBase.CFrame = J.CFrame
                        end
                    end
                end
            end
        )
        e.ChildRemoved:Connect(
            function(cK)
                if cK.Name == "VolcanicChestTower" then
                    for aA, B in pairs(e:GetChildren()) do
                        if
                            B.ClassName == "Model" and B.Name == "VolcanicChestTower" and
                                e:FindFirstChild "VolcanicChestTower"
                         then
                            B.ChestBase.CFrame = J.CFrame
                        end
                    end
                end
            end
        )
    end
end
for aA, B in pairs(Z) do
    if game.PlaceId == B then
        c.PurchasePrompt.ProductPurchaseContainer.Animator.ChildAdded:Connect(
            function()
                pcall(
                    function()
                        c.PurchasePrompt.ProductPurchaseContainer.Animator.Prompt.Visible = false
                    end
                )
            end
        )
        c.PurchasePrompt.ChildAdded:Connect(
            function(cL)
                if cL.Name == "RobuxUpsellContainer" then
                    wait(1 / 3)
                    cL:Destroy()
                end
            end
        )
    end
end
for aA, B in pairs(_) do
    if game.PlaceId == B then
        KillAura.State = false
        AutoFarm.State = false
    end
end
local function cM(cN)
    character = cN
    K = cN:WaitForChild("Humanoid")
    J = cN:WaitForChild("HumanoidRootPart")
    aK()
end
H.CharacterAdded:Connect(cM)
if getconnections then
    for aA, B in next, getconnections(H.Idled) do
        B:Disable()
    end
end
if not getconnections then
    H.Idled:connect(
        function()
            a.VirtualUser:ClickButton2(Vector2.new())
        end
    )
end
H.CameraMaxZoomDistance = 60
local cO = H.CameraMinZoomDistance
H.CameraMinZoomDistance = 60
H.CameraMinZoomDistance = cO
game.NetworkClient.ChildRemoved:Connect(
    function(cP)
        al.KillAura = false
        a.GuiService:ClearError()
        bJ.Text = "Disconnected"
    end
)
coroutine.wrap(
    function()
        local cQ = c:WaitForChild("RobloxPromptGui")
        local cR = cQ:WaitForChild("promptOverlay")
        local cS = cR:WaitForChild("ErrorPrompt")
        local cT = cS:WaitForChild("MessageArea")
        local cU = cT:WaitForChild("ErrorFrame")
        local cV = cU:WaitForChild("ErrorMessage")
        repeat
            wait()
        until string.find(cV.Text, "exploit")
        if ap.DifficultyID <= 1 then
            k.Shared.Teleport.StartRaid:FireServer(ap.DungeonID)
        else
            k.Shared.Teleport.StartRaid:FireServer(ap.DungeonID, ap.DifficultyID)
        end
    end
)()
coroutine.wrap(
    function()
        local cQ = c:WaitForChild("RobloxPromptGui")
        local cR = cQ:WaitForChild("promptOverlay")
        local cS = cR:WaitForChild("ErrorPrompt")
        local cT = cS:WaitForChild("MessageArea")
        local cU = cT:WaitForChild("ErrorFrame")
        local cV = cU:WaitForChild("ErrorMessage")
        repeat
            wait()
        until string.find(cV.Text, "reconnect")
        if ap.DifficultyID <= 1 then
            k.Shared.Teleport.StartRaid:FireServer(ap.DungeonID)
        else
            k.Shared.Teleport.StartRaid:FireServer(ap.DungeonID, ap.DifficultyID)
        end
    end
)()
local cW = {
    DungeonID = a0[game.PlaceId],
    DifficultyID = S.GetDifficulty(),
    Phase = 0,
    ProfileGUID = k.Profiles[H.Name].GUID.Value
}
if getgenv().RJOnCrash and not a0[game.PlaceId] or cW.Phase == 1 then
    ag("WZ_CrashRJ", cW)
    wait(1)
    if cW.Phase == 0 then
        cW.Phase = 1
        ak("WZ_CrashRJ", cW)
        an(ao)
        while wait(10) do
            k.Shared.Teleport.JoinGame:FireServer(cW.ProfileGUID)
        end
    end
    if cW.Phase == 1 then
        cW.Phase = 0
        ak("WZ_CrashRJ", cW)
        an(ao)
        if ap.DifficultyID <= 1 then
            k.Shared.Teleport.StartRaid:FireServer(cW.DungeonID)
        else
            k.Shared.Teleport.StartRaid:FireServer(cW.DungeonID, cW.DifficultyID)
        end
    end
end
ak("WZ_CrashRJ", cW)
local cX = function(cY, cZ)
    local c_ = {enabled = true, fake = cY[cZ], fake_type = typeof(fake)}
    local d0
    local d1
    function c_:SetFake(d2, d3)
        if d3 then
            c_.fake = d2
        elseif typeof(d2) == c_.fake_type then
            c_.fake = d2
        else
            c_.fake = nil
        end
    end
    function c_:Destroy()
        cY[cZ] = c_.fake
        c_.enabled = false
    end
    if hookmetamethod then
        d0 =
            hookmetamethod(
            cY,
            "__index",
            function(self, d4)
                if self == cY and d4 == cZ and not checkcaller() and c_.enabled then
                    return c_.fake
                end
                return d0(self, d4)
            end
        )
        d1 =
            hookmetamethod(
            cY,
            "__newindex",
            function(self, d4, d5)
                if self == cY and d4 == cZ and not checkcaller() and c_.enabled then
                    if typeof(d5) == c_.fake_type then
                        c_.fake = d5
                        return
                    else
                        c_.fake = nil
                        return
                    end
                end
                return d1(self, d4, d5)
            end
        )
    else
        return
    end
    return c_
end
cX(K, "WalkSpeed")
cX(H, "CameraMaxZoomDistance")
if ad ~= "MageOfLight" then
    MoLPass.State = false
end
local d6 = {}
local d7 = ""
local d8 = true
if am.PerkNames ~= nil and type(am.PerkNames) == "table" then
    for A, B in pairs(am.PerkNames) do
        d8 = false
    end
end
if d8 then
    am.PerkNames = {}
    for A, B in pairs(T) do
        if type(B) == "table" then
            for C, d9 in pairs(B) do
                if type(d9) == "table" then
                    for da, db in pairs(d9) do
                        if da == 2 then
                            table.insert(am.PerkNames, A)
                            d6[A] = db
                        end
                    end
                end
            end
        end
    end
else
    ag("WZwebhook", am)
end
local dc = {}
local dd = {
    ["ResistFrost"] = "Resist Frost",
    ["ResistBurn"] = "Resist Burn",
    ["Glass"] = "Glass",
    ["RoughSkin"] = "Rough Skin",
    ["ResistKnockdown"] = "Resist Knockdown",
    ["BonusWalkspeed"] = "Bonus Walkspeed",
    ["PetFoodDrop"] = "Bonus Pet Food Chance",
    ["BonusAttack"] = "Attack UP",
    ["BonusHP"] = "HP UP",
    ["ResistPoison"] = "Resist Poison",
    ["LifeDrain"] = "Life Drain",
    ["CritStack"] = "Crit Stack",
    ["BurnChance"] = "Burn Chance",
    ["OpeningStrike"] = "Opening Strike",
    ["MobBoss"] = "Mob Boss",
    ["TestTier5"] = "Boss of the Boss",
    ["GoldDrop"] = "Bonus Gold",
    ["BonusRegen"] = "Bonus Health Regen",
    ["DamageReduction"] = "Damage Reduction",
    ["Aggro"] = "Shifted Aggro",
    ["UltCharge"] = "Ult Charge",
    ["Fortress"] = "Fortress",
    ["MasterThief"] = "Master Thief",
    ["EliteBoss"] = "Elite Boss",
    ["DodgeChance"] = "Untouchable"
}
local de = k.Profiles[H.Name].Currency.Gold.Value
for A, B in pairs(k.Profiles[H.Name].Inventory.Items:GetChildren()) do
    if B:FindFirstChild("UpgradeLimit") and B:FindFirstChild("Level") then
        local df = Instance.new("StringValue")
        df.Parent = B
        df.Name = "Item Already Exists"
        df.Value = "Item Already Exists"
    end
end
local dg
dg =
    k.Profiles[H.Name].Inventory.Items.DescendantAdded:Connect(
    function()
        for A, B in pairs(k.Profiles[H.Name].Inventory.Items:GetChildren()) do
            if
                B:FindFirstChild("UpgradeLimit") and B:FindFirstChild("Level") and
                    not B:FindFirstChild("Item Already Exists")
             then
                wait(.25)
                local dh = false
                if al.SellNonLegend then
                    if not B:FindFirstChild("Perk3") then
                        B.Name = "This Item is gone"
                        k.Shared.Drops.SellItems:InvokeServer({B})
                        dh = true
                    end
                end
                if al.SellLegend and M[B.Name].Rarity ~= 7 and not string.find(M[B.Name].DisplayKey, "Zero") then
                    local di = false
                    local dj = false
                    local dk = false
                    for aA, dl in pairs(am.PerkNames) do
                        if B:FindFirstChild("Perk3") and B:FindFirstChild("Perk3").Value == dl then
                            if al.MaxPerk and B:FindFirstChild("Perk3"):FindFirstChild("PerkValue").Value == d6[dl] then
                                dk = true
                            else
                                dk = true
                            end
                        elseif B:FindFirstChild("Perk2") and B:FindFirstChild("Perk2").Value == dl then
                            if al.MaxPerk and B:FindFirstChild("Perk2"):FindFirstChild("PerkValue").Value == d6[dl] then
                                dj = true
                            else
                                dj = true
                            end
                        elseif B:FindFirstChild("Perk1") and B:FindFirstChild("Perk1").Value == dl then
                            if al.MaxPerk and B:FindFirstChild("Perk1"):FindFirstChild("PerkValue").Value == d6[dl] then
                                di = true
                            else
                                di = true
                            end
                        end
                        if not di and not dj and not dk then
                            B.Name = "This Item is gone"
                            ItemName = B.Name
                            k.Shared.Drops.SellItems:InvokeServer(
                                {k.Profiles[H.Name].Inventory.Items:FindFirstChild(ItemName)}
                            )
                            dh = true
                        end
                    end
                end
                if not dh then
                    local df = Instance.new("StringValue")
                    df.Name = "Item Already Exists"
                    df.Value = "Item Already Exists"
                    df.Parent = B
                    local dm = B:FindFirstChild("Level").Value
                    local dn, dp, dq, dr
                    if B:FindFirstChild("Perk3") then
                        dn = "Legendary"
                        dp =
                            dd[tostring(B.Perk1.Value)] ..
                            " " ..
                                tostring(math.floor(B:FindFirstChild("Perk1"):FindFirstChild("PerkValue").Value * 100)) ..
                                    "%"
                        dq =
                            dd[tostring(B.Perk2.Value)] ..
                            " " ..
                                tostring(math.floor(B:FindFirstChild("Perk2"):FindFirstChild("PerkValue").Value * 100)) ..
                                    "%"
                        dr =
                            dd[tostring(B.Perk3.Value)] ..
                            " " ..
                                tostring(math.floor(B:FindFirstChild("Perk3"):FindFirstChild("PerkValue").Value * 100)) ..
                                    "%"
                    elseif B:FindFirstChild("Perk2") then
                        dn = "Epic"
                        dp =
                            dd[tostring(B.Perk1.Value)] ..
                            " " ..
                                tostring(math.floor(B:FindFirstChild("Perk1"):FindFirstChild("PerkValue").Value * 100)) ..
                                    "%"
                        dq =
                            dd[tostring(B.Perk2.Value)] ..
                            " " ..
                                tostring(math.floor(B:FindFirstChild("Perk2"):FindFirstChild("PerkValue").Value * 100)) ..
                                    "%"
                    elseif B:FindFirstChild("Perk1") then
                        dn = "Uncommon"
                        dp =
                            dd[tostring(B.Perk1.Value)] ..
                            " " ..
                                tostring(math.floor(B:FindFirstChild("Perk1"):FindFirstChild("PerkValue").Value * 100)) ..
                                    "%"
                    else
                        dn = "Common"
                    end
                    dc[B.Name] = {["Level"] = dm, ["Rarity"] = dn, ["Perk 1"] = dp, ["Perk 2"] = dq, ["Perk 3"] = dr}
                end
            end
        end
    end
)
H.CharacterRemoving:Connect(
    function()
        dg:Disconnect()
    end
)
local ds = H:WaitForChild("PlayerGui")
local cj = ds:WaitForChild("MissionRewards"):WaitForChild("MissionRewards")
local dt = ds:WaitForChild("TowerFinish"):WaitForChild("TowerFinish")
local du = cj:WaitForChild("Time")
local dv = dt:WaitForChild("Description"):WaitForChild("Overlay")
repeat
    wait()
until du.Visible or dv.text == "Collect your rewards! (20)"
wait(1)
local dw = k.Profiles[H.Name].Currency.Gold.Value - de
local dx = ""
local dy = ""
if not du.Visible then
    dx = "Tower Finished"
    dy = dt:WaitForChild("Time").Text
else
    dx = cj:WaitForChild("RaidClear").Text
    dy = cj:WaitForChild("Time").Text
end
local dz = ""
local dA = ""
for A, B in pairs(V) do
    if B.LiveID == game.PlaceId then
        dz = B.Name
        dA = B.NameTag
    end
end
local dB = {
    {
        ["title"] = "World // Zero",
        ["description"] = dx,
        ["color"] = tonumber(0x2B6BE4),
        ["footer"] = {["text"] = tostring(os.date())},
        ["fields"] = {
            {["name"] = dz, ["value"] = dA, ["inline"] = false},
            {["name"] = "Finished in", ["value"] = dy, ["inline"] = false},
            {["name"] = "Gold Earned", ["value"] = tostring(dw), ["inline"] = false},
            {
                ["name"] = "Level: " ..
                    tostring(string.match(H.PlayerGui.Hotbar.Hotbar.Vitals.Level.TextLabel.Text, "%d+")),
                ["value"] = H.PlayerGui.Hotbar.Hotbar.Vitals.XP.TextLabel.Text,
                ["inline"] = false
            }
        }
    }
}
local dC = function(dD, dx, ...)
    local ai = {["title"] = dD, ["description"] = dx, ["color"] = tonumber(0x2B6BE4), ["fields"] = ...}
    return ai
end
local dE = function(ah, dx, dF)
    local ai = {["name"] = ah, ["value"] = dx, ["inline"] = dF}
    return ai
end
for A, B in pairs(dc) do
    if type(B) == "table" then
        local ai = {}
        table.insert(ai, dE("Level", B.Level, true))
        table.insert(ai, dE("Rarity", B.Rarity, true))
        if B["Perk 1"] then
            table.insert(ai, dE("Perk 1", B["Perk 1"], false))
        end
        if B["Perk 2"] then
            table.insert(ai, dE("Perk 2", B["Perk 2"], false))
        end
        if B["Perk 3"] then
            table.insert(ai, dE("Perk 3", B["Perk 3"], false))
        end
        table.insert(dB, dC(M[A].DisplayKey, A, ai))
    end
end
getgenv().PlayerData = h:JSONEncode({["content"] = "", ["embeds"] = {unpack(dB)}})
local function dG(dH, dI)
    if dH:match("https://discord.com/api/webhooks/%d.*/%w*") then
        local dJ = dH
        local dK = PlayerData
        local dL = {["content-type"] = "application/json"}
        request = http_request or request or HttpPost or syn.request
        request({Url = dJ, Body = dK, Method = "POST", Headers = dL})
    else
        warn("Something went wrong")
    end
end
dG(am.Webhook, PlayerData)
