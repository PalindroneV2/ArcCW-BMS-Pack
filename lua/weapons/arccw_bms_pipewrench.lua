SWEP.Base = "arccw_base_melee"
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW - Half-Life" -- edit this if you like
SWEP.AdminOnly = false

SWEP.PrintName = "Pipe Wrench"
SWEP.Trivia_Class = "Melee Weapon"
SWEP.Trivia_Desc = "A wrench designed to turn threaded pipes and pipe fittings. It's heavy enough to cause plenty of blunt force trauma."
SWEP.Trivia_Manufacturer = "Many"
SWEP.Trivia_Calibre = "N/A"
SWEP.Trivia_Mechanism = "Blunt Force"
SWEP.Trivia_Country = "USA"
SWEP.Trivia_Year = 1869

SWEP.Slot = 0

SWEP.NotForNPCs = true

SWEP.UseHands = true

SWEP.ViewModel = "models/weapons/arccw/c_bms_pipewrench.mdl"
SWEP.WorldModel = "models/weapons/arccw/w_bms_pipewrench.mdl"
SWEP.ViewModelFOV = 60

SWEP.PrimaryBash = true
SWEP.CanBash = true
SWEP.MeleeDamage = 65
SWEP.MeleeRange = 40
SWEP.MeleeDamageType = DMG_CLUB
SWEP.MeleeAttackTime = 0.25

SWEP.Melee2 = true
SWEP.Melee2Damage = 95
SWEP.Melee2Range = 40
SWEP.Melee2Time = 2
SWEP.Melee2AttackTime = 0.25

SWEP.MeleeSwingSound = "ArcCW_HL1.Wrench_Miss"
SWEP.MeleeHitSound = "ArcCW_HL1.Wrench_HitWorld"
SWEP.MeleeHitNPCSound = "ArcCW_HL1.Wrench_Hit"

SWEP.MeleeGesture = ACT_HL2MP_GESTURE_RANGE_ATTACK_MELEE
SWEP.Melee2Gesture = ACT_HL2MP_GESTURE_RANGE_ATTACK_MELEE2

SWEP.NotForNPCs = true

SWEP.Firemodes = {
    {
        Mode = 1,
        PrintName = "MELEE"
    },
}

SWEP.MeleeTime = 1

SWEP.HoldtypeHolstered = "normal"
SWEP.HoldtypeActive = "melee"

SWEP.Primary.ClipSize = -1

SWEP.Animations = {
    ["draw"] = {
        Source = "draw",
        Time = 0.5,
    },
    ["ready"] = {
        Source = "draw",
        Time = 0.5,
    },
    ["bash"] = {
        Source = {"attack1_miss", "attack1_hit", "attack2_miss", "attack2_hit"}, -- "attack_01", "attack_02", "attack_03"
        Time = 1,
    },
    ["bash2"] = {
        Source = {"attack3_miss", "attack3_hit"}, -- "secondary_attack"
        Time = 1.25,
    },
}

SWEP.IronSightStruct = false

SWEP.ActivePos = Vector(0, 10, 0)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.CustomizePos = Vector(9, 3, -5)
SWEP.CustomizeAng = Angle(15, 40, 0)

SWEP.BashPreparePos = Vector(0, 0, 0)
SWEP.BashPrepareAng = Angle(0, 5, 0)

SWEP.BashPos = Vector(0, 0, 0)
SWEP.BashAng = Angle(10, -10, 0)

SWEP.HolsterPos = Vector(0, -1, 2)
SWEP.HolsterAng = Angle(-15, 0, 0)