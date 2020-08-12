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

SWEP.ViewModel = "models/hl1/c_hl1_crowbar.mdl"
SWEP.PlayerModel = "models/hl1/p_hl1_crowbar.mdl"
SWEP.WorldModel = "models/hl1/w_hl1_crowbar.mdl"
SWEP.WorldModel	= SWEP.PlayerModel
SWEP.ViewModelFOV = 60

SWEP.PrimaryBash = true
SWEP.CanBash = true
SWEP.MeleeDamage = 20
SWEP.MeleeRange = 32
SWEP.MeleeAttackTime = 0.125
SWEP.MeleeDamageType = DMG_CLUB

SWEP.MeleeSwingSound = "ArcCW_HL1.Crowbar_Miss"
SWEP.MeleeHitSound = "ArcCW_HL1.Crowbar_HitWorld"
SWEP.MeleeHitNPCSound = "ArcCW_HL1.Crowbar_Hit"

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
    ["idle"] = {
        Source = "idle1",
        Time = 3,
    },
    ["draw"] = {
        Source = {"draw"},
        Time = 1,
    },
    ["ready"] = {
        Source = "draw",
        Time = 1,
    },
    ["bash"] = {
        Source = {"attack1miss", "attack2", "attack3"}, -- , , , "attack2hit", , "attack3hit"
        Time = 0.5,
    },
}

SWEP.IronSightStruct = false

SWEP.ActivePos = Vector(0, 9, 0)

SWEP.CustomizePos = Vector(6, 9, -4)

SWEP.BashPreparePos = Vector(0, 0, 0)
SWEP.BashPrepareAng = Angle(0, 5, 0)

SWEP.BashPos = Vector(0, 0, 0)
SWEP.BashAng = Angle(10, -10, 0)

SWEP.HolsterPos = Vector(0, -1, 2)
SWEP.HolsterAng = Angle(-15, 0, 0)