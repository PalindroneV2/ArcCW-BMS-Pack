SWEP.Base = "arccw_base_melee"
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW - Half-Life" -- edit this if you like
SWEP.AdminOnly = false

SWEP.PrintName = "Crowbar"
SWEP.Trivia_Class = "Melee Weapon"
SWEP.Trivia_Desc = "A steel bar with a flattened, hooked end to be used as a lever to manually force things apart. Now used for bashing skulls in and breaking crates."
SWEP.Trivia_Manufacturer = "Trupper"
SWEP.Trivia_Calibre = "N/A"
SWEP.Trivia_Mechanism = "Sharp End/Blunt Force"
SWEP.Trivia_Country = "Unknown"
SWEP.Trivia_Year = 1998

SWEP.Slot = 0

SWEP.NotForNPCs = true

SWEP.UseHands = true

SWEP.ViewModel = "models/weapons/arccw/c_bms_crowbar.mdl"
SWEP.WorldModel = "models/weapons/arccw/w_bms_crowbar.mdl"
SWEP.ViewModelFOV = 60

SWEP.PrimaryBash = true
SWEP.CanBash = true
SWEP.MeleeDamage = 30
SWEP.MeleeRange = 32
SWEP.MeleeDamageType = DMG_CLUB

SWEP.MeleeSwingSound = "ArcCW_BMS.Crowbar_Miss"
SWEP.MeleeHitSound = "Weapon_Crowbar.Melee_HitWorld"
SWEP.MeleeHitNPCSound = "ArcCW_BMS.Crowbar_Hit"

SWEP.MeleeGesture = ACT_HL2MP_GESTURE_RANGE_ATTACK_MELEE

SWEP.NotForNPCs = true

SWEP.Firemodes = {
    {
        Mode = 1,
        PrintName = "MELEE"
    },
}

SWEP.MeleeTime = 0.5

SWEP.HoldtypeHolstered = "normal"
SWEP.HoldtypeActive = "melee"

SWEP.Primary.ClipSize = -1

SWEP.Animations = {
    ["draw"] = {
        Source = {"draw", "draw2"},
        Time = 1,
    },
    ["ready"] = {
        Source = {"draw1", "draw2"},
        Time = 1,
    },
    ["bash"] = {
        Source = {"attack1_miss", "attack2_miss", "attack3_miss", "attack1_hit", "attack2_hit", "attack3_hit", "attack4_hit"}, --
        Time = 0.40,
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

SWEP.IronSightStruct = false

SWEP.CustomizePos = Vector(2, -2, -4)

SWEP.BashPreparePos = Vector(0, 0, 0)
SWEP.BashPrepareAng = Angle(0, 5, 0)

SWEP.BashPos = Vector(0, 0, 0)
SWEP.BashAng = Angle(10, -10, 0)

/*SWEP.HolsterPos = Vector(0, 0, 0)
SWEP.HolsterAng = Angle(0, 0, 0)*/
SWEP.HolsterPos = Vector(0, -1, 2)
SWEP.HolsterAng = Angle(-15, 0, 0)