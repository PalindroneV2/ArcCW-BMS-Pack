SWEP.Base = "arccw_base"
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW - Half-Life" -- edit this if you like
SWEP.AdminOnly = false

SWEP.PrintName = "HK-64A3"
SWEP.TrueName = "MP5A3"
SWEP.Trivia_Class = "Submachine Gun"
SWEP.Trivia_Desc = "HECU Standard Issue. Equipped with an M203PI Grenade Launcher by default."
SWEP.Trivia_Manufacturer = "Heckler & Koch"
SWEP.Trivia_Calibre = "9x19mm Para"
SWEP.Trivia_Mechanism = "Roller-Delayed Blowback"
SWEP.Trivia_Country = "Germany"
SWEP.Trivia_Year = 1956

SWEP.Slot = 2

if GetConVar("arccw_truenames"):GetBool() then SWEP.PrintName = SWEP.TrueName end

SWEP.UseHands = true

SWEP.ViewModel = "models/weapons/c_mp5a3_bms.mdl"
SWEP.WorldModel = "models/weapons/w_mp5a3_bms.mdl"
SWEP.ViewModelFOV = 60

SWEP.Damage = 25
SWEP.DamageMin = 17 -- damage done at maximum range
SWEP.Range = 75 -- in METRES
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
SWEP.Primary.ClipSize = 30 -- DefaultClip is automatically set.
SWEP.ExtendedClipSize = 50
SWEP.ReducedClipSize = 20

SWEP.RevolverReload = false -- cases all eject on reload

SWEP.Recoil = 0.25
SWEP.RecoilSide = 0.25
SWEP.VisualRecoilMult = 1.5

SWEP.Delay = 60 / 700 -- 60 / RPM.
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
    {
        Mode = 0,
    },
}

SWEP.NPCWeaponType = "weapon_smg1"
SWEP.NPCWeight = 150

SWEP.AccuracyMOA = 16 -- accuracy in Minutes of Angle. There are 60 MOA in a degree.
SWEP.HipDispersion = 250 -- inaccuracy added by hip firing.
SWEP.MoveDispersion = 150

SWEP.Primary.Ammo = "pistol" -- what ammo type the gun uses
SWEP.MagID = "mp5a3" -- the magazine pool this gun draws from

SWEP.ShootVol = 100 -- volume of shoot sound
SWEP.ShootPitch = 100 -- pitch of shoot sound

SWEP.ShootSound = "ArcCW_BMS.MP5_Fire"
SWEP.ShootSoundSilenced = "ArcCW_BMS.MP5_FireSil"
SWEP.DistantShootSound = "weapons/arccw/mp9/mp9-1-distant.wav"

SWEP.MuzzleEffect = "muzzleflash_smg"
SWEP.MuzzleSmoke = false
SWEP.MuzzlePos = Vector(15,1,7)
SWEP.ShellModel = "models/shells/shell_9mm.mdl"
SWEP.ShellScale = 1

SWEP.MuzzleEffectAttachment = 1 -- which attachment to put the muzzle on
SWEP.CaseEffectAttachment = 2 -- which attachment to put the case effect on

SWEP.SightTime = 0.21

SWEP.SpeedMult = 1
SWEP.SightedSpeedMult = 0.75

SWEP.BarrelLength = 24

SWEP.BulletBones = { -- the bone that represents bullets in gun/mag
    -- [0] = "bulletchamber",
    -- [1] = "bullet1"
}

SWEP.ProceduralRegularFire = false
SWEP.ProceduralIronFire = false

SWEP.CaseBones = {}

SWEP.IronSightStruct = {
    Pos = Vector(-3.62, -2.5, 1.3),
    Ang = Angle(2, -1.2, 0),
    Magnification = 1.1,
    SwitchToSound = "", -- sound that plays when switching to this sight
}

SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "smg"
SWEP.HoldtypeSights = "ar2"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_SMG1

SWEP.ActivePos = Vector(0, 5, 1)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.CustomizePos = Vector(12.5, 5, -4)
SWEP.CustomizeAng = Angle(15, 40, 0)

SWEP.HolsterPos = Vector(2, 2, 1)
SWEP.HolsterAng = Angle(-7.036, 30.016, 0)
/*SWEP.HolsterPos = Vector(0, 3, 1)
SWEP.HolsterAng = Angle(0, 0, 0)*/
/**/

SWEP.BarrelOffsetSighted = Vector(0, 0, -1)
SWEP.BarrelOffsetHip = Vector(2, 0, -2)

SWEP.AttachmentElements = {
    ["mount"] = {
        VMBodygroups = {{ind = 1, bg = 1}},
        VMElements = {
            {
                Model = "models/weapons/arccw/atts/mount_rail.mdl",
                Bone = "MP5_New",
                Scale = Vector(1, 1, 1),
                Offset = {
                    pos = Vector(0, 3.5, 1.45),
                    ang = Angle(0, -90, 0)
                }
            }
        },
        WMBodygroups = {{ind = 1, bg = 1}},
        WMElements = {
            {
                Model = "models/weapons/arccw/atts/mount_rail.mdl",
                Scale = Vector(1, 1, 1),
                Offset = {
                    pos = Vector(5.714, 1, -7.25),
                    ang = Angle(165, 5, -1)
                }
            }
        },
    },
    ["stock"] = {
        VMBodygroups = {{ind = 0, bg = 1}},
        WMBodygroups = {{ind = 0, bg = 1}},
    },
    ["foregrip"] = {
        VMBodygroups = {{ind = 2, bg = 1}},
        WMBodygroups = {{ind = 2, bg = 1}},
    }
}

SWEP.ExtraSightDist = 5

SWEP.Attachments = {
    {
        PrintName = "Optic", -- print name
        DefaultAttName = "Iron Sights",
        Slot = {"optic", "optic_lp"}, -- what kind of attachments can fit here, can be string or table
        Bone = "MP5_New", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(0, 3.5, 1.45), -- offset that the attachment will be relative to the bone
            vang = Angle(0, -90, 0),
            wpos = Vector(5.714, 1, -7.5),
            wang = Angle(165, -175, 0)
        },
        CorrectivePos = Vector(0, 0, 0),
        CorrectiveAng = Angle(1, 180, 0),
        InstalledEles = {"mount"},
    },
    {
        PrintName = "Muzzle",
        DefaultAttName = "Standard Muzzle",
        Slot = "muzzle",
        Bone = "MP5_New",
        Offset = {
            vpos = Vector(0, 15, 0),
            vang = Angle(0, -90, 0),
            wpos = Vector(16, 1.75, -9),
            wang = Angle(-15, -5, 180)
        },
    },
    {
        PrintName = "Underbarrel",
        Slot = {"igl"},
        DefaultAttName = "Dummy M203PI",
        Installed = "ubgl_bms_m203",
        MergeSlots = {4,5},
    },
    {
        Hidden = true,
        Slot = {"foregrip", "style_pistol"},
        Bone = "MP5_New",
        Offset = {
            vpos = Vector(0, 11, -0.8),
            vang = Angle(0, -90, 0),
            wpos = Vector(14, 1.6, -7.75),
            wang = Angle(-10.216, -3, 180)
        },
        InstalledEles = {"foregrip"},
    },
    {
        Hidden = true,
        Slot = {"ubgl"},
        Bone = "MP5_New",
        Offset = {
            vpos = Vector(0, 8, -0.8),
            vang = Angle(0, -90, 0),
            wpos = Vector(11, 1.6, -6.5),
            wang = Angle(-17.5, -1.5, 180)
        },
        InstalledEles = {"foregrip"},
    },
    {
        PrintName = "Tactical",
        Slot = "tac",
        Bone = "MP5_New",
        Offset = {
            vpos = Vector(-1, 11, 0),
            vang = Angle(0, -90, -90),
            wpos = Vector(15.625, 1, -8.5),
            wang = Angle(-15, 0, 90)
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
        DefaultAttName = "Standard Stock",
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
        Bone = "MP5_New",
        Offset = {
            vpos = Vector(0.65, 3, 0),
            vang = Angle(0, -90, 0),
            wpos = Vector(5, 1.7, -6),
            wang = Angle(-15, 0, 180)
        },
    },
}

SWEP.Animations = {
    ["idle"] = false,
    ["draw"] = {
        Source = {"draw", "draw2"},
        Time = 0.5,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.25,
    },
    ["ready"] = {
        Source = "draw2",
        Time = 0.5,
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
        Source = "idle",
        Time = 0,
        ShellEjectAt = 0,
    },
    ["reload_empty"] = {
        Source = "reload_long",
        Time = 3,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_SMG1,
        FrameRate = 30,
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.5,
        SoundTable = {
            {s = "ArcCW_BMS.MP5_BoltBack", t = 0.1},
            {s = "ArcCW_BMS.MP5_MagOut", t = 0.8},
            {s = "ArcCW_BMS.MP5_MagIn", t = 1.4},
            {s = "ArcCW_BMS.MP5_BoltFwd", t = 2.15},
        },
    },
    ["reload"] = {
        Source = "reload",
        Time = 1.7,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_SMG1,
        FrameRate = 30,
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.5,
        SoundTable = {
            {s = "ArcCW_BMS.MP5_MagOut", t = 0.1},
            {s = "ArcCW_BMS.MP5_MagIn", t = 0.75},
        },
    },
    ["gl_fire"] = {
        Source = "grenade",
        Time = 1.25,
        TPAnim = ACT_HL2MP_GESTURE_RANGE_ATTACK_REVOLVER,
        TPAnimStartTime = 0,
    },
    /*["enter_sprint"] = {
        Source = "idletosprint",
        Time = 30 / 40
    },
    ["idle_sprint"] = {
        Source = {"sprintidle1", "sprintidle2"},
        Time = 60 / 30
    },
    ["exit_sprint"] = {
        Source = "sprinttoidle",
        Time = 30 / 40
    },*/
}

/*sound.Add( {
    name = "ArcCW_BMS.MP5_Fire",
    channel = CHAN_WEAPON,
    volume = 1.0,
    level = 100,
    pitch = {95, 110},
    sound = {
        "weapons/mp5/single1.wav",
        "weapons/mp5/single2.wav",
        "weapons/mp5/single3.wav",
    }
} )*/
sound.Add( {
    name = "ArcCW_BMS.MP5_Fire",
    channel = CHAN_WEAPON,
    volume = 1.0,
    level = 100,
    pitch = {95, 110},
    sound = {
        "weapons/mp5/mp5_fire1.wav",
        "weapons/mp5/mp5_fire2.wav",
        "weapons/mp5/mp5_fire3.wav",
        "weapons/mp5/mp5_fire4.wav",
    }
} )
sound.Add( {
    name = "ArcCW_BMS.MP5_FireSil",
    channel = CHAN_WEAPON,
    volume = 1.0,
    level = 100,
    pitch = {95, 110},
    sound = {
        "weapons/mp5/mp5_sil1.wav",
        "weapons/mp5/mp5_sil2.wav",
        "weapons/mp5/mp5_sil3.wav",
    }
} )
sound.Add( {
    name = "ArcCW_BMS.MP5_MagOut",
    channel = CHAN_ITEM,
    volume = 1.0,
    level = 100,
    pitch = {95, 110},
    sound = {"weapons/mp5/mag_out.wav"}
} )
sound.Add( {
    name = "ArcCW_BMS.MP5_MagIn",
    channel = CHAN_ITEM,
    volume = 1.0,
    level = 100,
    pitch = {95, 110},
    sound = {"weapons/mp5/mag_in.wav"}
} )
sound.Add( {
    name = "ArcCW_BMS.MP5_BoltBack",
    channel = CHAN_ITEM,
    volume = 1.0,
    level = 100,
    pitch = {95, 110},
    sound = {"weapons/mp5/bolt_back.wav"}
} )
sound.Add( {
    name = "ArcCW_BMS.MP5_BoltFwd",
    channel = CHAN_ITEM,
    volume = 1.0,
    level = 100,
    pitch = {95, 110},
    sound = {"weapons/mp5/bolt_fwd.wav"}
} )