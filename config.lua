Config = {}

Config.FiveguardName = "your_fiveguard_name"

Config.Permissions = { -- Permissions that'll be set if player has TxAdmin Access
    AdminMenu = {
        "AdminMenuAccess",
        "AnnouncementAccess",
        "ESPAccess",
        "ClearEntitiesAccess",
        "BanAndKickAccess",
        "GotoAndBringAccess",
        "VehicleAccess",
        "MiscAccess",
        "LogsAccess",
        "PlayerSelectorAccess",
        "BanListAndUnbanAccess",
        "ModelChangerAccess"
    },
    Client = {
        "BypassSpectate",
        "BypassGodMode",
        "BypassInvisible",
        "BypassStealOutfit",
        "BypassInfStamina",
        "BypassNoclip",
        "BypassSuperJump",
        "BypassFreecam",
        "BypassSpeedHack",
        "BypassTeleport",
        "BypassNightVision",
        "BypassThermalVision",
        "BypassOCR",
        "BypassNuiDevtools",
        "BypassBlacklistedTextures",
        "BlipsBypass",
        "BypassCbScanner"
    },
    Weapon = {
        "BypassWeaponDmgModifier",
        "BypassInfAmmo",
        "BypassNoReload",
        "BypassRapidFire"
    },
    Vehicle = {
        "BypassVehicleFixAndGodMode",
        "BypassVehicleHandlingEdit",
        "BypassVehicleModifier",
        "BypassBulletproofTires"
    },
    Blacklist = { "BypassModelChanger", "BypassWeaponBlacklist" },
    Misc = {
        "FGCommands",
        "BypassVPN",
        "BypassExplosion",
        "BypassClearTasks",
        "BypassParticle"
    }
}
