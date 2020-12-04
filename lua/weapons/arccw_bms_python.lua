SWEP.Base = "arccw_base"
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW - Half-Life" -- edit this if you like
SWEP.AdminOnly = false

SWEP.PrintName = "357 Magnum (BMS)"
SWEP.TrueName = "Colt Python"
SWEP.Trivia_Class = "Revolver"
SWEP.Trivia_Desc = "A powerful double-action revolver chambered in .357 Magnum. Offers reliable operation and power. Some Black Mesa security officers carry these."
SWEP.Trivia_Manufacturer = "Colt"
SWEP.Trivia_Calibre = ".44 Magnum"
SWEP.Trivia_Mechanism = "Double-Action"
SWEP.Trivia_Country = "USA"
SWEP.Trivia_Year = 1955

SWEP.Slot = 1

if GetConVar("arccw_truenames"):GetBool() then
    SWEP.PrintName = SWEP.TrueName
end

SWEP.UseHands = true

SWEP.ViewModel =  "models/weapons/arccw/c_bms_python.mdl"
SWEP.WorldModel = "models/weapons/arccw/w_bms_python.mdl"
SWEP.ViewModelFOV = 60

SWEP.DefaultSkin = 1

SWEP.Damage = 65
SWEP.DamageMin = 35 -- damage done at maximum range
SWEP.Range = 40 -- in METRES
SWEP.Penetration = 10
SWEP.DamageType = DMG_BULLET
SWEP.ShootEntity = nil -- entity to fire, if any
SWEP.MuzzleVelocity = 500 -- projectile or phys bullet muzzle velocity
-- IN M/S

SWEP.CanFireUnderwater = false

SWEP.TracerNum = 1 -- tracer every X
SWEP.TracerCol = Color(255, 25, 25)
SWEP.TracerWidth = 3

SWEP.ChamberSize = 0 -- how many rounds can be chambered.
SWEP.Primary.ClipSize = 6 -- DefaultClip is automatically set.
SWEP.ExtendedClipSize = 6
SWEP.ReducedClipSize = 4

SWEP.Recoil = 2.5
SWEP.RecoilSide = 1
SWEP.RecoilRise = 1.8
SWEP.VisualRecoilMult = 0.5

SWEP.Delay = 60 / 120 -- 60 / RPM.
SWEP.Num = 1 -- number of shots per trigger pull.
SWEP.Firemodes = {
    {
        PrintName = "DACT",
        Mode = 1,
    },
}

SWEP.NPCWeaponType = {"weapon_pistol", "weapon_357"}
SWEP.NPCWeight = 75

SWEP.AccuracyMOA = 7 -- accuracy in Minutes of Angle. There are 60 MOA in a degree.
SWEP.HipDispersion = 350 -- inaccuracy added by hip firing.
SWEP.MoveDispersion = 250

SWEP.Primary.Ammo = "357" -- what ammo type the gun uses
SWEP.MagID = "ragingbull" -- the magazine pool this gun draws from

SWEP.ShootVol = 100 -- volume of shoot sound
SWEP.ShootPitch = 95 -- pitch of shoot sound

SWEP.ShootSound = "ArcCW_BMS.Python_Fire"
SWEP.ShootSoundSilenced = "weapons/arccw/usp/usp_01.wav"
SWEP.DistantShootSound = "weapons/arccw/revolver/revolver-1_distant.wav"

SWEP.MuzzleEffect = "muzzleflash_pistol_deagle"

SWEP.MuzzleEffectAttachment = 1 -- which attachment to put the muzzle on
SWEP.CaseEffectAttachment = 0 -- which attachment to put the case effect on

SWEP.RevolverReload = true

SWEP.SightTime = 0.28

SWEP.SpeedMult = 0.975
SWEP.SightedSpeedMult = 0.75

SWEP.BarrelLength = 18

SWEP.BulletBones = { -- the bone that represents bullets in gun/mag
    -- [0] = "bulletchamber",
    -- [1] = "bullet1"
}

SWEP.ProceduralRegularFire = false
SWEP.ProceduralIronFire = false

SWEP.BulletBones = {
    [1] = "1lead",
    [2] = "2lead",
    [3] = "3lead",
    [4] = "4lead",
    [5] = "5lead",
    [6] = "6lead",
}

SWEP.CaseBones = {
    [1] = "1",
    [2] = "2",
    [3] = "3",
    [4] = "4",
    [5] = "5",
    [6] = "6",
}


SWEP.IronSightStruct = {
    Pos = Vector(-2.78, -2, 1.5),
    Ang = Angle(0.4, 0, 1),
    Magnification = 1.1,
    CrosshairInSights = false,
    SwitchToSound = "", -- sound that plays when switching to this sight
}

SWEP.HoldtypeHolstered = "normal"
SWEP.HoldtypeActive = "pistol"
SWEP.HoldtypeSights = "revolver"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_REVOLVER

SWEP.ActivePos = Vector(0, 4, 0.5)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.CustomizePos = Vector(13, 3, -4)
SWEP.CustomizeAng = Angle(15, 40, 0)

SWEP.HolsterPos = Vector(2, 0, -10)
SWEP.HolsterAng = Angle(45, 0, 0)

SWEP.BarrelOffsetSighted = Vector(0, 0, -1)
SWEP.BarrelOffsetHip = Vector(2, 0, -2)

SWEP.ExtraSightDist = 10

SWEP.AttachmentElements = {
    ["stock"] = {
        VMElements = {
            {
                Model = "models/weapons/arccw/atts/stock_fab.mdl",
                Bone = "357",
                Offset = {
                    pos = Vector(-1.25, 0, -1.5),
                    ang = Angle(0, 0, 0),
                }
            }
        },
        WMElements = {
            {
                Model = "models/weapons/arccw/atts/stock_fab.mdl",
                Offset = {
                    pos = Vector(2, 1, 0),
                    ang = Angle(0, -4.211, 0)
                }
            }
        }
    }
}

SWEP.Attachments = {
    {
        PrintName = "Optic",
        DefaultAttName = "Iron Sights",
        Slot = {"optic_lp", "optic"},
        Bone = "357",
        Offset = {
            vpos = Vector(6.25, 0, 3.15),
            vang = Angle(0, 0, 0),
            wpos = Vector(8.873, 1.927, -4.648),
            wang = Angle(0, 0, 180)
        },
        CorrectiveAng = nil --Angle(90, 0, -90)
    },
    {
        PrintName = "Muzzle",
        DefaultAttName = "Standard Muzzle",
        Slot = "muzzle",
        Bone = "357",
        Offset = {
            vpos = Vector(9.5, 0, 2.65),
            vang = Angle(0, 0, 0),
            wpos = Vector(15.2, 1, -4.3),
            wang = Angle(0, 0, 0)
        },
    },
    {
        PrintName = "Underbarrel",
        Slot = {"foregrip", "style_pistol"},
        Bone = "357",
        Offset = {
            vpos = Vector(8, 0, 2),
            vang = Angle(0, 0, 0),
            wpos = Vector(11, 1, -3.4),
            wang = Angle(180, 0, 0)
        },
        MergeSlots = {4}
    },
    {
        Hidden = true,
        Slot = "tac_pistol",
        Bone = "357",
        Offset = {
            vpos = Vector(7, 0, 2),
            vang = Angle(0, 0, 0),
            wpos = Vector(15, 1, -3.4),
            wang = Angle(0, 0, 180)
        },
    },
    {
        PrintName = "Grip",
        Slot = "grip",
        DefaultAttName = "Standard Grip"
    },
    {
        PrintName = "Stock",
        Slot = "stock",
        DefaultAttName = "No Stock",
        InstalledEles = {"stock"},
    },
    {
        PrintName = "Ammo Type",
        Slot = "ammo_bullet",
    },
    {
        PrintName = "Perk",
        Slot = {"perk", "perk_revolver"}
    },
    {
        PrintName = "Charm",
        Slot = "charm",
        FreeSlot = true,
        Bone = "357",
        Offset = {
            vpos = Vector(4.5, -0.3, 2.75),
            vang = Angle(0, 0, 0),
            wpos = Vector(10, 1.25, -4),
            wang = Angle(0, -4.211, 180)
        },
    },
}



SWEP.Animations = {
    ["idle"] = false,
    ["draw"] = {
        Source = "draw",
        Time = 0.5,
    },
    ["ready"] = {
        Source = "draw",
        Time = 0.5,
    },
    ["fire"] = {
        Source = {"fire1", "fire2",
        },
        Time = 0.75
    },
    ["fire_iron"] = {
        Source = {"fire1", "fire2"},
        Time = 0.75
    },
    ["reload"] = {
        Source = "gun_reload1",
        Time = 4.1,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_REVOLVER,
        FrameRate = 30,
        LHIK = true,
        LHIKIn = 1,
        LHIKOut = 1,
        SoundTable = {
            {s = "ArcCW_BMS.Python_WheelOut", t = 0.1},
            {s = "ArcCW_BMS.Python_ShellOut", t = 0.8},
            {s = "ArcCW_BMS.Python_ShellIn", t = 2.65},
            {s = "ArcCW_BMS.Python_WheelIn", t = 3.1},
            {s = "ArcCW_BMS.Python_WheelSpin", t = 3.5},
        }
    },
    ["cycle"] = {
        Source = "centeridle1",
        Time = 0.8,
        LHIK = true,
        LHIKIn = 0.15,
        LHIKOut = 0.15,
    },
    ["1_to_2"] = {
        Source = "centertoidle",
        Time = 0.7,
        LHIK = true,
        LHIKIn = 0.15,
        LHIKOut = 0.15,
    },
    ["2_to_1"] = {
        Source = "uncycle",
        Time = 0.7,
        LHIK = true,
        LHIKIn = 0.15,
        LHIKOut = 0.15,
    },
}