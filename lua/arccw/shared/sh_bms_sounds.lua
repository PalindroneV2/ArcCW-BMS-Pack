--- Crowbar ----------------

sound.Add( {
    name = "ArcCW_BMS.Crowbar_Hit",
    channel = CHAN_WEAPON,
    volume = 1.0,
    level = 100,
    pitch = {95, 110},
    sound = {
        "weapons/arccw_bms/crowbar/melee_hit1.wav",
        "weapons/arccw_bms/crowbar/melee_hit2.wav",
        "weapons/arccw_bms/crowbar/melee_hit3.wav",
    }
} )
sound.Add( {
    name = "ArcCW_BMS.Crowbar_Miss",
    channel = CHAN_ITEM,
    volume = 1.0,
    level = 100,
    pitch = {95, 110},
    sound = {
        "weapons/arccw_bms/crowbar/melee_miss1.wav",
        "weapons/arccw_bms/crowbar/melee_miss2.wav",
        "weapons/arccw_bms/crowbar/melee_miss3.wav",
    }
} )

--- Glock 17 ----------------

sound.Add( {
    name = "ArcCW_BMS.Glock_Fire",
    channel = CHAN_WEAPON,
    volume = 1.0,
    level = 100,
    pitch = {95, 110},
    sound = {
        "weapons/arccw_bms/glock/glock_fire1.wav",
        "weapons/arccw_bms/glock/glock_fire2.wav",
        "weapons/arccw_bms/glock/glock_fire3.wav"
    }
} )
sound.Add( {
    name = "ArcCW_BMS.Glock_Fire_Sil",
    channel = CHAN_WEAPON,
    volume = 1.0,
    level = 100,
    pitch = {95, 110},
    sound = {
        "weapons/arccw_bms/glock/glock_silenced_fire1.wav",
        "weapons/arccw_bms/glock/glock_silenced_fire2.wav",
        "weapons/arccw_bms/glock/glock_silenced_fire3.wav"
    }
} )
sound.Add( {
    name = "ArcCW_BMS.Glock_ClipOut",
    channel = CHAN_ITEM,
    volume = 1.0,
    level = 100,
    pitch = {95, 110},
    sound = {"weapons/arccw_bms/glock/clip_out.wav"}
} )
sound.Add( {
    name = "ArcCW_BMS.Glock_ClipIn",
    channel = CHAN_ITEM,
    volume = 1.0,
    level = 100,
    pitch = {95, 110},
    sound = {"weapons/arccw_bms/glock/clip_in.wav"}
} )
sound.Add( {
    name = "ArcCW_BMS.Glock_Slide",
    channel = CHAN_ITEM,
    volume = 1.0,
    level = 100,
    pitch = {95, 110},
    sound = {"weapons/arccw_bms/glock/slide.wav"}
} )

--- Python ----------------

sound.Add( {
    name = "ArcCW_BMS.Python_Fire",
    channel = CHAN_WEAPON,
    volume = 1.0,
    level = 100,
    pitch = {95, 110},
    sound = {"weapons/arccw_bms/357/357_fire1.wav"}
} )
sound.Add( {
    name = "ArcCW_BMS.Python_WheelIn",
    channel = CHAN_ITEM,
    volume = 1.0,
    level = 100,
    pitch = {95, 110},
    sound = {"weapons/arccw_bms/357/wheel_in.wav"}
} )
sound.Add( {
    name = "ArcCW_BMS.Python_WheelOut",
    channel = CHAN_ITEM,
    volume = 1.0,
    level = 100,
    pitch = {95, 110},
    sound = {"weapons/arccw_bms/357/wheel_out.wav"}
} )
sound.Add( {
    name = "ArcCW_BMS.Python_WheelSpin",
    channel = CHAN_ITEM,
    volume = 1.0,
    level = 100,
    pitch = {95, 110},
    sound = {"weapons/arccw_bms/357/wheel_spin.wav"}
} )
sound.Add( {
    name = "ArcCW_BMS.Python_ShellIn",
    channel = CHAN_ITEM,
    volume = 1.0,
    level = 100,
    pitch = {95, 110},
    sound = {"weapons/arccw_bms/357/shell_in.wav"}
} )
sound.Add( {
    name = "ArcCW_BMS.Python_ShellOut",
    channel = CHAN_ITEM,
    volume = 1.0,
    level = 100,
    pitch = {95, 110},
    sound = {"weapons/arccw_bms/357/shell_out.wav"}
} )

--- Frag Grenade ----------------

sound.Add( {
    name = "ArcCW_BMS.Frag_PinPull",
    channel = CHAN_WEAPON,
    volume = 1.0,
    level = 100,
    pitch = {95, 110},
    sound = {"weapons/arccw_bms/grenade/pin_pull.wav"}
})
sound.Add( {
    name = "ArcCW_BMS.Frag_Throw",
    channel = CHAN_WEAPON,
    volume = 1.0,
    level = 100,
    pitch = {95, 110},
    sound = {"weapons/arccw_bms/grenade/throw.wav"}
})


----- HL1 -----
-- HL1_Crowbar --

sound.Add( {
    name = "ArcCW_HL1.Crowbar_Swing",
    channel = CHAN_WEAPON,
    volume = 1.0,
    level = 100,
    pitch = {95, 110},
    sound = {"weapons/hl1/cbar_miss1.wav"}
})
sound.Add( {
    name = "ArcCW_HL1.Crowbar_HitWorld",
    channel = CHAN_WEAPON,
    volume = 1.0,
    level = 100,
    pitch = {95, 110},
    sound = {"weapons/hl1/cbar_hit1.wav", "weapons/hl1/cbar_hit2.wav"}
})
sound.Add( {
    name = "ArcCW_HL1.Crowbar_Hit",
    channel = CHAN_WEAPON,
    volume = 1.0,
    level = 100,
    pitch = {95, 110},
    sound = {"weapons/hl1/cbar_hitbod1.wav", "weapons/hl1/cbar_hitbod2.wav", "weapons/hl1/cbar_hitbod3.wav"}
})

-- HL1_Glock --

sound.Add( {
    name = "ArcCW_HL1.Glock_Fire",
    channel = CHAN_WEAPON,
    volume = 1.0,
    level = 100,
    pitch = {95, 110},
    sound = {"weapons/hl1/pl_gun3.wav"}
})
sound.Add( {
    name = "ArcCW_HL1.Glock_Sil",
    channel = CHAN_WEAPON,
    volume = 1.0,
    level = 100,
    pitch = {95, 110},
    sound = {"weapons/hl1/pl_gun1.wav", "weapons/hl1/pl_gun2.wav"}
})
sound.Add( {
    name = "ArcCW_HL1.Glock_Clip1",
    channel = CHAN_ITEM,
    volume = 1.0,
    level = 100,
    pitch = {95, 110},
    sound = {"weapons/hl1/9mmclip1.wav"}
})
sound.Add( {
    name = "ArcCW_HL1.Glock_Clip2",
    channel = CHAN_ITEM,
    volume = 1.0,
    level = 100,
    pitch = {95, 110},
    sound = {"weapons/hl1/9mmclip2.wav"}
})

-- HL1_Python --

sound.Add( {
    name = "ArcCW_HL1.357_Shot",
    channel = CHAN_WEAPON,
    volume = 1.0,
    level = 100,
    pitch = {95, 110},
    sound = {"weapons/hl1/357_shot1.wav", "weapons/hl1/357_shot2.wav"}
})
sound.Add( {
    name = "ArcCW_HL1.357_Reload",
    channel = CHAN_ITEM,
    volume = 1.0,
    level = 100,
    pitch = {95, 110},
    sound = {"weapons/hl1/357_reload1.wav"}
})
sound.Add( {
    name = "ArcCW_HL1.357_Cock",
    channel = CHAN_WEAPON,
    volume = 1.0,
    level = 100,
    pitch = {95, 110},
    sound = {"weapons/hl1/357_cock1.wav"}
})

-- HL1_Frag --

sound.Add( {
    name = "ArcCW_HL1.Bounce",
    channel = CHAN_STATIC,
    volume = 1.0,
    level = 100,
    pitch = {95, 110},
    sound = {"weapons/hl1/grenade_hit1.wav", "weapons/hl1/grenade_hit2.wav", "weapons/hl1/grenade_hit3.wav"}
})
sound.Add( {
    name = "ArcCW_HL1.Explode",
    channel = CHAN_STATIC,
    volume = 1.0,
    level = 100,
    pitch = {95, 110},
    sound = {"^weapons/hl1/explode3.wav", "^weapons/hl1/explode4.wav", "^weapons/hl1/explode5.wav"}
})

-- HL1 Pipewrench --

sound.Add( {
    name = "ArcCW_HL1.Wrench_Swing",
    channel = CHAN_WEAPON,
    volume = 1.0,
    level = 100,
    pitch = {95, 110},
    sound = {
        "weapons/hl1/opfor/pwrench_miss1.wav",
        "weapons/hl1/opfor/pwrench_miss2.wav",
    }
})
sound.Add( {
    name = "ArcCW_HL1.Wrench_HitWorld",
    channel = CHAN_WEAPON,
    volume = 1.0,
    level = 100,
    pitch = {95, 110},
    sound = {
        "weapons/hl1/opfor/pwrench_hit1.wav",
        "weapons/hl1/opfor/pwrench_hit2.wav",
    }
})
sound.Add( {
    name = "ArcCW_HL1.Wrench_Hit",
    channel = CHAN_WEAPON,
    volume = 1.0,
    level = 100,
    pitch = {95, 110},
    sound = {
        "weapons/hl1/opfor/pwrench_hitbod1.wav",
        "weapons/hl1/opfor/pwrench_hitbod2.wav",
        "weapons/hl1/opfor/pwrench_hitbod3.wav",
    }
})

sound.Add( {
    name = "ArcCW_HL1.Wrench_BigSwing",
    channel = CHAN_WEAPON,
    volume = 1.0,
    level = 100,
    pitch = {95, 110},
    sound = {
        "weapons/hl1/opfor/pwrench_big_miss.wav",
    }
})
sound.Add( {
    name = "ArcCW_HL1.Wrench_BigHitWorld",
    channel = CHAN_WEAPON,
    volume = 1.0,
    level = 100,
    pitch = {95, 110},
    sound = {
        "weapons/hl1/opfor/pwrench_big_hit1.wav",
        "weapons/hl1/opfor/pwrench_big_hit2.wav",
    }
})
sound.Add( {
    name = "ArcCW_HL1.Wrench_BigHit",
    channel = CHAN_WEAPON,
    volume = 1.0,
    level = 100,
    pitch = {95, 110},
    sound = {
        "weapons/hl1/opfor/pwrench_big_hitbod1.wav",
        "weapons/hl1/opfor/pwrench_big_hitbod2.wav",
    }
})