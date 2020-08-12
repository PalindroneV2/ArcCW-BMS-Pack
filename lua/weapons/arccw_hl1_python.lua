SWEP.Base = "arccw_base"
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW - Half-Life" -- edit this if you like
SWEP.AdminOnly = false

SWEP.PrintName = "357 Magnum (HL1)"
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

SWEP.ViewModel = "models/hl1/c_hl1_python.mdl"
SWEP.PlayerModel = "models/hl1/p_hl1_python.mdl"
SWEP.WorldModel = "models/hl1/w_hl1_python.mdl"
SWEP.WorldModel	= SWEP.PlayerModel
SWEP.ViewModelFOV = 60

SWEP.DefaultSkin = 1

SWEP.Damage = 65
SWEP.DamageMin = 35 -- damage done at maximum range
SWEP.Range = 150 -- in METRES
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

SWEP.Delay = 60 / 100 -- 60 / RPM.
SWEP.Num = 1 -- number of shots per trigger pull.
SWEP.Firemodes = {
    {
        PrintName = "DACT",
        Mode = 1,
    },
}

SWEP.NPCWeaponType = {"weapon_pistol", "weapon_357"}
SWEP.NPCWeight = 75

SWEP.AccuracyMOA = 5 -- accuracy in Minutes of Angle. There are 60 MOA in a degree.
SWEP.HipDispersion = 100 -- inaccuracy added by hip firing.
SWEP.MoveDispersion = 0

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

SWEP.Override_ShootWhileSprint = true

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
    Pos = Vector(0, 8, 2),
    Ang = Angle(0, 0, 0),
    Magnification = 1.1,
    CrosshairInSights = true,
    SwitchToSound = "", -- sound that plays when switching to this sight
}

SWEP.HoldtypeHolstered = "normal"
SWEP.HoldtypeActive = "pistol"
SWEP.HoldtypeSights = "revolver"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_REVOLVER

SWEP.ActivePos = Vector(0, 9, 0.5)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.CustomizePos = Vector(13, 3, -4)
SWEP.CustomizeAng = Angle(15, 40, 0)

SWEP.HolsterPos = Vector(2, 0, -10)
SWEP.HolsterAng = Angle(45, 0, 0)

SWEP.BarrelOffsetSighted = Vector(0, 0, -1)
SWEP.BarrelOffsetHip = Vector(2, 0, -2)

SWEP.ExtraSightDist = 10

SWEP.AttachmentElements = {
    ["python_sight"] = {
        VMBodygroups = {{ind = 3, bg = 1}},
        Override_IronSightStruct = {
            Pos = Vector(0, 6, 1),
            Ang = Angle(0, 0, 0),
            Magnification = 2,
            CrosshairInSights = true,
        }
    }
}

SWEP.Attachments = {
    {
        PrintName = "Underbarrel",
        Slot = {"style_pistol"},
        Bone = "bulletmaster",
        Offset = {
            vpos = Vector(0, 5, -1),
            vang = Angle(0, -90, 0),
            wpos = Vector(11, 1, -3.4),
            wang = Angle(180, 0, 0)
        },
        DefaultAttName = "No Underbarrel",
    },
    {
        PrintName = "Precision Sight",
        Slot = "python_sight",
        InstalledEles = {"python_sight"},
        DefaultAttName = "No Sight",
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
    },
    {
        PrintName = "Ammo Type",
        Slot = "ammo_bullet",
    },
    {
        PrintName = "Perk",
        Slot = {"perk", "perk_revolver"}
    },
}



SWEP.Animations = {
    ["idle"] = {
        Source = {"idle1", "idle2", "idle3","fidget1"},
        Time = 3
    },
    ["draw"] = {
        Source = "draw",
        Time = 0.5,
    },
    ["ready"] = {
        Source = "draw",
        Time = 0.5,
    },
    ["fire"] = {
        Source = {"fire1"},
        Time = 0.75
    },
    ["fire_iron"] = {
        Source = {"fire1"},
        Time = 0.75
    },
    ["reload"] = {
        Source = "reload",
        Time = 3.5,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_REVOLVER,
        FrameRate = 36,
        LHIK = true,
        LHIKIn = 1,
        LHIKOut = 1,
        SoundTable = {
            {
                s = "ArcCW_BMS.Python_WheelOut",
                t = 16 / 36
            },
            {
                s = "ArcCW_BMS.Python_ShellOut",
                t = 36 / 36
            },
            {
                s = "ArcCW_HL1.357_Reload",
                t = 72 / 36
            },
            {
                s = "ArcCW_BMS.Python_WheelIn",
                t = 96 / 36
            },
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