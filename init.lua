--[[
    I apologize for how long this is... but honestly, there isn't an easy way to make it shorter.
    I considered making my own function, since most of the recipes were similar,
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
            recipe = {"mobs_mc:villager_zombie", "mcl_mobitems:rotten_flesh"}
        })
    end
    if minetest.settings:get_bool("spawncraft_baby_zombie", true) then
        minetest.register_craft({
            output = "mobs_mc:zombie",
            type = "shapeless",
            recipe = {"mobs_mc:baby_zombie"}
        })
    end
end

if minetest.settings:get_bool("spawncraft_baby_zombie", true) then
    minetest.register_craft({
        output = "mobs_mc:baby_zombie",
        recipe = {
            {EGG, "", EGG},
            {"mcl_mobitems:rotten_flesh", DEBRIS, "mcl_mobitems:rotten_flesh"},
            {EGG, "mcl_mobitems:rotten_flesh", EGG}
        }
    })
    if minetest.settings:get_bool("spawncraft_baby_husk", true) then
        minetest.register_craft({
            output = "mobs_mc:baby_zombie",
            type = "shapeless",
            recipe = {"mobs_mc:baby_husk", "mcl_mobitems:rotten_flesh"}
        })
    end
    if minetest.settings:get_bool("spawncraft_zombie", true) then
        minetest.register_craft({
            output = "mobs_mc:baby_zombie",
            type = "shapeless",
            recipe = {"mobs_mc:zombie"}
        })
    else
        if minetest.settings:get_bool("spawncraft_zombie_villager", true) then
            minetest.register_craft({
                output = "mobs_mc:baby_zombie",
                type = "shapeless",
                recipe = {"mobs_mc:villager_zombie", "mcl_mobitems:rotten_flesh"}
            })
        end
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
            recipe = {"mobs_mc:villager_zombie", "group:sand"}
        })
    end
    if minetest.settings:get_bool("spawncraft_baby_husk", true) then
        minetest.register_craft({
            output = "mobs_mc:husk",
            type = "shapeless",
            recipe = {"mobs_mc:baby_husk"}
        })
    end
end

if minetest.settings:get_bool("spawncraft_baby_husk", true) then
    minetest.register_craft({
        output = "mobs_mc:baby_husk",
        recipe = {
            {EGG, "", EGG},
            {"group:sand", DEBRIS, "group:sand"},
            {EGG, "mcl_mobitems:rotten_flesh", EGG}
        }
    })
    if minetest.settings:get_bool("spawncraft_baby_zombie", true) then
        minetest.register_craft({
            output = "mobs_mc:baby_husk",
            type = "shapeless",
            recipe = {"mobs_mc:baby_zombie", "group:sand"}
        })
    end
    if minetest.settings:get_bool("spawncraft_husk", true) then
        minetest.register_craft({
            output = "mobs_mc:baby_husk",
            type = "shapeless",
            recipe = {"mobs_mc:husk"}
        })
    else
        if minetest.settings:get_bool("spawncraft_zombie_villager", true) then
            minetest.register_craft({
                output = "mobs_mc:baby_husk",
                type = "shapeless",
                recipe = {"mobs_mc:villager_zombie", "group:sand"}
            })
        end
    end
end


if minetest.settings:get_bool("spawncraft_zombie_villager", true) then
    minetest.register_craft({
        output = "mobs_mc:villager_zombie",
        recipe = {
            {EGG, "mcl_mobitems:rotten_flesh", EGG},
            {"mcl_core:emeralds", DEBRIS, "mcl_core:emeralds"},
            {EGG, "mcl_mobitems:rotten_flesh", EGG}
        }
    })
    if minetest.settings:get_bool("spawncraft_zombie", true) then
        minetest.register_craft({
            output = "mobs_mc:villager_zombie",
            type = "shapeless",
            recipe = {"mobs_mc:zombie", "group:emerald"}
        })
        if minetest.settings:get_bool("spawncraft_villager", true) then
            minetest.register_craft({
                output = "mobs_mc:villager_zombie 2",
                type = "shapeless",
                recipe = {"mobs_mc:villager", "mobs_mc:zombie"}
            })
        end
    end
    if minetest.settings:get_bool("spawncraft_husk", true) then
        minetest.register_craft({
            output = "mobs_mc:villager_zombie",
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
            recipe = {"mobs_mc:witherskeleton", "mcl_bows:arrow"}
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
        output = "mobs_mc:witherskeleton",
        recipe = {
            {EGG, "mcl_heads:witherskeleton", EGG},
            {"mcl_mobitems:bone", DEBRIS, "mcl_mobitems:bone"},
            {EGG, "mcl_mobitems:bone", EGG}
        }
    })
    if minetest.settings:get_bool("spawncraft_skeleton", true) then
        minetest.register_craft({
            output = "mobs_mc:witherskeleton",
            type = "shapeless",
            recipe = {"mobs_mc:skeleton", "mcl_heads:witherskeleton"}
        })
    end
    if minetest.settings:get_bool("spawncraft_stray", true) then
        minetest.register_craft({
            output = "mobs_mc:witherskeleton",
            type = "shapeless",
            recipe = {"mobs_mc:stray", "mcl_heads:witherskeleton"}
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
            recipe = {"mobs_mc:villager_zombie", "mcl_core:emerald"}
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
    minetest.register_craft({
        output = "mobs_mc:spider",
        type = "shapeless",
        recipe = {"mobs_mc:cave_spider"}
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
    minetest.register_craft({
        output = "mobs_mc:cave_spider",
        type = "shapeless",
        recipe = {"mobs_mc:spider"}
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
            {"mcl_heads:witherskeleton", "mcl_heads:witherskeleton", "mcl_heads:witherskeleton"},
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

if minetest.settings:get_bool("spawncraft_skeleton_horse", true) then
    minetest.register_craft({
        output = "mobs_mc:skeleton_horse",
        recipe = {
            {EGG, "mcl_mobitems:saddle", EGG},
            {"mcl_mobitems:bone", DEBRIS, "mcl_mobitems:bone"},
            {EGG, "mcl_mobitems:saddle", EGG}
        }
    })
    if minetest.settings:get_bool("spawncraft_skeleton", true) then
        minetest.register_craft({
            output = "mobs_mc:skeleton_horse",
            type = "shapeless",
            recipe = {"mobs_mc:skeleton", "mcl_mobitems:saddle"}
        })
        if minetest.settings:get_bool("spawncraft_horse", true) then
            minetest.register_craft({
                output = "mobs_mc:skeleton_horse 2",
                type = "shapeless",
                recipe = {"mobs_mc:skeleton", "mcl_mobitems:horse"}
            })
        end
    end
    if minetest.settings:get_bool("spawncraft_horse", true) then
        minetest.register_craft({
            output = "mobs_mc:skeleton_horse",
            type = "shapeless",
            recipe = {"mobs_mc:horse", "mcl_mobitems:bone"}
        })
    end
end

--False, since it's actually disabled in MineClone's code
if minetest.settings:get_bool("spawncraft_zombie_horse", false) then
    minetest.register_craft({
        output = "mobs_mc:zombie_horse",
        recipe = {
            {EGG, "mcl_mobitems:saddle", EGG},
            {"mcl_mobitems:rotten_flesh", DEBRIS, "mcl_mobitems:rotten_flesh"},
            {EGG, "mcl_mobitems:saddle", EGG}
        }
    })
    if minetest.settings:get_bool("spawncraft_zombie", true) then
        minetest.register_craft({
            output = "mobs_mc:zombie_horse",
            type = "shapeless",
            recipe = {"mobs_mc:zombie", "mcl_mobitems:saddle"}
        })
        if minetest.settings:get_bool("spawncraft_horse", true) then
            minetest.register_craft({
                output = "mobs_mc:zombie_horse 2",
                type = "shapeless",
                recipe = {"mobs_mc:zombie", "mcl_mobitems:horse"}
            })
        end
    end
    if minetest.settings:get_bool("spawncraft_horse", true) then
        minetest.register_craft({
            output = "mobs_mc:zombie_horse",
            type = "shapeless",
            recipe = {"mobs_mc:horse", "mcl_mobitems:rotten_flesh"}
        })
    end
end

if minetest.settings:get_bool("spawncraft_llama", true) then
    minetest.register_craft({
        output = "mobs_mc:llama",
        recipe = {
            {EGG, "group:carpet", EGG},
            {"mcl_mobitems:leather", DEBRIS, "mcl_mobitems:leather"},
            {EGG, "group:carpet", EGG}
        }
    })
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
            {EGG, "mcl_buckets:bucket_milk", EGG},
            {"mcl_fishing:fish_raw", DEBRIS, "mcl_fishing:fish_raw"},
            {EGG, "mcl_buckets:bucket_milk", EGG}
        },
        replacements = {
            {"mcl_buckets:bucket_milk", "mcl_buckets:bucket_empty"},
            {"mcl_buckets:bucket_milk", "mcl_buckets:bucket_empty"}
        }
    })
    minetest.register_craft({
        output = "mobs_mc:cat",
        recipe = {
            {EGG, "mcl_buckets:bucket_milk", EGG},
            {"mcl_fishing:salmon_raw", DEBRIS, "mcl_fishing:salmon_raw"},
            {EGG, "mcl_buckets:bucket_milk", EGG}
        },
        replacements = {
            {"mcl_buckets:bucket_milk", "mcl_buckets:bucket_empty"},
            {"mcl_buckets:bucket_milk", "mcl_buckets:bucket_empty"}
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
            {"mcl_buckets:bucket_milk", DEBRIS, "mcl_buckets:bucket_milk"},
            {EGG, "mcl_fishing:fish_raw", EGG}
        },
        replacements = {
            {"mcl_buckets:bucket_milk", "mcl_buckets:bucket_empty"},
            {"mcl_buckets:bucket_milk", "mcl_buckets:bucket_empty"}
        }
    })
    minetest.register_craft({
        output = "mobs_mc:ocelot",
        recipe = {
            {EGG, "mcl_fishing:salmon_raw", EGG},
            {"mcl_buckets:bucket_milk", DEBRIS, "mcl_buckets:bucket_milk"},
            {EGG, "mcl_fishing:salmon_raw", EGG}
        },
        replacements = {
            {"mcl_buckets:bucket_milk", "mcl_buckets:bucket_empty"},
            {"mcl_buckets:bucket_milk", "mcl_buckets:bucket_empty"}
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

if minetest.settings:get_bool("spawncraft_axolotl", true) then
    minetest.register_craft({
        output = "mobs_mc:axolotl",
        recipe = {
            {EGG, "mcl_buckets:bucket_axolotl", EGG},
            {"mcl_buckets:bucket_axolotl", DEBRIS, "mcl_buckets:bucket_axolotl"},
            {EGG, "mcl_buckets:bucket_axolotl", EGG}
        },
        replacements = {
            {"mcl_buckets:bucket_axolotl", "mcl_buckets:bucket_empty"},
            {"mcl_buckets:bucket_axolotl", "mcl_buckets:bucket_empty"},
            {"mcl_buckets:bucket_axolotl", "mcl_buckets:bucket_empty"},
            {"mcl_buckets:bucket_axolotl", "mcl_buckets:bucket_empty"}
        }
    })
end

if minetest.settings:get_bool("spawncraft_dolphin", true) then
    minetest.register_craft({
        output = "mobs_mc:dolphin",
        recipe = {
            {EGG, "mcl_fishing:fish_raw", EGG},
            {"mcl_fishing:salmon_raw", DEBRIS, "mcl_fishing:salmon_raw"},
            {EGG, "mcl_fishing:fish_raw", EGG}
        }
    })
    minetest.register_craft({
        output = "mobs_mc:dolphin",
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

if minetest.settings:get_bool("spawncraft_pig", true) then
    minetest.register_craft({
        output = "mobs_mc:pig",
        recipe = {
            {EGG, "mcl_mobitems:porkchop", EGG},
            {"mcl_mobitems:porkchop", DEBRIS, "mcl_mobitems:porkchop"},
            {EGG, "mcl_mobitems:porkchop", EGG}
        }
    })
    minetest.register_craft({
        output = "mobs_mc:pig",
        recipe = {
            {EGG, "mcl_mobitems:cooked_porkchop", EGG},
            {"mcl_mobitems:cooked_porkchop", DEBRIS, "mcl_mobitems:cooked_porkchop"},
            {EGG, "mcl_mobitems:cooked_porkchop", EGG}
        }
    })
end

if minetest.settings:get_bool("spawncraft_cow", true) then
    minetest.register_craft({
        output = "mobs_mc:cow",
        recipe = {
            {EGG, "mcl_mobitems:beef", EGG},
            {"mcl_mobitems:beef", DEBRIS, "mcl_mobitems:beef"},
            {EGG, "mcl_mobitems:beef", EGG}
        }
    })
    minetest.register_craft({
        output = "mobs_mc:cow",
        recipe = {
            {EGG, "mcl_mobitems:cooked_beef", EGG},
            {"mcl_mobitems:cooked_beef", DEBRIS, "mcl_mobitems:cooked_beef"},
            {EGG, "mcl_mobitems:cooked_beef", EGG}
        }
    })
end

if minetest.settings:get_bool("spawncraft_sheep", true) then
    minetest.register_craft({
        output = "mobs_mc:sheep",
        recipe = {
            {EGG, "mcl_mobitems:mutton", EGG},
            {"mcl_mobitems:mutton", DEBRIS, "mcl_mobitems:mutton"},
            {EGG, "mcl_mobitems:mutton", EGG}
        }
    })
    minetest.register_craft({
        output = "mobs_mc:sheep",
        recipe = {
            {EGG, "mcl_mobitems:cooked_mutton", EGG},
            {"mcl_mobitems:cooked_mutton", DEBRIS, "mcl_mobitems:cooked_mutton"},
            {EGG, "mcl_mobitems:cooked_mutton", EGG}
        }
    })
end

if minetest.settings:get_bool("spawncraft_parrot", true) then
    minetest.register_craft({
        output = "mobs_mc:parrot",
        recipe = {
            {EGG, "mcl_mobitems:feather", EGG},
            {"group:dye", DEBRIS, "group:dye"},
            {EGG, "mcl_mobitems:feather", EGG}
        }
    })
    if minetest.settings:get_bool("spawncraft_chicken", true) then
        minetest.register_craft({
            output = "mobs_mc:parrot",
            type = "shapeless",
            recipe = {"mobs_mc:chicken", "group:dye"}
        })
    end
end

if minetest.settings:get_bool("spawncraft_squid", true) then
    minetest.register_craft({
        output = "mobs_mc:squid",
        recipe = {
            {EGG, "mcl_mobitems:ink_sac", EGG},
            {"mcl_mobitems:ink_sac", DEBRIS, "mcl_mobitems:ink_sac"},
            {EGG, "mcl_mobitems:ink_sac", EGG}
        }
    })
    if minetest.settings:get_bool("spawncraft_glow_squid", true) then
        minetest.register_craft({
            output = "mobs_mc:squid",
            type = "shapeless",
            recipe = {"mobs_mc:glow_squid"}
        })
    end
end

if minetest.settings:get_bool("spawncraft_glow_squid", true) then
    minetest.register_craft({
        output = "mobs_mc:glow_squid",
        recipe = {
            {EGG, "mcl_mobitems:glow_ink_sac", EGG},
            {"mcl_mobitems:glow_ink_sac", DEBRIS, "mcl_mobitems:glow_ink_sac"},
            {EGG, "mcl_mobitems:glow_ink_sac", EGG}
        }
    })
    if minetest.settings:get_bool("spawncraft_squid", true) then
        minetest.register_craft({
            output = "mobs_mc:glow_squid",
            type = "shapeless",
            recipe = {"mobs_mc:squid", "mcl_mobitems:glow_ink_sac"}
        })
    end
end

if minetest.settings:get_bool("spawncraft_snow_golem", true) then
    minetest.register_craft({
        output = "mobs_mc:snow_golem",
        recipe = {
            {EGG, "mcl_farming:pumpkin_face_light", EGG},
            {"mcl_core:snowblock", DEBRIS, "mcl_core:snowblock"},
            {EGG, "mcl_core:snowblock", EGG}
        }
    })
end

--Kind of a weird recipe because I really wanted it to include all the iron blocks
if minetest.settings:get_bool("spawncraft_iron_golem", true) then
    minetest.register_craft({
        output = "mobs_mc:iron_golem",
        recipe = {
            {DEBRIS, "mcl_farming:pumpkin_face_light", EGG},
            {"mcl_core:ironblock", "mcl_core:ironblock", "mcl_core:ironblock"},
            {EGG, "mcl_core:ironblock", EGG}
        }
    })
end

if minetest.settings:get_bool("spawncraft_strider", true) then
    minetest.register_craft({
        output = "mobs_mc:strider",
        recipe = {
            {EGG, "mcl_mobitems:saddle", EGG},
            {"mcl_buckets:bucket_lava", DEBRIS, "mcl_buckets:bucket_lava"},
            {EGG, "mcl_buckets:bucket_lava", EGG}
        },
        replacements = {
            {"mcl_buckets:bucket_bucket_lava", "mcl_buckets:bucket_empty"},
            {"mcl_buckets:bucket_bucket_lava", "mcl_buckets:bucket_empty"},
            {"mcl_buckets:bucket_bucket_lava", "mcl_buckets:bucket_empty"}
        }
    })
    if minetest.settings:get_bool("spawncraft_baby_strider", true) then
        minetest.register_craft({
            output = "mobs_mc:strider",
            type = "shapeless",
            recipe = {"mobs_mc:baby_strider"}
        })
    end
end

if minetest.settings:get_bool("spawncraft_baby_strider", true) then
    minetest.register_craft({
        output = "mobs_mc:baby_strider",
        recipe = {
            {EGG, "mcl_mobitems:bucket_lava", EGG},
            {"mcl_buckets:bucket_lava", DEBRIS, "mcl_buckets:bucket_lava"},
            {EGG, "mcl_buckets:bucket_lava", EGG}
        },
        replacements = {
            {"mcl_buckets:bucket_bucket_lava", "mcl_buckets:bucket_empty"},
            {"mcl_buckets:bucket_bucket_lava", "mcl_buckets:bucket_empty"},
            {"mcl_buckets:bucket_bucket_lava", "mcl_buckets:bucket_empty"},
            {"mcl_buckets:bucket_bucket_lava", "mcl_buckets:bucket_empty"}
        }
    })
    if minetest.settings:get_bool("spawncraft_baby_strider", true) then
        minetest.register_craft({
            output = "mobs_mc:baby_strider",
            type = "shapeless",
            recipe = {"mobs_mc:strider"}
        })
    end
end

if minetest.settings:get_bool("spawncraft_polar_bear", true) then
    minetest.register_craft({
        output = "mobs_mc:polar_bear",
        recipe = {
            {EGG, "mcl_core:ice", EGG},
            {"mcl_core:snowblock", DEBRIS, "mcl_core:snowblock"},
            {EGG, "mcl_core:ice", EGG}
        }
    })
end

if minetest.settings:get_bool("spawncraft_guardian", true) then
    minetest.register_craft({
        output = "mobs_mc:guardian",
        recipe = {
            {EGG, "mcl_ocean:sea_lantern", EGG},
            {"mcl_ocean:sea_lantern", DEBRIS, "mcl_ocean:sea_lantern"},
            {EGG, "mcl_ocean:sea_lantern", EGG}
        }
    })
    if minetest.settings:get_bool("spawncraft_elder_guardian", true) then
        minetest.register_craft({
            output = "mobs_mc:guardian 4",
            type = "shapeless",
            recipe = {
                {"mobs_mc:guardian_elder"}
            }
        })
    end
end

if minetest.settings:get_bool("spawncraft_elder_guardian", true) then
    minetest.register_craft({
        output = "mobs_mc:guardian",
        recipe = {
            {EGG, "mcl_ocean:sea_lantern", EGG},
            {"mcl_ocean:sea_lantern", "mcl_nether:netherite_ingot", "mcl_ocean:sea_lantern"},
            {EGG, "mcl_ocean:sea_lantern", EGG}
        }
    })
    if minetest.settings:get_bool("spawncraft_guardian", true) then
        minetest.register_craft({
            output = "mobs_mc:guardian_elder",
            type = "shapeless",
            recipe = {
                {"mobs_mc:guardian_elder"}
            }
        })
    end
end

if minetest.settings:get_bool("spawncraft_magma_cube", true) then
    minetest.register_craft({
        output = "mobs_mc:magma_cube",
        recipe = {
            {EGG, "mcl_mobitems:magma_cream", EGG},
            {"mcl_mobitems:magma_cream", DEBRIS, "mcl_mobitems:magma_cream"},
            {EGG, "mcl_mobitems:magma_cream", EGG}
        }
    })
end

if minetest.settings:get_bool("spawncraft_ghast", true) then
    minetest.register_craft({
        output = "mobs_mc:ghast",
        recipe = {
            {EGG, "mcl_mobitems:ghast_tear", EGG},
            {"mcl_mobitems:ghast_tear", DEBRIS, "mcl_mobitems:ghast_tear"},
            {EGG, "mcl_mobitems:ghast_tear", EGG}
        }
    })
end

if minetest.settings:get_bool("spawncraft_shulker", true) then
    minetest.register_craft({
        output = "mobs_mc:shulker",
        recipe = {
            {EGG, "mcl_mobitems:shulker_shell", EGG},
            {"mcl_mobitems:shulker_shell", DEBRIS, "mcl_mobitems:shulker_shell"},
            {EGG, "mcl_mobitems:shulker_shell", EGG}
        }
    })
end

if minetest.settings:get_bool("spawncraft_zombie_pigman", true) then
    minetest.register_craft({
        output = "mobs_mc:pigman",
        recipe = {
            {EGG, "mcl_mobitems:porkchop", EGG},
            {"mcl_mobitems:rotten_flesh", DEBRIS, "mcl_mobitems:rotten_flesh"},
            {EGG, "mcl_mobitems:porkchop", EGG}
        }
    })
    if minetest.settings:get_bool("spawncraft_baby_zombie_pigman", true) then
        minetest.register_craft({
            output = "mobs_mc:pigman",
            type = "shapeless",
            recipe = {
                {"mobs_mc:baby_pigman"}
            }
        })
    end
    if minetest.settings:get_bool("spawncraft_pig") then
        minetest.register_craft({
            output = "mobs_mc:pigman",
            type = "shapeless",
            recipe = {"mobs_mc:pig", "mcl_mobitems:rotten_flesh"}
        })
    end
    if minetest.settings:get_bool("spawncraft_zombie") then
        minetest.register_craft({
            output = "mobs_mc:pigman",
            type = "shapeless",
            recipe = {"mobs_mc:zombie", "mcl_mobitems:porkchop"}
        })
        if minetest.settings:get_bool("spawncraft_pig") then
            minetest.register_craft({
                output = "mobs_mc:pigman",
                type = "shapeless",
                recipe = {"mobs_mc:pig", "mobs_mc:zombie"}
            })
        end
    end
end

if minetest.settings:get_bool("spawncraft_baby_zombie_pigman", true) then
    minetest.register_craft({
        output = "mobs_mc:baby_pigman",
        recipe = {
            {EGG, "mcl_mobitems:rotten_flesh", EGG},
            {"mcl_mobitems:porkchop", DEBRIS, "mcl_mobitems:porkchop"},
            {EGG, "mcl_mobitems:rotten_flesh", EGG}
        }
    })
    if minetest.settings:get_bool("spawncraft_zombie_pigman", true) then
        minetest.register_craft({
            output = "mobs_mc:baby_pigman",
            type = "shapeless",
            recipe = {
                {"mobs_mc:pigman"}
            }
        })
    else
        if minetest.settings:get_bool("spawncraft_pig") then
            minetest.register_craft({
                output = "mobs_mc:baby_pigman",
                type = "shapeless",
                recipe = {"mobs_mc:pig", "mcl_mobitems:rotten_flesh"}
            })
        end
        if minetest.settings:get_bool("spawncraft_zombie") then
            minetest.register_craft({
                output = "mobs_mc:pigman",
                type = "shapeless",
                recipe = {"mobs_mc:zombie", "mcl_mobitems:porkchop"}
            })
            if minetest.settings:get_bool("spawncraft_pig") then
                minetest.register_craft({
                    output = "mobs_mc:pigman",
                    type = "shapeless",
                    recipe = {"mobs_mc:pig", "mobs_mc:zombie"}
                })
            end
        end
    end
end

if minetest.settings:get_bool("spawncraft_piglin", true) then
    minetest.register_craft({
        output = "mobs_mc:piglin",
        recipe = {
            {EGG, "mcl_mobitems:porkchop", EGG},
            {"mcl_core:gold_ingot", DEBRIS, "mcl_core:gold_ingot"},
            {EGG, "mcl_mobitems:porkchop", EGG}
        }
    })
    if minetest.settings:get_bool("spawncraft_piglin_brute", true) then
        minetest.register_craft({
            output = "mobs_mc:piglin",
            type = "shapeless",
            recipe = {
                {"mobs_mc:piglin_brute"}
            }
        })
    end
    if minetest.settings:get_bool("spawncraft_pig", true) then
        minetest.register_craft({
            output = "mobs_mc:piglin",
            type = "shapeless",
            recipe = {
                {"mobs_mc:pig", "mcl_core:gold_ingot"}
            }
        })
    end
end

if minetest.settings:get_bool("spawncraft_piglin_brute", true) then
    minetest.register_craft({
        output = "mobs_mc:piglin_brute",
        recipe = {
            {EGG, "mcl_mobitems:porkchop", EGG},
            {"mcl_core:axe_gold", DEBRIS, "mcl_core:axe_gold"},
            {EGG, "mcl_mobitems:porkchop", EGG}
        }
    })
    if minetest.settings:get_bool("spawncraft_piglin", true) then
        minetest.register_craft({
            output = "mobs_mc:piglin_brute",
            type = "shapeless",
            recipe = {
                {"mobs_mc:piglin", "mcl_core:axe_gold"}
            }
        })
    end
    if minetest.settings:get_bool("spawncraft_pig", true) then
        minetest.register_craft({
            output = "mobs_mc:piglin_brute",
            type = "shapeless",
            recipe = {
                {"mobs_mc:pig", "mcl_core:axe_gold"}
            }
        })
    end
end

if minetest.settings:get_bool("spawncraft_hoglin", true) then
    minetest.register_craft({
        output = "mobs_mc:hoglin",
        recipe = {
            {EGG, "mcl_mobitems:porkchop", EGG},
            {"mcl_nether:nether_wart_block", DEBRIS, "mcl_nether:nether_wart_block"},
            {EGG, "mcl_mobitems:porkchop", EGG}
        }
    })
    if minetest.settings:get_bool("spawncraft_baby_hoglin", true) then
        minetest.register_craft({
            output = "mobs_mc:hoglin",
            type = "shapeless",
            recipe = {"mobs_mc:baby_hoglin"}
        })
    end
    if minetest.settings:get_bool("spawncraft_pig", true) then
        minetest.register_craft({
            output = "mobs_mc:hoglin",
            type = "shapeless",
            recipe = {"mobs_mc:pig", "mcl_nether:nether_wart_block"}
        })
    end
end

if minetest.settings:get_bool("spawncraft_baby_hoglin", true) then
    minetest.register_craft({
        output = "mobs_mc:baby_hoglin",
        recipe = {
            {EGG, "", EGG},
            {"mcl_nether:nether_wart_block", DEBRIS, "mcl_nether:nether_wart_block"},
            {EGG, "mcl_mobitems:porkchop", EGG}
        }
    })
    if minetest.settings:get_bool("spawncraft_hoglin", true) then
        minetest.register_craft({
            output = "mobs_mc:baby_hoglin",
            type = "shapeless",
            recipe = {"mobs_mc:hoglin"}
        })
    else
        if minetest.settings:get_bool("spawncraft_pig", true) then
            minetest.register_craft({
                output = "mobs_mc:baby_hoglin",
                type = "shapeless",
                recipe = {"mobs_mc:pig", "mcl_nether:nether_wart_block"}
            })
        end
    end
end

if minetest.settings:get_bool("spawncraft_silverfish", true) then
    minetest.register_craft({
        ouput = "mobs_mc:silverfish",
        recipe = {
            {EGG, "mcl_end:ender_eye", EGG},
            {"mcl_core:cobble", DEBRIS, "mcl_core:cobble"},
            {EGG, "mcl_end:ender_eye", EGG}
        }
    })
    if minetest.settings:get_bool("spawncraft_endermite", true) then
        minetest.register_craft({
            output = "mobs_mc:silverfish",
            type = "shapeless",
            recipe = {"mobs_mc:endermite", "mcl_core:cobble"}
        })
    end
end

if minetest.settings:get_bool("spawncraft_endermite", true) then
    minetest.register_craft({
        output = "mobs_mc:endermite",
        recipe = {
            {EGG, "", EGG},
            {"mcl_mobitems:ender_pearl", DEBRIS, "mcl_mobitems:ender_pearl"},
            {EGG, "", EGG}

        }
    })
    if minetest.settings:get_bool("spawncraft_silverfish", true) then
        minetest.register_craft({
            output = "mobs_mc:endermite",
            type = "shapeless",
            recipe = {"mobs_mc:silverfish", "mcl_mobitems:ender_pearl"}
        })
    end
end