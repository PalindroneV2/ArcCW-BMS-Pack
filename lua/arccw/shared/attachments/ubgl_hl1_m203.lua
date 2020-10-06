att.PrintName = "MP5 M203"
att.Icon = Material("entities/acwatt_ubgl_m203.png")
att.Description = "Selectable Grenade Launcher equipped to the MP5. Double tap +ZOOM to equip/dequip."
att.Desc_Pros = {
    "+ Selectable grenade launcher",
    "+ No GL reloads",
}
att.Desc_Cons = {
}
att.AutoStats = true
att.Slot = "mp5gl"

att.SortOrder = 100

att.LHIK = false
att.LHIK_Animation = false

att.ModelOffset = Vector(0, 0, 0)

att.MountPositionOverride = 0

att.UBGL = true

att.UBGL_PrintName = "M203"
att.UBGL_Automatic = true
att.UBGL_MuzzleEffect = "muzzleflash_m79"
att.UBGL_ClipSize = 1
att.UBGL_Ammo = "smg1_grenade"
att.UBGL_RPM = 60
att.UBGL_Recoil = 2
att.UBGL_Capacity = 1

local function Ammo(wep)
    return wep.Owner:GetAmmoCount("smg1_grenade")
end

att.UBGL_Fire = function(wep, ubgl)
    if wep:Clip2() <= 0 then
        return wep:EmitSound("weapons/arccw/dryfire.wav", 100)
    end

    wep.Owner:RemoveAmmo(1, "smg1_grenade")

    wep:PlayAnimation("gl_fire")

    wep:FireRocket("arccw_gl_he", 30000)

    wep:SetClip2(wep:Clip2() - 1)

    wep:EmitSound(
        "weapons/glauncher.wav", 100,
        "weapons/glauncher2.wav"
    )

    wep:DoEffects()
end

att.UBGL_Reload = function(wep, ubgl)
    if wep:Clip2() >= 1 then return end

    if Ammo(wep) <= 0 then return end

    wep:SetNextSecondaryFire(CurTime() + 0.5)

    local reserve = Ammo(wep)

    reserve = reserve + wep:Clip2()

    local clip = 1

    local load = math.Clamp(clip, 0, reserve)

    wep.Owner:SetAmmo(reserve - load, "smg1_grenade")

    wep:SetClip2(load)
end