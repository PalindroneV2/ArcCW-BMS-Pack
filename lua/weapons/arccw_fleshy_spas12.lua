SWEP.Base = "arccw_base"
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW - Half-Life" -- edit this if you like
SWEP.AdminOnly = false

SWEP.PrintName = "Sporter-12"
SWEP.TrueName = "SPAS-12"
SWEP.Trivia_Class = "Combat Shotgun"
SWEP.Trivia_Desc = "12 gauge dual mode combat shotgun designed to function primarily in semi-automatic mode, with the pump-action mode used for low-pressure ammunition such as bean bags."
SWEP.Trivia_Manufacturer = "Franchi"
SWEP.Trivia_Calibre = "12 Gauge"
SWEP.Trivia_Mechanism = "Pump-Action"
SWEP.Trivia_Country = "Italy"
SWEP.Trivia_Year = 1979

SWEP.Slot = 3

if GetConVar("arccw_truenames"):GetBool() then SWEP.PrintName = SWEP.TrueName end

SWEP.UseHands = true

SWEP.ViewModel = "models/weapons/fml/c_fleshy_spas.mdl"
SWEP.WorldModel = "models/weapons/w_shotgun.mdl"
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

SWEP.ChamberSize = 1 -- how many rounds can be chambered.
SWEP.Primary.ClipSize = 8 -- DefaultClip is automatically set.
SWEP.ExtendedClipSize = 10
SWEP.ReducedClipSize = 6

SWEP.Recoil = 4
SWEP.RecoilSide = 1
SWEP.MaxRecoilBlowback = 2

SWEP.ShotgunReload = true
SWEP.ManualAction = false

SWEP.Delay = 60 / 300 -- 60 / RPM.
SWEP.Num = 8 -- number of shots per trigger pull.
SWEP.RunawayBurst = false
SWEP.Firemodes = {
    {
        Printname = "SEMI-AUTO",
        Mode = 1,
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

SWEP.ShootSound = "weapons/tfa_ins2/m590/m590_fire.wav"
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
    Pos = Vector(-2.421, 0, 0.87),
    Ang = Angle(0.202, 0.017, 0),
    Magnification = 1.1,
    SwitchToSound = "", -- sound that plays when switching to this sight
}


SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "shotgun"
SWEP.HoldtypeSights = "ar2"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_SHOTGUN

SWEP.ActivePos = Vector(1, 3, 0.25)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.SprintPos = Vector(0, 3, 0)
SWEP.SprintAng = Angle(0, 0, 0)

SWEP.CustomizePos = Vector(13, 2, -3)
SWEP.CustomizeAng = Angle(15, 40, 0)

SWEP.HolsterPos = Vector(0.532, -6, 0)
SWEP.HolsterAng = Angle(-7.036, 30.016, 0)

SWEP.BarrelOffsetSighted = Vector(0, 0, -1)
SWEP.BarrelOffsetHip = Vector(2, 0, -2)

SWEP.AttachmentElements = {
    ["mount"] = {
        VMElements = {
            {
                Model = "models/weapons/arccw/atts/mount_rail.mdl",
                Bone = "tag_weapon",
                Scale = Vector(1, 1, 1),
                Offset = {
                    pos = Vector(2.25, 0, 1.5),
                    ang = Angle(0, 0, 0)
                }
            }
        },
        WMElements = {
            {
                Model = "models/weapons/arccw/atts/mount_rail.mdl",
                Scale = Vector(0.75, 2, 1.5),
                Offset = {
                    pos = Vector(12.5, 1.3, -6.85),
                    ang = Angle(172.5, 0, 0),
                }
            }
        },
    }
}

SWEP.ExtraSightDist = 5

SWEP.Attachments = {
    {
        PrintName = "Optic", -- print name
        DefaultAttName = "Iron Sights",
        Slot = {"optic", "optic_lp"}, -- what kind of attachments can fit here, can be string or table
        Bone = "tag_weapon", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(2.3, 0, 1.75), -- offset that the attachment will be relative to the bone
            vang = Angle(0, 0, 0),
            wpos = Vector(12.5, 1.3, -7),
            wang = Angle(172.5, 180, 0)
        },
        CorrectivePos = Vector(0, 0, 0),
        CorrectiveAng = Angle(0, 0, 0),
        InstalledEles = {"mount"},
    },
    {
        PrintName = "Muzzle",
        DefaultAttName = "Standard Muzzle",
        Slot = "muzzle_shotgun",
        Bone = "tag_weapon",
        Offset = {
            vpos = Vector(23.5, 0, 0.6),
            vang = Angle(0, 0, 0),
            wpos = Vector(30.65, 0.8, -7.5),
            wang = Angle(-5, 0, 180)
        },
    },
    {
        PrintName = "Underbarrel",
        Slot = "foregrip",
        Bone = "tag_weapon",
        Offset = {
            vpos = Vector(12, 0, -2.3),
            vang = Angle(0, 0, 0),
            wpos = Vector(21.5, 0.75, -3.25),
            wang = Angle(172.5, 0, 0)
        },
        SlideAmount = false
    },
    {
        PrintName = "Tactical",
        Slot = "tac",
        Bone = "tag_weapon",
        Offset = {
            vpos = Vector(19, 0.55, -0.8), -- offset that the attachment will be relative to the bone
            vang = Angle(0, 0, -90),
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
        Bone = "tag_weapon",
        Offset = {
            vpos = Vector(-1.5, -0.5, 0.25), -- offset that the attachment will be relative to the bone
            vang = Angle(0, 0, 0),
            wpos = Vector(7, 1.6, -4),
            wang = Angle(-10, 0, 180)
        },
    },
}

-- draw
-- holster
-- reload
-- fire
-- cycle (for bolt actions)
-- append _empty for empty variation

/*SWEP.Hook_TranslateAnimation = function(wep, anim)
    -- Only play anims with UBGL attached
    if wep.ManualAction == false and wep:GetBuff_Override("Override_ManualAction") == false and wep.Animations[anim .. "_auto"] then
        return anim .. "_auto"
    end
end*/

SWEP.Animations = {
    ["draw"] = {
        Source = "draw",
        Time = 0.75,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.25,
        SoundTable = {
            {s = "weapons/tfa_ins2/m590/m590_draw.wav", t = 0},
        },
    },
    ["ready"] = {
        Source = "draw",
        Time = 0.75,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.25,
        SoundTable = {
            {s = "weapons/tfa_ins2/m590/m590_draw.wav", t = 0}
        },
    },
    ["fire"] = {
        Source = {
            "shoot",
        },
        Time = 0.5,
        ShellEjectAt = 0.15,
    },
    ["fire_iron"] = {
        Source = {
            "shoot1",
        },
        Time = 0.5,
        ShellEjectAt = 0.15,
    },
    ["cycle"] = {
        Source = {
            "pump_1",
            --"pump_2",
        },
        Time = 0.75,
        --ShellEjectAt = 0.15,
        SoundTable = {
            {s = "weapons/tfa_ins2/m590/m590_boltback.wav", t = 0},
            {s = "weapons/tfa_ins2/m590/m590_boltrelease.wav", t = 0.3},
        },
    },
    ["cycle_iron"] = {
        Source = "pump_iron",
        Time = 0.5,
        --ShellEjectAt = 0.3,
        SoundTable = {
            {s = "weapons/tfa_ins2/m590/m590_boltback.wav", t = 0},
            {s = "weapons/tfa_ins2/m590/m590_boltrelease.wav", t = 0.3},
        },
    },
    ["sgreload_start"] = {
        Source = "reload_start",
        Time = 1,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_SHOTGUN,
        LHIK = true,
        LHIKIn = 1.5,
        LHIKOut = 0,
        SoundTable = {
            {s = "weapons/tfa_ins2/m590/m590_shell.wav", t = 0.35},
        },
    },
    ["sgreload_start_empty"] = {
        Source = "reload_start_dry",
        Time = 2.5,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_SHOTGUN,
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0,
        SoundTable = {
            {s = "weapons/tfa_ins2/m590/m590_shell.wav", t = 0.35},
            {s = "weapons/tfa_ins2/m590/m590_boltback.wav", t = 1.3},
            {s = "weapons/tfa_ins2/m590/m590_boltrelease.wav", t = 1.5},
        },
    },
    ["sgreload_insert"] = {
        Source = "reload",
        Time = 0.75,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_SHOTGUN,
        TPAnimStartTime = 0.3,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0,
        SoundTable = {
            {s = "weapons/tfa_ins2/m590/m590_shell.wav", t = 0.35},
        },
    },
    ["sgreload_finish"] = {
        Source = "reload_finish",
        Time = 0.75,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.4,
    },
    ["sgreload_finish_empty"] = {
        Source = "reload_finish",
        Time = 0.75,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 1,
    },
    ["enter_sprint"] = {
        Source = "Idle_to_sprint",
        Time = 30 / 40
    },
    ["idle_sprint"] = {
        Source = "Sprint_",
        Time = 40 / 30
    },
    ["exit_sprint"] = {
        Source = "Sprint_to_Idle",
        Time = 30 / 40
    },
}