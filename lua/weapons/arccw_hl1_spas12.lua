SWEP.Base = "arccw_base"
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW - Half-Life" -- edit this if you like
SWEP.AdminOnly = false

SWEP.PrintName = "Shotgun (HL1)"
SWEP.TrueName = "SPAS-12"
SWEP.Trivia_Class = "Combat Shotgun"
SWEP.Trivia_Desc = "12 gauge dual mode combat shotgun designed to function primarily in semi-automatic mode, with the pump-action mode used for low-pressure ammunition such as bean bags."
SWEP.Trivia_Manufacturer = "Franchi"
SWEP.Trivia_Calibre = "12 Gauge"
SWEP.Trivia_Mechanism = "Pump-Action"
SWEP.Trivia_Country = "Italy"
SWEP.Trivia_Year = 1979

SWEP.Slot = 2

if GetConVar("arccw_truenames"):GetBool() then SWEP.PrintName = SWEP.TrueName end

SWEP.UseHands = true

SWEP.ViewModel = "models/hl1/c_hl1_spas12.mdl"
SWEP.WorldModel = "models/hl1/w_hl1_spas12.mdl"
SWEP.PlayerModel = "models/hl1/p_hl1_spas12.mdl"
SWEP.WorldModel	= SWEP.PlayerModel
SWEP.ViewModelFOV = 60

SWEP.Damage = 8
SWEP.DamageMin = 5 -- damage done at maximum range
SWEP.Range = 45 -- in METRES
SWEP.Penetration = 1
SWEP.DamageType = DMG_BUCKSHOT
SWEP.ShootEntity = nil -- entity to fire, if any
SWEP.MuzzleVelocity = 150 -- projectile or phys bullet muzzle velocity
-- IN M/S

SWEP.TracerNum = 1 -- tracer every X
SWEP.TracerCol = Color(255, 25, 25)
SWEP.TracerWidth = 3

SWEP.ChamberSize = 0 -- how many rounds can be chambered.
SWEP.Primary.ClipSize = 8 -- DefaultClip is automatically set.
SWEP.ExtendedClipSize = 10
SWEP.ReducedClipSize = 6

SWEP.Recoil = 2
SWEP.RecoilSide = 1
SWEP.MaxRecoilBlowback = 1.25

SWEP.ShotgunReload = true
SWEP.ManualAction = true

SWEP.ProceduralRegularFire = true
SWEP.ProceduralIronFire = true

SWEP.Override_ShootWhileSprint = true

SWEP.Delay = 60 / 60 -- 60 / RPM.
SWEP.Num = 8 -- number of shots per trigger pull.
SWEP.RunawayBurst = false
SWEP.Firemodes = {
    {
        PrintName = "PUMP",
        Mode = 1,
        Override_ManualAction = true,
    },
}

SWEP.NPCWeaponType = "weapon_shotgun"
SWEP.NPCWeight = 200

SWEP.AccuracyMOA = 70 -- accuracy in Minutes of Angle. There are 60 MOA in a degree.
SWEP.HipDispersion = 150 -- inaccuracy added by hip firing.
SWEP.MoveDispersion = 0

SWEP.Primary.Ammo = "buckshot" -- what ammo type the gun uses

SWEP.ShootVol = 120 -- volume of shoot sound
SWEP.ShootPitch = 100 -- pitch of shoot sound

SWEP.ShootSound = "ArcCW_HL1.SPAS_Fire"
SWEP.ShootSoundSilenced = "weapons/arccw/m590_suppressed_tp.wav"
SWEP.DistantShootSound = "weapons/arccw/sawedoff/sawedoff-1-distant.wav"

SWEP.MuzzleEffect = "muzzleflash_shotgun"
SWEP.ShellModel = "models/shells/shell_12gauge.mdl"
SWEP.ShellPitch = 100
SWEP.ShellSounds = ArcCW.ShotgunShellSoundsTable
SWEP.ShellScale = 1.5

SWEP.MuzzleEffectAttachment = 1 -- which attachment to put the muzzle on
SWEP.CaseEffectAttachment = 2 -- which attachment to put the case effect on

SWEP.SpeedMult = 1
SWEP.SightedSpeedMult = 1
SWEP.SightTime = 0.27

SWEP.BulletBones = { -- the bone that represents bullets in gun/mag
    -- [0] = "bulletchamber",
    -- [1] = "bullet1"
}

SWEP.CaseBones = {}

SWEP.IronSightStruct = {
    Pos = Vector(0, 6, 1),
    Ang = Angle(5, 0, 0),
    Magnification = 1,
    CrosshairInSights = true,
    SwitchToSound = "", -- sound that plays when switching to this sight
}


SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "shotgun"
SWEP.HoldtypeSights = "ar2"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_SHOTGUN

SWEP.ActivePos = Vector(0, 8, 0)
SWEP.ActiveAng = Angle(5, 0, 0)

SWEP.CustomizePos = Vector(16, 5, -4)
SWEP.CustomizeAng = Angle(15, 40, 0)

SWEP.HolsterPos = Vector(0, 9, 0)
SWEP.HolsterAng = Angle(5, 0, 0)

SWEP.BarrelOffsetSighted = Vector(0, 0, -1)
SWEP.BarrelOffsetHip = Vector(2, 0, -2)

SWEP.AttachmentElements = {}

SWEP.ExtraSightDist = 5

SWEP.Attachments = {
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
        Slot = "ammo_shotgun"
    },
    {
        PrintName = "Perk",
        Slot = "perk"
    },
}

-- draw
-- holster
-- reload
-- fire
-- cycle (for bolt actions)
-- append _empty for empty variation

SWEP.Animations = {
    ["idle"] = {
        Source = {"sm_idle", "deepidle"},
        Time = 2
    },
    ["draw"] = {
        Source = "draw",
        Time = 0.75,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.25,
    },
    ["ready"] = {
        Source = "draw",
        Time = 0.75,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.25,
    },
    ["fire"] = {
        Source = {"shoot"},
        Time = 1,
        FrameRate = 30,
        SoundTable = {
            {s = "ArcCW_HL1.SPAS_Pump", t = 15 / 30},
        },
    },
    ["cycle"] = {
        Source = {"shoot"},
        Time = 1,
        FrameRate = 30,
        ShellEjectAt = 0.3,
        SoundTable = {
            {s = "ArcCW_HL1.SPAS_Pump", t = 15 / 30},
        },
    },
    ["cycle_iron"] = {
        Source = "shoot",
        Time = 1,
        FrameRate = 30,
        ShellEjectAt = 0.3,
        SoundTable = {
            {s = "ArcCW_HL1.SPAS_Pump", t = 15 / 30},
        },
    },
    ["sgreload_start"] = {
        Source = "start_reload",
        Time = 0.5,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_SHOTGUN,
        LHIK = true,
        LHIKIn = 1,
        LHIKOut = 0,
        SoundTable = {}
    },
    ["sgreload_start_empty"] = {
        Source = "start_reload",
        Time = 0.5,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_SHOTGUN,
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0,
        SoundTable = {}
    },
    ["sgreload_insert"] = {
        Source = "reload",
        Time = 0.5,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_SHOTGUN,
        TPAnimStartTime = 0.3,
        FrameRate = 30,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0,
        SoundTable = {
            {s = "ArcCW_HL1.SPAS_Shell", t = 10 / 30}
        },
    },
    ["sgreload_finish"] = {
        Source = "pump",
        Time = 1,
        FrameRate = 30,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.4,
        SoundTable = {
            {s = "ArcCW_HL1.SPAS_Pump", t = 15 / 30},
        },
    },
    ["sgreload_finish_empty"] = {
        Source = "pump",
        Time = 1,
        FrameRate = 30,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 1,
        SoundTable = {
            {s = "ArcCW_HL1.SPAS_Pump", t = 15 / 30},
        },
    },
}

sound.Add( {
    name = "ArcCW_HL1.SPAS_Fire",
    channel = CHAN_WEAPON,
    volume = 1.0,
    level = 100,
    pitch = {95, 110},
    sound = {"weapons/sbarrel1.wav"},
} )
sound.Add( {
    name = "ArcCW_HL1.SPAS_Shell",
    channel = CHAN_ITEM,
    volume = 1.0,
    level = 100,
    pitch = {95, 110},
    sound = {"weapons/reload3.wav"},
} )
sound.Add( {
    name = "ArcCW_HL1.SPAS_Pump",
    channel = CHAN_ITEM,
    volume = 1.0,
    level = 100,
    pitch = {95, 110},
    sound = {"weapons/scock1.wav"},
} )