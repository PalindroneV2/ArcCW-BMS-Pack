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

SWEP.ViewModel = "models/weapons/arccw/c_bms_frag.mdl"
SWEP.WorldModel = "models/weapons/arccw/w_bms_frag.mdl"
SWEP.ViewModelFOV = 60
SWEP.Primary.Ammo = "grenade"
SWEP.FuseTime = 5

SWEP.Throwing = true

SWEP.Primary.ClipSize = 1

SWEP.MuzzleVelocity = 1000
SWEP.ShootEntity = "arccw_bms_fragnade"

SWEP.ActivePos = Vector(0, 3, 2)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.CustomizePos = Vector(10, -4, -6)
SWEP.CustomizeAng = Angle(40, 40, 0)


SWEP.Animations = {
    ["draw"] = {
        Source = "draw_admire",
        Time = 0.5,
    },
    ["ready"] = {
        Source = "draw",
        Time = 0.5,
    },
    ["pre_throw"] = {
        Source = {"pinpullroll", "pinpullthrow"},
        Time = 0.5,
        SoundTable = {
            {s = "ArcCW_BMS.Frag_PinPull", t = 0}
        },
    },
    ["throw"] = {
        Source = "throw",
        Time = 0.5,
        TPAnim = ACT_HL2MP_GESTURE_RANGE_ATTACK_GRENADE,
        SoundTable = {
            {s = "ArcCW_BMS.Frag_PinPull", t = 0}
        },
    }
}