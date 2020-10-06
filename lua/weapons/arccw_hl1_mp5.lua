SWEP.Base = "arccw_base"
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW - Half-Life" -- edit this if you like
SWEP.AdminOnly = false

SWEP.PrintName = "9mmAR"
SWEP.TrueName = "MP5SD3"
SWEP.Trivia_Class = "Submachine Gun"
SWEP.Trivia_Desc = "HECU Standard Issue. Equipped with an M203PI Grenade Launcher."
SWEP.Trivia_Manufacturer = "Heckler & Koch"
SWEP.Trivia_Calibre = "9x19mm Para"
SWEP.Trivia_Mechanism = "Roller-Delayed Blowback"
SWEP.Trivia_Country = "Germany"
SWEP.Trivia_Year = 1956

SWEP.Slot = 2

if GetConVar("arccw_truenames"):GetBool() then SWEP.PrintName = SWEP.TrueName end

SWEP.UseHands = true

SWEP.ViewModel = "models/hl1/c_hl1mp5.mdl"
SWEP.PlayerModel = "models/hl1/p_hl1mp5.mdl"
SWEP.WorldModel = "models/hl1/w_hl1mp5.mdl"
SWEP.WorldModel	= SWEP.PlayerModel
SWEP.ViewModelFOV = 60

SWEP.Damage = 15
SWEP.DamageMin = 15 -- damage done at maximum range
SWEP.Range = 65 -- in METRES
SWEP.Penetration = 4
SWEP.DamageType = DMG_BULLET
SWEP.ShootEntity = nil -- entity to fire, if any
SWEP.MuzzleVelocity = 400 -- projectile or phys bullet muzzle velocity
-- IN M/S

SWEP.CanFireUnderwater = false

SWEP.TracerNum = 1 -- tracer every X
SWEP.TracerCol = Color(255, 25, 25)
SWEP.TracerWidth = 3

SWEP.ChamberSize = 0 -- how many rounds can be chambered.
SWEP.Primary.ClipSize = 50 -- DefaultClip is automatically set.
SWEP.ExtendedClipSize = 75
SWEP.ReducedClipSize = 30

SWEP.RevolverReload = false -- cases all eject on reload

SWEP.Recoil = 0.25
SWEP.RecoilSide = 0.25
SWEP.VisualRecoilMult = 1.5

SWEP.Delay = 60 / 600 -- 60 / RPM.
SWEP.Num = 1 -- number of shots per trigger pull.
SWEP.Firemodes = {
    {
        Mode = 2,
    },
    {
        Mode = -3,
    },
    {
        Mode = 1,
    },
}

SWEP.NPCWeaponType = "weapon_smg1"
SWEP.NPCWeight = 150

SWEP.AccuracyMOA = 30 -- accuracy in Minutes of Angle. There are 60 MOA in a degree.
SWEP.HipDispersion = 150 -- inaccuracy added by hip firing.
SWEP.MoveDispersion = 0

SWEP.Primary.Ammo = "pistol" -- what ammo type the gun uses
SWEP.MagID = "mpk1" -- the magazine pool this gun draws from

SWEP.ShootVol = 100 -- volume of shoot sound
SWEP.ShootPitch = 100 -- pitch of shoot sound

SWEP.ShootSound = "weapons/hks1.wav"
SWEP.ShootSoundSilenced = "weapons/pl_gun1.wav"
SWEP.DistantShootSound = "weapons/arccw/mp9/mp9-1-distant.wav"

SWEP.MuzzleEffect = "muzzleflash_smg"
SWEP.MuzzleSmoke = false
SWEP.MuzzlePos = Vector(15,1,7)
SWEP.ShellModel = "models/shells/shell_9mm.mdl"
SWEP.ShellScale = 1.5

SWEP.MuzzleEffectAttachment = 1 -- which attachment to put the muzzle on
SWEP.CaseEffectAttachment = 2 -- which attachment to put the case effect on

SWEP.SightTime = 0.21

SWEP.SpeedMult = 1
SWEP.SightedSpeedMult = 1

SWEP.Override_ShootWhileSprint = true

SWEP.BarrelLength = 0

SWEP.BulletBones = { -- the bone that represents bullets in gun/mag
    -- [0] = "bulletchamber",
    -- [1] = "bullet1"
}

SWEP.ProceduralRegularFire = false
SWEP.ProceduralIronFire = false

SWEP.CaseBones = {}

SWEP.IronSightStruct = {
    --Pos = Vector(-2.55, 0, 2.40),
    Pos = Vector(0, 6, 0),
    Ang = Angle(0, 0, 0),
    Magnification = 1.05,
    CrosshairInSights = true,
    SwitchToSound = "", -- sound that plays when switching to this sight
}

SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "smg"
SWEP.HoldtypeSights = "smg"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_SMG1

SWEP.ActivePos = Vector(0, 9, 0)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.CustomizePos = Vector(16, 3, -7)
SWEP.CustomizeAng = Angle(15, 40, 0)

SWEP.HolsterPos = Vector(0.532, -6, 0)
SWEP.HolsterAng = Angle(-7.036, 30.016, 0)

SWEP.BarrelOffsetSighted = Vector(0, 0, -1)
SWEP.BarrelOffsetHip = Vector(2, 0, -2)

SWEP.AttachmentElements = {}

SWEP.ExtraSightDist = 5

SWEP.Attachments = {
    {
        PrintName = "Silencer",
        Slot = {"mp5sil"},
        DefaultAttName = "Not Silenced"
    },
    {
        PrintName = "Underbarrel",
        Slot = {"mp5gl", "style_pistol"},
        Bone = "Bone24",
        Offset = {
            vpos = Vector(-5, 0, 0),
            vang = Angle(0, 180, 90),
            wpos = Vector(7.238, 1.641, -2.622),
            wang = Angle(90, -4.211, 0)
        },
        Installed = "ubgl_hl1_m203",
    },
    {
        PrintName = "Grip",
        Slot = "grip",
        DefaultAttName = "Standard Grip"
    },
    {
        PrintName = "Stock",
        Slot = "stock",
        DefaultAttName = "Standard Stock"
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
        Source = {
            "idle1",
            "longidle",
        },
        Time = 3,
    },
    ["draw"] = {
        Source = "deploy",
        Time = 1,
    },
    ["ready"] = {
        Source = "deploy",
        Time = 1,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.25,
    },
    ["fire"] = {
        Source = {"shoot", "shoot2", "shoot3"},
        Time = 0.5,
        ShellEjectAt = 0,
    },
    ["fire_iron"] = {
        Source = "shoot",
        Time = 0.5,
        ShellEjectAt = 0,
    },
    ["reload_empty"] = {
        Source = "reload",
        Time = 1.5,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_SMG1,
        FrameRate = 30,
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.5,
        SoundTable = {
            {
                s = "ArcCW_HL1.MP5_Out",
                t = 5 / 30
            },
            {
                s = "ArcCW_HL1.MP5_In",
                t = 24 / 30
            },
        },
    },
    ["reload"] = {
        Source = "reload",
        Time = 1.5,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_SMG1,
        FrameRate = 30,
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.5,
        SoundTable = {
            {
                s = "ArcCW_HL1.MP5_Out",
                t = 5 / 30
            },
            {
                s = "ArcCW_HL1.MP5_In",
                t = 24 / 30
            },
        },
    },
    ["gl_fire"] = {
        Source = "grenade",
        Time = 1,
        TPAnim = ACT_HL2MP_GESTURE_RANGE_ATTACK_REVOLVER,
        TPAnimStartTime = 0,
    },
}

sound.Add( {
    name = "ArcCW_HL1.MP5_Fire",
    channel = CHAN_WEAPON,
    volume = 1.0,
    level = 100,
    pitch = {95, 110},
    sound = {"weapons/hks1.wav", "weapons/hks2.wav", "weapons/hks3.wav"}
} )
sound.Add( {
    name = "ArcCW_HL1.MP5_Sil",
    channel = CHAN_WEAPON,
    volume = 1.0,
    level = 100,
    pitch = {95, 110},
    sound = {"weapons/pl_gun1.wav", "weapons/pl_gun2.wav"}
} )
sound.Add( {
    name = "ArcCW_HL1.MP5_In",
    channel = CHAN_ITEM,
    volume = 1.0,
    level = 100,
    pitch = {95, 110},
    sound = {"items/clipinsert1.wav"}
} )
sound.Add( {
    name = "ArcCW_HL1.MP5_Out",
    channel = CHAN_ITEM,
    volume = 1.0,
    level = 100,
    pitch = {95, 110},
    sound = {"items/cliprelease1.wav"}
} )