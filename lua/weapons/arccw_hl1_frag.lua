SWEP.Base = "arccw_base_nade"
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW - Half-Life" -- edit this if you like
SWEP.AdminOnly = false

SWEP.PrintName = "Mk.2 Frag Grenade"
SWEP.Trivia_Class = "Hand Grenade"
SWEP.Trivia_Desc = "High explosive fragmentation hand grenade. Can be cooked."
SWEP.Trivia_Manufacturer = "Day & Zimmermann"
SWEP.Trivia_Calibre = "N/A"
SWEP.Trivia_Mechanism = "Pyrotechnic delay fuze"
SWEP.Trivia_Country = "USA"
SWEP.Trivia_Year = 1918

SWEP.Slot = 4

SWEP.NotForNPCs = true

SWEP.UseHands = true

SWEP.ViewModel = "models/hl1/c_hl1_frag.mdl"
SWEP.PlayerModel = "models/hl1/p_hl1_frag.mdl"
SWEP.WorldModel = "models/hl1/w_hl1_frag.mdl"
SWEP.WorldModel	= SWEP.PlayerModel
SWEP.ViewModelFOV = 60
SWEP.Primary.Ammo = "grenade"
SWEP.FuseTime = 5

SWEP.Throwing = true

SWEP.Primary.ClipSize = 1

SWEP.MuzzleVelocity = 1000
SWEP.ShootEntity = "arccw_hl1_fragnade"

SWEP.ActivePos = Vector(0, 9, 0)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.CustomizePos = Vector(-4, 9, 2)
SWEP.CustomizeAng = Angle(0, 0, 0)


SWEP.Animations = {
    ["draw"] = {
        Source = "draw",
        Time = 0.5,
    },
    ["ready"] = {
        Source = "draw",
        Time = 0.5,
    },
    ["pre_throw"] = {
        Source = "pinpull",
        Time = 0.5,
    },
    ["throw"] = {
        Source = {"throw1", "throw2", "throw3"},
        Time = 0.5,
        TPAnim = ACT_HL2MP_GESTURE_RANGE_ATTACK_GRENADE,
    }
}