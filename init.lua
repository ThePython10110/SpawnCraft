--[[
    I apologize for how long this is... but honestly, there isn't much of a way to make it shorter.
    I considered making my own function, since most of the recipes were the same,
    but I realized I would need to pass enough information to it that it wasn't
    really worth it.
]]--

local EGG = "mcl_throwing:egg"
local DEBRIS = "mcl_nether:ancient_debris"

if minetest.settings:get_bool("spawncraft_spawner", true) then
    minetest.register_craft({
        output = "mcl_mobspawners:spawner",
        recipe = {
            {"xpanes:bar_flat", "xpanes:bar_flat", "xpanes:bar_flat"},
            {"xpanes:bar_flat", "mcl_nether:netheriteblock", "xpanes:bar_flat"},
            {"xpanes:bar_flat", "xpanes:bar_flat", "xpanes:bar_flat"}
        }
    })
end

if minetest.settings:get_bool("spawncraft_zombie", true) then
    minetest.register_craft({
        output = "mobs_mc:zombie",
        recipe = {
            {EGG, "mcl_mobitems:rotten_flesh", EGG},
            {"mcl_mobitems:rotten_flesh", DEBRIS, "mcl_mobitems:rotten_flesh"},
            {EGG, "mcl_mobitems:rotten_flesh", EGG}
        }
    })
    if minetest.settings:get_bool("spawncraft_husk", true) then
        minetest.register_craft({
            output = "mobs_mc:zombie",
            type = "shapeless",
            recipe = {"mobs_mc:husk", "mcl_mobitems:rotten_flesh"}
        })
    end
    if minetest.settings:get_bool("spawncraft_zombie_villager", true) then
        minetest.register_craft({
            output = "mobs_mc:zombie",
            type = "shapeless",
            recipe = {"mobs_mc:zombie_villager", "mcl_mobitems:rotten_flesh"}
        })
    end
end

if minetest.settings:get_bool("spawncraft_husk", true) then
    minetest.register_craft({
        output = "mobs_mc:husk",
        recipe = {
            {EGG, "mcl_mobitems:rotten_flesh", EGG},
            {"group:sand", DEBRIS, "group:sand"},
            {EGG, "mcl_mobitems:rotten_flesh", EGG}
        }
    })
    if minetest.settings:get_bool("spawncraft_zombie", true) then
        minetest.register_craft({
            output = "mobs_mc:husk",
            type = "shapeless",
            recipe = {"mobs_mc:zombie", "group:sand"}
        })
    end
    if minetest.settings:get_bool("spawncraft_zombie_villager", true) then
        minetest.register_craft({
            output = "mobs_mc:husk",
            type = "shapeless",
            recipe = {"mobs_mc:zombie_villager", "group_sand"}
        })
    end
end


if minetest.settings:get_bool("spawncraft_zombie_villager", true) then
    minetest.register_craft({
        output = "mobs_mc:zombie_villager",
        recipe = {
            {EGG, "mcl_mobitems:rotten_flesh", EGG},
            {"mcl_core:emeralds", DEBRIS, "mcl_core:emeralds"},
            {EGG, "mcl_mobitems:rotten_flesh", EGG}
        }
    })
    if minetest.settings:get_bool("spawncraft_zombie", true) then
        minetest.register_craft({
            output = "mobs_mc:zombie_villager",
            type = "shapeless",
            recipe = {"mobs_mc:zombie", "group:emerald"}
        })
        if minetest.settings:get_bool("spawncraft_villager", true) then
            minetest.register_craft({
                output = "mobs_mc:zombie_villager 2",
                type = "shapeless",
                recipe = {"mobs_mc:villager", "mobs_mc:zombie"}
            })
        end
    end
    if minetest.settings:get_bool("spawncraft_husk", true) then
        minetest.register_craft({
            output = "mobs_mc:zombie_villager",
            type = "shapeless",
            recipe = {"mobs_mc:husk", "mcl_core:emerald"}
        })
    end
end


if minetest.settings:get_bool("spawncraft_skeleton", true) then
    minetest.register_craft({
        output = "mobs_mc:skeleton",
        recipe = {
            {EGG, "mcl_bows:arrow", EGG},
            {"mcl_bows:arrow", DEBRIS, "mcl_bows:arrow"},
            {EGG, "mcl_bows:arrow", EGG}
        }
    })
    if minetest.settings:get_bool("spawncraft_stray", true) then
        minetest.register_craft({
            output = "mobs_mc:skeleton",
            type = "shapeless",
            recipe = {"mobs_mc:stray", "mcl_bows:arrow"}
        })
    end
    if minetest.settings:get_bool("spawncraft_wither_skeleton", true) then
        minetest.register_craft({
            output = "mobs_mc:skeleton",
            type = "shapeless",
            recipe = {"mobs_mc:wither_skeleton", "mcl_bows:arrow"}
        })
    end
end

if minetest.settings:get_bool("spawncraft_stray", true) then
    minetest.register_craft({
        output = "mobs_mc:stray",
        recipe = {
            {EGG, "mcl_bows:arrow", EGG},
            {"mcl_core:ice", DEBRIS, "mcl_core:ice"},
            {EGG, "mcl_bows:arrow", EGG}
        }
    })
    if minetest.settings:get_bool("spawncraft_skeleton", true) then
        minetest.register_craft({
            output = "mobs_mc:stray",
            type = "shapeless",
            recipe = {"mobs_mc:skeleton", "mcl_core:ice"}
        })
    end
end

if minetest.settings:get_bool("spawncraft_wither_skeleton", true) then
    minetest.register_craft({
        output = "mobs_mc:wither_skeleton",
        recipe = {
            {EGG, "mcl_heads:wither_skeleton", EGG},
            {"mcl_mobitems:bone", DEBRIS, "mcl_mobitems:bone"},
            {EGG, "mcl_mobitems:bone", EGG}
        }
    })
    if minetest.settings:get_bool("spawncraft_skeleton", true) then
        minetest.register_craft({
            output = "mobs_mc:wither_skeleton",
            type = "shapeless",
            recipe = {"mobs_mc:skeleton", "mcl_heads:wither_skeleton"}
        })
    end
    if minetest.settings:get_bool("spawncraft_stray", true) then
        minetest.register_craft({
            output = "mobs_mc:wither_skeleton",
            type = "shapeless",
            recipe = {"mobs_mc:stray", "mcl_heads:wither_skeleton"}
        })
    end
end

if minetest.settings:get_bool("spawncraft_villager", true) then
    minetest.register_craft({
        output = "mobs_mc:villager",
        recipe = {
            {EGG, "group:bed", EGG},
            {"mcl_core:emerald", DEBRIS, "mcl_core:emerald"},
            {EGG, "group:bed", EGG}
        }
    })
    if minetest.settings:get_bool("spawncraft_zombie_villager", true) then
        minetest.register_craft({
            output = "mobs_mc:villager",
            type = "shapeless",
            recipe = {"mobs_mc:zombie_villager", "mcl_core:emerald"}
        })
    end
end

if minetest.settings:get_bool("spawncraft_spider", true) then
    minetest.register_craft({
        output = "mobs_mc:spider",
        recipe = {
            {EGG, "mcl_mobitems:string", EGG},
            {"mcl_mobitems:string", DEBRIS, "mcl_mobitems:string"},
            {EGG, "mcl_mobitems:string", EGG}
        }
    })
end

if minetest.settings:get_bool("spawncraft_cave_spider", true) then
    minetest.register_craft({
        output = "mobs_mc:cave_spider",
        recipe = {
            {EGG, "mcl_mobitems:string", EGG},
            {"mcl_mobitems:spider_eye", DEBRIS, "mcl_mobitems:spider_eye"},
            {EGG, "mcl_mobitems:string", EGG}
        }
    })
end

if minetest.settings:get_bool("spawncraft_wolf", true) then
    minetest.register_craft({
        output = "mobs_mc:wolf",
        recipe = {
            {EGG, "mcl_mobitems:bone", EGG},
            {"mcl_mobitems:bone", DEBRIS, "mcl_mobitems:bone"},
            {EGG, "mcl_mobitems:bone", EGG}
        }
    })
end

if minetest.settings:get_bool("spawncraft_chicken", true) then
    minetest.register_craft({
        output = "mobs_mc:chicken",
        recipe = {
            {EGG, EGG, EGG},
            {EGG, DEBRIS, EGG},
            {EGG, EGG, EGG}
        }
    })
end

if minetest.settings:get_bool("spawncraft_enderman", true) then
    minetest.register_craft({
    output = "mobs_mc:enderman",
        recipe = {
            {EGG, "mcl_throwing:ender_pearl", EGG},
            {"mcl_throwing:ender_pearl", DEBRIS, "mcl_throwing:ender_pearl"},
            {EGG, "mcl_throwing:ender_pearl", EGG}
        }
    })
end

if minetest.settings:get_bool("spawncraft_blaze", true) then
    minetest.register_craft({
        output = "mobs_mc:blaze",
        recipe = {
            {EGG, "mcl_mobitems:blaze_rod", EGG},
            {"mcl_mobitems:blaze_rod", DEBRIS, "mcl_mobitems:blaze_rod"},
            {EGG, "mcl_mobitems:blaze_rod", EGG}
        }
    })
end

if minetest.settings:get_bool("spawncraft_slime", true) then
    minetest.register_craft({
        output = "mobs_mc:slime",
        recipe = {
            {EGG, "mcl_core:slimeblock", EGG},
            {"mcl_core:slimeblock", DEBRIS, "mcl_core:slimeblock"},
            {EGG, "mcl_core:slimeblock", EGG}
        }
    })
end

if minetest.settings:get_bool("spawncraft_creeper", true) then
    minetest.register_craft({
        output = "mobs_mc:creeper",
        recipe = {
            {EGG, "mcl_mobitems:gunpowder", EGG},
            {"mcl_mobitems:gunpowder", DEBRIS, "mcl_mobitems:gunpowder"},
            {EGG, "mcl_mobitems:gunpowder", EGG}
        }
    })
end

if minetest.settings:get_bool("spawncraft_wither", true) then
    minetest.register_craft({
        output = "mobs_mc:wither",
        recipe = {
            {"mcl_heads:wither_skeleton", "mcl_heads:wither_skeleton", "mcl_heads:wither_skeleton"},
            {"mcl_nether:soul_sand", "mcl_mobitems:nether_star", "mcl_nether:soul_sand"},
            {EGG, "mcl_nether:soul_sand", EGG}
        }
    })
end

--minetest.log(tostring(minetest.settings:get_bool("spawncraft_ender_dragon", true)))

if minetest.settings:get_bool("spawncraft_ender_dragon", true) then
    minetest.register_craft({
        output = "mobs_mc:enderdragon",
        recipe = {
            {EGG, "mcl_end_crystal:end_crystal", EGG},
            {"mcl_end_crystal:end_crystal", "mcl_armor:elytra", "mcl_end_crystal:end_crystal"},
            {EGG, "mcl_end_crystal:end_crystal", EGG}
        }
    })
end

if minetest.settings:get_bool("spawncraft_horse", true) then
    minetest.register_craft({
        output = "mobs_mc:horse",
        recipe = {
            {EGG, "mcl_mobitems:saddle", EGG},
            {"mcl_mobitems:saddle", DEBRIS, "mcl_mobitems:saddle"},
            {EGG, "mcl_mobitems:saddle", EGG}
        }
    })
    if minetest.settings:get_bool("spawncraft_mule", true) then
        minetest.register_craft({
            output = "mobs_mc:horse",
            type = "shapeless",
            recipe = {"mobs_mc:mule"}
        })
    end
end

if minetest.settings:get_bool("spawncraft_donkey", true) then
    minetest.register_craft({
        output = "mobs_mc:donkey",
        recipe = {
            {EGG, "mcl_chests:chest", EGG},
            {"mcl_mobitems:saddle", DEBRIS, "mcl_mobitems:saddle"},
            {EGG, "mcl_mobitems:saddle", EGG}
        }
    })
    if minetest.settings:get_bool("spawncraft_horse", true) then
        minetest.register_craft({
            output = "mobs_mc:donkey",
            type = "shapeless",
            recipe = {"mobs_mc:horse"}
        })
    end
end

if minetest.settings:get_bool("spawncraft_mule", true) then
    minetest.register_craft({
        output = "mobs_mc:mule",
        recipe = {
            {EGG, "mcl_mobitems:saddle", EGG},
            {"mcl_mobitems:saddle", DEBRIS, "mcl_mobitems:saddle"},
            {EGG, "mcl_chests:chest", EGG}
        }
    })
    if minetest.settings:get_bool("spawncraft_donkey", true) then
        minetest.register_craft({
            output = "mobs_mc:mule",
            type = "shapeless",
            recipe = {"mobs_mc:donkey"}
        })
        if minetest.settings:get_bool("spawncraft_horse", true) then
            minetest.register_craft({
                output = "mobs_mc:mule 2",
                type = "shapeless",
                recipe = {"mobs_mc:horse", "mobs_mc:donkey"}
            })
        end
    end
end

if minetest.settings:get_bool("spawncraft_bat", true) then
    minetest.register_craft({
        output = "mobs_mc:bat",
        recipe = {
            {EGG, "mcl_mobitems:leather", EGG},
            {"mcl_core:coal_lump", DEBRIS, "mcl_core:coal_lump"},
            {EGG, "mcl_mobitems:leather", EGG}
        }
    })
end

if minetest.settings:get_bool("spawncraft_cat", true) then
    minetest.register_craft({
        output = "mobs_mc:cat",
        recipe = {
            {EGG, "mcl_mobitems:milk", EGG},
            {"mcl_fishing:fish_raw", DEBRIS, "mcl_fishing:fish_raw"},
            {EGG, "mcl_mobitems:milk", EGG}
        }
    })
    minetest.register_craft({
        output = "mobs_mc:cat",
        recipe = {
            {EGG, "mcl_mobitems:milk", EGG},
            {"mcl_fishing:salmon_raw", DEBRIS, "mcl_fishing:salmon_raw"},
            {EGG, "mcl_mobitems:milk", EGG}
        }
    })
    if minetest.settings:get_bool("spawncraft_ocelot", true) then
        minetest.register_craft({
            output = "mobs_mc:cat",
            type = "shapeless",
            recipe = {"mobs_mc:ocelot"}
        })
    end
end

if minetest.settings:get_bool("spawncraft_ocelot", true) then
    minetest.register_craft({
        output = "mobs_mc:ocelot",
        recipe = {
            {EGG, "mcl_fishing:fish_raw", EGG},
            {"mcl_mobitems:milk", DEBRIS, "mcl_mobitems:milk"},
            {EGG, "mcl_fishing:fish_raw", EGG}
        }
    })
    minetest.register_craft({
        output = "mobs_mc:ocelot",
        recipe = {
            {EGG, "mcl_fishing:salmon_raw", EGG},
            {"mcl_mobitems:milk", DEBRIS, "mcl_mobitems:milk"},
            {EGG, "mcl_fishing:salmon_raw", EGG}
        }
    })
    if minetest.settings:get_bool("spawncraft_cat", true) then
        minetest.register_craft({
            output = "mobs_mc:ocelot",
            type = "shapeless",
            recipe = {"mobs_mc:cat"}
        })
    end
end

if minetest.settings:get_bool("spawncraft_cod", true) then
    minetest.register_craft({
        output = "mobs_mc:cod",
        recipe = {
            {EGG, "mcl_fishing:fish_raw", EGG},
            {"mcl_fishing:fish_raw", DEBRIS, "mcl_fishing:fish_raw"},
            {EGG, "mcl_fishing:fish_raw", EGG}
        }
    })
    minetest.register_craft({
        output = "mobs_mc:cod",
        recipe = {
            {EGG, "mcl_fishing:fish_cooked", EGG},
            {"mcl_fishing:fish_cooked", DEBRIS, "mcl_fishing:fish_cooked"},
            {EGG, "mcl_fishing:fish_cooked", EGG}
        }
    })
    minetest.register_craft({
        output = "mobs_mc:cod",
        recipe = {
            {EGG, "mcl_buckets:bucket_cod", EGG},
            {"mcl_buckets:bucket_cod", DEBRIS, "mcl_buckets:bucket_cod"},
            {EGG, "mcl_buckets:bucket_cod", EGG}
        },
        replacements = {
            {"mcl_buckets:bucket_cod", "mcl_buckets:bucket_empty"},
            {"mcl_buckets:bucket_cod", "mcl_buckets:bucket_empty"},
            {"mcl_buckets:bucket_cod", "mcl_buckets:bucket_empty"}
        }
    })
    if minetest.settings:get_bool("spawncraft_tropical_fish", true) then
        minetest.register_craft({
            output = "mobs_mc:cod",
            type = "shapeless",
            recipe = {"mobs_mc:tropical_fish"}
        })
    end
end

if minetest.settings:get_bool("spawncraft_salmon", true) then
    minetest.register_craft({
        output = "mobs_mc:salmon",
        recipe = {
            {EGG, "mcl_fishing:salmon_raw", EGG},
            {"mcl_fishing:salmon_raw", DEBRIS, "mcl_fishing:salmon_raw"},
            {EGG, "mcl_fishing:salmon_raw", EGG}
        }
    })
    minetest.register_craft({
        output = "mobs_mc:salmon",
        recipe = {
            {EGG, "mcl_fishing:salmon_cooked", EGG},
            {"mcl_fishing:salmon_cooked", DEBRIS, "mcl_fishing:salmon_cooked"},
            {EGG, "mcl_fishing:salmon_cooked", EGG}
        }
    })
    minetest.register_craft({
        output = "mobs_mc:salmon",
        recipe = {
            {EGG, "mcl_buckets:bucket_salmon", EGG},
            {"mcl_buckets:bucket_salmon", DEBRIS, "mcl_buckets:bucket_salmon"},
            {EGG, "mcl_buckets:bucket_salmon", EGG}
        },
        replacements = {
            {"mcl_buckets:bucket_salmon", "mcl_buckets:bucket_empty"},
            {"mcl_buckets:bucket_salmon", "mcl_buckets:bucket_empty"},
            {"mcl_buckets:bucket_salmon", "mcl_buckets:bucket_empty"}
        }
    })
    if minetest.settings:get_bool("spawncraft_cod", true) then
        minetest.register_craft({
            output = "mobs_mc:salmon",
            type = "shapeless",
            recipe = {"mobs_mc:cod"}
        })
    end
end

if minetest.settings:get_bool("spawncraft_tropical_fish", true) then
    minetest.register_craft({
        output = "mobs_mc:tropical_fish",
        recipe = {
            {EGG, "mcl_buckets:bucket_tropical_fish", EGG},
            {"mcl_buckets:bucket_tropical_fish", DEBRIS, "mcl_buckets:bucket_tropical_fish"},
            {EGG, "mcl_buckets:bucket_tropical_fish", EGG}
        },
        replacements = {
            {"mcl_buckets:bucket_tropical_fish", "mcl_buckets:bucket_empty"},
            {"mcl_buckets:bucket_tropical_fish", "mcl_buckets:bucket_empty"},
            {"mcl_buckets:bucket_tropical_fish", "mcl_buckets:bucket_empty"}
        }
    })
    if minetest.settings:get_bool("spawncraft_salmon", true) then
        minetest.register_craft({
            output = "mobs_mc:tropical_fish",
            type = "shapeless",
            recipe = {"mobs_mc:salmon"}
        })
    end
end

if minetest.settings:get_bool("spawncraft_axlotl", true) then
    minetest.register_craft({
        output = "mobs_mc:axlotl",
        recipe = {
            {EGG, "mcl_buckets:bucket_axlotl", EGG},
            {"mcl_buckets:bucket_axlotl", DEBRIS, "mcl_buckets:bucket_axlotl"},
            {EGG, "mcl_buckets:bucket_axlotl", EGG}
        },
        replacements = {
            {"mcl_buckets:bucket_axlotl", "mcl_buckets:bucket_empty"},
            {"mcl_buckets:bucket_axlotl", "mcl_buckets:bucket_empty"},
            {"mcl_buckets:bucket_axlotl", "mcl_buckets:bucket_empty"},
            {"mcl_buckets:bucket_axlotl", "mcl_buckets:bucket_empty"}
        }
    })
end

if minetest.settings:get_bool("spawncraft_dolphin", true) then
    minetest.register_craft({
        output = "mobs_mc:cod",
        recipe = {
            {EGG, "mcl_fishing:fish_raw", EGG},
            {"mcl_fishing:salmon_raw", DEBRIS, "mcl_fishing:salmon_raw"},
            {EGG, "mcl_fishing:fish_raw", EGG}
        }
    })
    minetest.register_craft({
        output = "mobs_mc:cod",
        recipe = {
            {EGG, "mcl_fishing:salmon_raw", EGG},
            {"mcl_fishing:fish_raw", DEBRIS, "mcl_fishing:fish_raw"},
            {EGG, "mcl_fishing:salmon_raw", EGG}
        }
    })
end

if minetest.settings:get_bool("spawncraft_rabbit", true) then
    minetest.register_craft({
        output = "mobs_mc:rabbit",
        recipe = {
            {EGG, "mcl_mobitems:rabbit", EGG},
            {"mcl_mobitems:rabbit", DEBRIS, "mcl_mobitems:rabbit"},
            {EGG, "mcl_mobitems:rabbit", EGG}
        }
    })
    if minetest.settings:get_bool("spawncraft_killer_bunny", true) then
        minetest.register_craft({
            output = "mobs_mc:rabbit",
            type = "shapeless",
            recipe = {
                "mobs_mc:killer_bunny"
            }
        })
    end
end

if minetest.settings:get_bool("spawncraft_killer_bunny", true) then
    minetest.register_craft({
        output = "mobs_mc:killer_bunny",
        recipe = {
            {EGG, "mcl_mobitems:rabbit", EGG},
            {"mesecons:redstone", DEBRIS, "mesecons:redstone"},
            {EGG, "mcl_mobitems:rabbit", EGG}
        }
    })
    if minetest.settings:get_bool("spawncraft_rabbit", true) then
        minetest.register_craft({
            output = "mobs_mc:killer_bunny",
            recipe = {
                {"mesecons:redstone", "mobs_mc:killer_bunny", "mesecons:redstone"}
            }
        })
    end
end