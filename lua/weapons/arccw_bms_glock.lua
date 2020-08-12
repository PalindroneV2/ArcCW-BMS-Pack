SWEP.Base = "arccw_base"
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW - Half-Life" -- edit this if you like
SWEP.AdminOnly = false

SWEP.PrintName = "9mm Pistol (BMS)"
SWEP.TrueName = "Glock 17"
SWEP.Trivia_Class = "Machine Pistol"
SWEP.Trivia_Desc = "9mm select fire pistol. Low damage, but a sophisticated recoil control system allows for excellent automatic performance. Standard for Black Mesa Security Staff. Also brandished by some HECU Marines."
SWEP.Trivia_Manufacturer = "Auschen Waffenfabrik"
SWEP.Trivia_Calibre = "9x19mm Para"
SWEP.Trivia_Mechanism = "Short Recoil"
SWEP.Trivia_Country = "Austria"
SWEP.Trivia_Year = 1989

SWEP.Slot = 1

if GetConVar("arccw_truenames"):GetBool() then SWEP.PrintName = SWEP.TrueName end

SWEP.UseHands = true

SWEP.ViewModel = "models/weapons/arccw/c_bms_glock17.mdl"
SWEP.WorldModel = "models/weapons/arccw/w_bms_glock17.mdl"
SWEP.ViewModelFOV = 60

SWEP.Damage = 15
SWEP.DamageMin = 10 -- damage done at maximum range
SWEP.Range = 35 -- in METRES
SWEP.Penetration = 3
SWEP.DamageType = DMG_BULLET
SWEP.ShootEntity = nil -- entity to fire, if any
SWEP.MuzzleVelocity = 350 -- projectile or phys bullet muzzle velocity
-- IN M/S

SWEP.CanFireUnderwater = true

SWEP.TracerNum = 1 -- tracer every X
SWEP.TracerCol = Color(255, 25, 25)
SWEP.TracerWidth = 3

SWEP.ChamberSize = 1 -- how many rounds can be chambered.
SWEP.Primary.ClipSize = 17 -- DefaultClip is automatically set.
SWEP.ExtendedClipSize = 32
SWEP.ReducedClipSize = 12

SWEP.Recoil = 1
SWEP.RecoilSide = 0.275
SWEP.RecoilRise = 1.25

SWEP.Delay = 60 / 1100 -- 60 / RPM.
SWEP.Num = 1 -- number of shots per trigger pull.
SWEP.Firemodes = {
    {
        Mode = 1,
    },
    {
        Mode = 2,
        Mult_HipDispersion = 2.5,
    },
    {
        Mode = 0,
    }
}

SWEP.NPCWeaponType = "weapon_pistol"
SWEP.NPCWeight = 110

SWEP.AccuracyMOA = 20 -- accuracy in Minutes of Angle. There are 60 MOA in a degree.
SWEP.HipDispersion = 200 -- inaccuracy added by hip firing.
SWEP.MoveDispersion = 250

SWEP.Primary.Ammo = "pistol" -- what ammo type the gun uses
SWEP.MagID = "ppa" -- the magazine pool this gun draws from

SWEP.ShootVol = 110 -- volume of shoot sound
SWEP.ShootPitch = 100 -- pitch of shoot sound


SWEP.ShootSound = "ArcCW_BMS.Glock_Fire"
SWEP.ShootSoundSilenced = "ArcCW_BMS.Glock_Fire_Sil"
SWEP.DistantShootSound = "weapons/arccw/glock18/glock18-1-distant.wav"

SWEP.MuzzleEffect = "muzzleflash_pistol"
SWEP.ShellModel = "models/shells/shell_9mm.mdl"
SWEP.ShellScale = 1.5

SWEP.MuzzleEffectAttachment = 1 -- which attachment to put the muzzle on
SWEP.CaseEffectAttachment = 3 -- which attachment to put the case effect on

SWEP.SightTime = 0.2

SWEP.SpeedMult = 1
SWEP.SightedSpeedMult = 0.75

SWEP.BarrelLength = 18

SWEP.BulletBones = { -- the bone that represents bullets in gun/mag
    -- [0] = "bulletchamber",
    -- [1] = "bullet1"
}

SWEP.ProceduralRegularFire = false
SWEP.ProceduralIronFire = false

SWEP.CaseBones = {}

SWEP.IronSightStruct = {
    Pos = Vector(-2.814, 3.216, 1.809),
    Ang = Angle(0, 0, 0),
    Magnification = 1.1,
    SwitchToSound = "", -- sound that plays when switching to this sight
}

SWEP.HoldtypeHolstered = "normal"
SWEP.HoldtypeActive = "pistol"
SWEP.HoldtypeSights = "revolver"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_PISTOL

SWEP.ActivePos = Vector(0, 2, 1) --(0, 2, 1)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.CustomizePos = Vector(10, -2, -3) --(10, 2, -3)
SWEP.CustomizeAng = Angle(15, 40, 0)

SWEP.HolsterPos = Vector(0, -5, -5)
SWEP.HolsterAng = Angle(36.533, 0, 0)
/*SWEP.HolsterPos = Vector(0, 3, 2)
SWEP.HolsterAng = Angle(0, 0, 0)*/
/**/

SWEP.BarrelOffsetSighted = Vector(0, 0, -1)
SWEP.BarrelOffsetHip = Vector(2, 0, -2)

SWEP.ExtraSightDist = 10

SWEP.AttachmentElements = {
    ["stock"] = {
        VMElements = {
            {
                Model = "models/weapons/arccw/atts/stock_fab.mdl",
                Bone = "bone_gun",
                Offset = {
                    pos = Vector(-4, 3.5, 0),
                    ang = Angle(0, 0, -90)
                }
            }
        },
        WMElements = {
            {
                Model = "models/weapons/arccw/atts/stock_fab.mdl",
                Offset = {
                    pos = Vector(0, 1, 0),
                    ang = Angle(0, -4.211, 0)
                }
            }
        }
    }
}

SWEP.Attachments = {
    {
        PrintName = "Optic", -- print name
        DefaultAttName = "Iron Sights",
        Slot = "optic_lp", -- what kind of attachments can fit here, can be string or table
        Bone = "Bone01", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(1, -0.5, 0),
            vang = Angle(0, 0, -90),
            wpos = Vector(4.129, 1.476, -4.116),
            wang = Angle(-2.829, -4.902, 180)
        },
    },
    {
        PrintName = "Muzzle",
        DefaultAttName = "Standard Muzzle",
        Slot = "muzzle",
        Bone = "bone_gun",
        Offset = {
            vpos = Vector(4.65, -0.65, 0),
            vang = Angle(0, 0, -90),
            wpos = Vector(10.229, 2.075, -3.928),
            wang = Angle(0, -4.211, 0)
        },
    },
    {
        PrintName = "Underbarrel",
        Slot = {"foregrip_pistol"},
        Bone = "bone_gun",
        Offset = {
            vpos = Vector(2, 0.5, 0),
            vang = Angle(0, 0, -90),
            wpos = Vector(7.238, 1.641, -2.622),
            wang = Angle(90, -4.211, 0)
        },
        MergeSlots = {4,5}
    },
    {
        Hidden = true,
        Slot = "tac_pistol",
        Bone = "bone_gun",
        Offset = {
            vpos = Vector(3.3, 0.4, 0),
            vang = Angle(0, 0, -90),
            wpos = Vector(7.238, 1.641, -2.622),
            wang = Angle(90, -4.211, 0)
        },
    },
    {
        Hidden = true,
        Slot = {"style_pistol"},
        Bone = "bone_gun",
        Offset = {
            vpos = Vector(2, 0.5, 0),
            vang = Angle(0, 0, -90),
            wpos = Vector(7.238, 1.641, -2.622),
            wang = Angle(90, -4.211, 0)
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
        PrintName = "Fire Group",
        Slot = "fcg",
        DefaultAttName = "Standard FCG"
    },
    {
        PrintName = "Ammo Type",
        Slot = "ammo_bullet"
    },
    {
        PrintName = "Perk",
        Slot = "perk"
    },
    {
        PrintName = "Charm",
        Slot = "charm",
        FreeSlot = true,
        Bone = "Bone01", -- relevant bone any attachments will be mostly referring to
        VMScale = Vector(1, 1, 1),
        Offset = {
            vpos = Vector(6, 0, -0.5),
            vang = Angle(0, 0, -90),
            wpos = Vector(8, 2.3, -3.5),
            wang = Angle(-2.829, -4.902, 180)
        },
    },
}


SWEP.Animations = {
    ["idle"] = false,
    ["ready"] = {
        Source = "draw1",
        Time = 0.75
    },
    ["draw_empty"] = {
        Source = "draw1",
        Time = 0.75,
    },
    ["draw"] = {
        Source = "draw1",
        Time = 0.75,
    },
    ["fire"] = {
        Source = {"fire1", "fire2"},
        Time = 0.75,
        ShellEjectAt = 0,
    },
    ["fire_empty"] = {
        Source = "fire_empty",
        Time = 0.75,
        ShellEjectAt = 0,
    },
    ["fire_iron"] = {
        Source = "fire1",
        Time = 0.75,
        ShellEjectAt = 0,
    },
    ["fire_iron_empty"] = {
        Source = "fire_empty",
        Time = 0.75,
        ShellEjectAt = 0,
    },
    ["reload"] = {
        Source = "gun_reload",
        Time = 2,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        Checkpoints = {28, 41, 53},
        FrameRate = 35,
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.5,
        SoundTable = {
            {s = "ArcCW_BMS.Glock_ClipOut", t = 0.3},
            {s = "ArcCW_BMS.Glock_ClipIn", t = 1.1},
        }
    },
    ["reload_empty"] = {
        Source = "gun_reload_empty",
        Time = 2.5,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        Checkpoints = {28, 41, 53},
        FrameRate = 35,
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.5,
        SoundTable = {
            {s = "ArcCW_BMS.Glock_ClipOut", t = 0.3},
            {s = "ArcCW_BMS.Glock_ClipIn", t = 1.1},
            {s = "ArcCW_BMS.Glock_Slide", t = 1.3},
        }
    },
    /*["enter_sprint"] = {
        Source = "idletosprint",
        Time = 30 / 40
    },
    ["idle_sprint"] = {
        Source = "sprintidle1",
        Time = 60 / 30
    },
    ["exit_sprint"] = {
        Source = "sprinttoidle",
        Time = 30 / 40
    },*/
}