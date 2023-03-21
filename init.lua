local EGG = "mcl_throwing:egg"
local DEBRIS = "mcl_nether:ancient_debris"
local NETHERITE_INGOT = "mcl_nether:netherite_ingot"
local NETHERITE_BLOCK = "mcl_nether:netheriteblock"

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
            recipe = {"mobs_mc:zombie", "mcl_mobitems:sand"}
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
            output = "mobs_mc:zombie_villager",
            type = "shapeless",
            recipe = {"mobs_mc:villager", "mobs_mc:zombie"}
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

if minetest.settings:get_bool("spawncraft_wither_skeleton", true) then
    minetest.register_craft({
        output = "mobs_mc:wither_skeleton",
        recipe = {
            {EGG, "mcl_heads:wither_skeleton", EGG},
            {"mcl_mobitems:bone", DEBRIS, "mcl_mobitems:bone"},
            {EGG, "mcl_mobitems:bone", EGG}
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