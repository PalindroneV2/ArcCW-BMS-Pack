SWEP.Base = "arccw_base"
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW - Half-Life" -- edit this if you like
SWEP.AdminOnly = false

SWEP.PrintName = "Shotgun (BMS)"
SWEP.TrueName = "SPAS-12"
SWEP.Trivia_Class = "Combat Shotgun"
SWEP.Trivia_Desc = "12 gauge dual mode combat shotgun designed to function primarily in semi-automatic mode, with the pump-action mode used for low-pressure ammunition such as bean bags. You will find it wielded by Black Mesa Security Staff and HECU Marines."
SWEP.Trivia_Manufacturer = "Franchi"
SWEP.Trivia_Calibre = "12 Gauge"
SWEP.Trivia_Mechanism = "Pump-Action"
SWEP.Trivia_Country = "Italy"
SWEP.Trivia_Year = 1979

SWEP.Slot = 3

if GetConVar("arccw_truenames"):GetBool() then SWEP.PrintName = SWEP.TrueName end

SWEP.UseHands = true

SWEP.ViewModel = "models/weapons/arccw/c_spas12_bms.mdl"
SWEP.WorldModel = "models/weapons/arccw/w_spas12_bms.mdl"
SWEP.ViewModelFOV = 60

SWEP.Damage = 10
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

SWEP.Recoil = 3
SWEP.RecoilSide = 1
SWEP.MaxRecoilBlowback = 2

SWEP.ShotgunReload = true
SWEP.ManualAction = true

SWEP.Delay = 60 / 300 -- 60 / RPM.
SWEP.Num = 8 -- number of shots per trigger pull.
SWEP.RunawayBurst = false
SWEP.Firemodes = {
    {
        PrintName = "PUMP",
        Mode = 1,
        Override_ManualAction = true,
    },
    {
        Mode = 0
    }
}

SWEP.NPCWeaponType = "weapon_shotgun"
SWEP.NPCWeight = 200

SWEP.AccuracyMOA = 80 -- accuracy in Minutes of Angle. There are 60 MOA in a degree.
SWEP.HipDispersion = 200 -- inaccuracy added by hip firing.
SWEP.MoveDispersion = 150

SWEP.Primary.Ammo = "buckshot" -- what ammo type the gun uses

SWEP.ShootVol = 120 -- volume of shoot sound
SWEP.ShootPitch = 100 -- pitch of shoot sound

SWEP.ShootSound = "ArcCW_BMS.SPAS_Fire"
SWEP.ShootSoundSilenced = "weapons/arccw/m590_suppressed_tp.wav"
SWEP.DistantShootSound = "weapons/arccw/sawedoff/sawedoff-1-distant.wav"

SWEP.MuzzleEffect = "muzzleflash_shotgun"
SWEP.ShellModel = "models/shells/shell_12gauge.mdl"
SWEP.ShellPitch = 100
SWEP.ShellSounds = ArcCW.ShotgunShellSoundsTable
SWEP.ShellScale = 1.5

SWEP.MuzzleEffectAttachment = 1 -- which attachment to put the muzzle on
SWEP.CaseEffectAttachment = 2 -- which attachment to put the case effect on

SWEP.SpeedMult = 0.95
SWEP.SightedSpeedMult = 0.75
SWEP.SightTime = 0.27

SWEP.BulletBones = { -- the bone that represents bullets in gun/mag
    -- [0] = "bulletchamber",
    -- [1] = "bullet1"
}

SWEP.ProceduralRegularFire = false
SWEP.ProceduralIronFire = false

SWEP.CaseBones = {}

SWEP.IronSightStruct = {
    Pos = Vector(-5.75, -5.25, 2.25),
    Ang = Angle(-1.15, -4.25, 4.25),
    Magnification = 1.1,
    SwitchToSound = "", -- sound that plays when switching to this sight
}


SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "shotgun"
SWEP.HoldtypeSights = "ar2"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_SHOTGUN

SWEP.ActivePos = Vector(-0.5, 0, 1)
SWEP.ActiveAng = Angle(-1.1, -3.5, 5)

SWEP.CustomizePos = Vector(13, -3, -3)
SWEP.CustomizeAng = Angle(15, 40, 0)

SWEP.HolsterPos = Vector(0.532, -6, 1)
SWEP.HolsterAng = Angle(-7.036, 30.016, 0)

SWEP.SprintPos = Vector(0, 0, 0)
SWEP.SprintAng = Angle(0, 0, 0)

SWEP.BarrelOffsetSighted = Vector(0, 0, -1)
SWEP.BarrelOffsetHip = Vector(2, 0, -2)

SWEP.AttachmentElements = {
}

SWEP.ExtraSightDist = 5

SWEP.Attachments = {
    {
        PrintName = "Optic", -- print name
        DefaultAttName = "Iron Sights",
        Slot = {"optic", "optic_lp"}, -- what kind of attachments can fit here, can be string or table
        Bone = "bone_gun", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(6, -1.35, -0.45), -- offset that the attachment will be relative to the bone
            vang = Angle(0, 0, -95),
            wpos = Vector(12.5, 1.3, -7),
            wang = Angle(172.5, 180, 0)
        },
        CorrectivePos = Vector(0, 0, 0),
        CorrectiveAng = Angle(4.5, 0.5, 0),
        InstalledEles = {"mount"},
    },
    {
        PrintName = "Muzzle",
        DefaultAttName = "Standard Muzzle",
        Slot = "muzzle_shotgun",
        Bone = "bone_gun",
        Offset = {
            vpos = Vector(31, -0.1, -0.45),
            vang = Angle(0, 0, -90),
            wpos = Vector(30.65, 0.8, -7.5),
            wang = Angle(-5, 0, 180)
        },
    },
    {
        PrintName = "Underbarrel",
        Slot = "foregrip",
        Bone = "bone_pump",
        Offset = {
            vpos = Vector(10, 1, -0.45),
            vang = Angle(0, 0, -90),
            wpos = Vector(21.5, 0.75, -3.25),
            wang = Angle(172.5, 0, 0)
        },
        SlideAmount = false
    },
    {
        PrintName = "Tactical",
        Slot = "tac",
        Bone = "bone_gun",
        Offset = {
            vpos = Vector(27.5, 1.5, -0.5), -- offset that the attachment will be relative to the bone
            vang = Angle(0, 0, -5),
            wpos = Vector(28, 0.25, -6),
            wang = Angle(-5, 0, 90)
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
        Slot = "ammo_shotgun"
    },
    {
        PrintName = "Perk",
        Slot = "perk"
    },
    {
        PrintName = "Charm",
        Slot = "charm",
        FreeSlot = true,
        Bone = "bone_gun",
        Offset = {
            vpos = Vector(7, 0.5, -1.25), -- offset that the attachment will be relative to the bone
            vang = Angle(0, 0, -95),
            wpos = Vector(7, 1.6, -4),
            wang = Angle(-10, 0, 180)
        },
    },
}

SWEP.Animations = {
    ["draw"] = {
        Source = "draw1",
        Time = 0.75,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.25,
        SoundTable = {
            {s = "weapons/tfa_ins2/m590/m590_draw.wav", t = 0.1},
        },
    },
    ["ready"] = {
        Source = "draw1",
        Time = 0.75,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.25,
        SoundTable = {
            {s = "weapons/tfa_ins2/m590/m590_draw.wav", t = 0.1}
        },
    },
    ["fire"] = {
        Source = {
            "fire1",
            "fire2",
        },
        Time = 0.5,
    },
    ["fire_iron"] = {
        Source = {
            "fire1",
        },
        Time = 0.5
    },
    ["cycle"] = {
        Source = {
            "pump1",
        },
        Time = 0.75,
        ShellEjectAt = 0.3,
        SoundTable = {
            {s = "ArcCW_BMS.SPAS_Pump", t = 0.35},
        },
    },
    ["cycle_iron"] = {
        Source = "pump1",
        Time = 0.75,
        ShellEjectAt = 0.3,
        SoundTable = {
            {s = "ArcCW_BMS.SPAS_Pump", t = 0.35},
        },
    },
    ["sgreload_start"] = {
        Source = "idletoshell",
        Time = 0.5,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_SHOTGUN,
        LHIK = true,
        LHIKIn = 1.5,
        LHIKOut = 0,
    },
    ["sgreload_start_empty"] = {
        Source = {"idletoreload"},
        Time = 1.25,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_SHOTGUN,
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0,
        SoundTable = {
            {s = "ArcCW_BMS.SPAS_Reload1", t = 0.85},
        },
    },
    ["sgreload_insert"] = {
        Source = {"shell_reload1", "shell_reload2", "shell_reload3"},
        Time = 0.75,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_SHOTGUN,
        TPAnimStartTime = 0.3,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0,
        SoundTable = {
            {s = "ArcCW_BMS.SPAS_Reload1", t = 0.35},
        },
    },
    ["sgreload_finish"] = {
        Source = "pump2",
        Time = 0.75,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.4,
        SoundTable = {
            {s = "ArcCW_BMS.SPAS_Pump", t = 0.1},
        },
    },
    ["sgreload_finish_empty"] = {
        Source = "pump2",
        Time = 0.75,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 1,
        SoundTable = {
            {s = "ArcCW_BMS.SPAS_Pump", t = 0.1},
        },
    },
    ["enter_sprint"] = {
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
    },
}

/*sound.Add( {
    name = "ArcCW_BMS.SPAS_Fire",
    channel = CHAN_WEAPON,
    volume = 1.0,
    level = 100,
    pitch = {95, 110},
    sound = {"weapons/bms_spas/single.wav"}
} )*/
sound.Add( {
    name = "ArcCW_BMS.SPAS_Fire",
    channel = CHAN_WEAPON,
    volume = 1.0,
    level = 100,
    pitch = {95, 110},
    sound = {
        "weapons/bms_spas/shotgun_fire1.wav",
        "weapons/bms_spas/shotgun_fire2.wav",
        "weapons/bms_spas/shotgun_fire3.wav",
    }
} )
sound.Add( {
    name = "ArcCW_BMS.SPAS_Pump",
    channel = CHAN_ITEM,
    volume = 1.0,
    level = 100,
    pitch = {95, 110},
    sound = {
        "weapons/bms_spas/pump1.wav",
        "weapons/bms_spas/pump2.wav",
        "weapons/bms_spas/pump3.wav",
    }
} )
sound.Add( {
    name = "ArcCW_BMS.SPAS_Reload1",
    channel = CHAN_ITEM,
    volume = 1.0,
    level = 100,
    pitch = {95, 110},
    sound = {
        "weapons/bms_spas/reload1.wav",
        "weapons/bms_spas/reload2.wav",
        "weapons/bms_spas/reload3.wav",
        "weapons/bms_spas/reload4.wav",
        "weapons/bms_spas/reload5.wav",
        "weapons/bms_spas/reload6.wav"
    }
} )