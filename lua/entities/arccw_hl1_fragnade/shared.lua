ENT.Type = "anim"
ENT.Base = "base_entity"
ENT.PrintName = "Mk 2 Frag Grenade"
ENT.Author = ""
ENT.Information = ""
ENT.Spawnable = false
ENT.AdminSpawnable = false

ENT.Model = "models/hl1/p_hl1_frag.mdl"
ENT.FuseTime = 5
ENT.ArmTime = 0
ENT.ImpactFuse = false

AddCSLuaFile()

function ENT:Initialize()
    if SERVER then
        self:SetModel( self.Model )
        self:SetMoveType( MOVETYPE_VPHYSICS )
        self:SetSolid( SOLID_VPHYSICS )
        self:PhysicsInit( SOLID_VPHYSICS )
        self:DrawShadow( true )

        local phys = self:GetPhysicsObject()
        if phys:IsValid() then
            phys:Wake()
            phys:SetBuoyancyRatio(0)
        end

        self.SpawnTime = CurTime()

        if self.FuseTime <= 0 then
            self:Detonate()
        end

        timer.Simple(0.1, function()
            if !IsValid(self) then return end
            self:SetCollisionGroup(COLLISION_GROUP_PROJECTILE)
        end)
    end
end

function ENT:PhysicsCollide(data, physobj)
    if SERVER then
        if data.Speed > 75 then
            self:EmitSound(Sound("ArcCW_HL1.Bounce"))
        elseif data.Speed > 25 then
            self:EmitSound(Sound("ArcCW_HL1.Bounce"))
        end

        if (CurTime() - self.SpawnTime >= self.ArmTime) and self.ImpactFuse then
            self:Detonate()
        end
    end
end

function ENT:Think()
    if SERVER and CurTime() - self.SpawnTime >= self.FuseTime then
        self:Detonate()
    end
end

function ENT:Detonate()
    if SERVER then
        if !self:IsValid() then return end
        local effectdata = EffectData()
            effectdata:SetOrigin( self:GetPos() )

        if self:WaterLevel() >= 1 then
            util.Effect("WaterSurfaceExplosion", effectdata)
            self:EmitSound("weapons/underwater_explode3.wav", 120, 100, 1, CHAN_AUTO)
        else
            util.Effect("Explosion", effectdata)
            self:EmitSound("ArcCW_HL1.Explode", 125, 100, 1, CHAN_AUTO)
        end

        local attacker = self

        if self.Owner:IsValid() then
            attacker = self.Owner
        end
        util.BlastDamage(self, attacker, self:GetPos(), 400, 150)

        self:Remove()

    end
end

function ENT:Draw()
    if CLIENT then
        self:DrawModel()
    end
end