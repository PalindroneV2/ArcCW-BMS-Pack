SWEP.Base = "arccw_base"
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW - Half-Life" -- edit this if you like
SWEP.AdminOnly = false

SWEP.PrintName = "9mm Pistol (HL1)"
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

SWEP.ViewModel = "models/hl1/c_hl1_glock.mdl"
SWEP.PlayerModel = "models/hl1/p_hl1_glock.mdl"
SWEP.WorldModel = "models/hl1/w_hl1_glock.mdl"
SWEP.WorldModel	= SWEP.PlayerModel
SWEP.ViewModelFOV = 60

SWEP.Damage = 15
SWEP.DamageMin = 10 -- damage done at maximum range
SWEP.Range = 100 -- in METRES
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

SWEP.Delay = 60 / 300 -- 60 / RPM.
SWEP.Num = 1 -- number of shots per trigger pull.
SWEP.Firemodes = {
    {
        Mode = 1,
    },
    {
        Mode = 2,
        Mult_HipDispersion = 2.5,
    },
}

SWEP.NPCWeaponType = "weapon_pistol"
SWEP.NPCWeight = 110

SWEP.AccuracyMOA = 15 -- accuracy in Minutes of Angle. There are 60 MOA in a degree.
SWEP.HipDispersion = 150 -- inaccuracy added by hip firing.
SWEP.MoveDispersion = 0

SWEP.Primary.Ammo = "pistol" -- what ammo type the gun uses
SWEP.MagID = "ppa" -- the magazine pool this gun draws from

SWEP.ShootVol = 110 -- volume of shoot sound
SWEP.ShootPitch = 100 -- pitch of shoot sound


SWEP.ShootSound = "ArcCW_HL1.Glock_Fire"
SWEP.ShootSoundSilenced = "ArcCW_HL1.Glock_Sil"
SWEP.DistantShootSound = "weapons/arccw/glock18/glock18-1-distant.wav"

SWEP.MuzzleEffect = "muzzleflash_pistol"
SWEP.ShellModel = "models/shells/shell_9mm.mdl"
SWEP.ShellScale = 1.5

SWEP.MuzzleEffectAttachment = 1 -- which attachment to put the muzzle on
SWEP.CaseEffectAttachment = 3 -- which attachment to put the case effect on

SWEP.SightTime = 0.2

SWEP.SpeedMult = 1
SWEP.SightedSpeedMult = 0.75

SWEP.Override_ShootWhileSprint = true

SWEP.BarrelLength = 18

SWEP.BulletBones = { -- the bone that represents bullets in gun/mag
    -- [0] = "bulletchamber",
    -- [1] = "bullet1"
}

SWEP.ProceduralRegularFire = false
SWEP.ProceduralIronFire = false

SWEP.CaseBones = {}

SWEP.IronSightStruct = {
    Pos = Vector(0, 6, 2),
    Ang = Angle(0, 0, 0),
    Magnification = 1,
    CrosshairInSights = true,
    SwitchToSound = "", -- sound that plays when switching to this sight
}

SWEP.HoldtypeHolstered = "normal"
SWEP.HoldtypeActive = "pistol"
SWEP.HoldtypeSights = "revolver"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_PISTOL

SWEP.ActivePos = Vector(0, 9, 0) --(0, 2, 1)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.CustomizePos = Vector(12, -2, -1) --(10, 2, -3)
SWEP.CustomizeAng = Angle(15, 40, 0)

SWEP.HolsterPos = Vector(0, -5, -5)
SWEP.HolsterAng = Angle(36.533, 0, 0)

SWEP.BarrelOffsetSighted = Vector(0, 0, -1)
SWEP.BarrelOffsetHip = Vector(2, 0, -2)

SWEP.ExtraSightDist = 10

SWEP.AttachmentElements = {
    ["glocksil"] = {
        VMBodygroups = {{ind = 2, bg = 1}}
    }
}

SWEP.Attachments = {
    {
        PrintName = "Muzzle",
        DefaultAttName = "Standard Muzzle",
        Slot = "glocksil",
        InstalledEles = {"glocksil"}
    },
    {
        PrintName = "Underbarrel",
        Slot = {"style_pistol"},
        Bone = "Bone01",
        Offset = {
            vpos = Vector(3, 7.5, 0),
            vang = Angle(0, -90, -90),
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
}


SWEP.Animations = {
    ["idle"] = {
        Source = {"idle1", "idle2", "idle3"},
        Time = 3
    },
    ["ready"] = {
        Source = "draw",
        Time = 0.75
    },
    ["draw_empty"] = {
        Source = "draw",
        Time = 0.75,
    },
    ["draw"] = {
        Source = "draw",
        Time = 0.75,
    },
    ["fire"] = {
        Source = {"shoot"},
        Time = 0.75,
        ShellEjectAt = 0,
    },
    ["fire_empty"] = {
        Source = "shoot_empty",
        Time = 0.75,
        ShellEjectAt = 0,
    },
    ["fire_iron"] = {
        Source = "shoot",
        Time = 0.75,
        ShellEjectAt = 0,
    },
    ["fire_iron_empty"] = {
        Source = "fire_empty",
        Time = 0.75,
        ShellEjectAt = 0,
    },
    ["reload"] = {
        Source = "reload",
        Time = 2.25,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        Checkpoints = {28, 41, 53},
        FrameRate = 30,
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.5,
        SoundTable = {
            {
                s = "ArcCW_HL1.Glock_Clip2",
                t = 4 / 18
            },
            {
                s = "ArcCW_HL1.Glock_Clip1",
                t = 23 / 18
            },
        },
    },
    ["reload_empty"] = {
        Source = "reload",
        Time = 2.25,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        Checkpoints = {28, 41, 53},
        FrameRate = 18,
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.5,
        SoundTable = {
            {
                s = "ArcCW_HL1.Glock_Clip2",
                t = 4 / 18
            },
            {
                s = "ArcCW_HL1.Glock_Clip1",
                t = 23 / 18
            },
        },
    },
}