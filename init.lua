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
            recipe = {
                {"mobs_mc:husk", "mcl_mobitems:rotten_flesh"}
            }
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
            recipe = {
                {"mobs_mc:zombie", "mcl_mobitems:sand"}
            }
        })
    end
end


if minetest.settings:get_bool("spawncraft_skeleton", true) then
    minetest.register_craft({
        output = "mobs_mc:skeleton",
        recipe = {
            {EGG, "mcl_mobitems:bone", EGG},
            {"mcl_mobitems:bone", DEBRIS, "mcl_mobitems:bone"},
            {EGG, "mcl_mobitems:bone", EGG}
        }
    })
    if minetest.settings:get_bool("spawncraft_stray", true) then
        minetest.register_craft({
            output = "mobs_mc:skeleton",
            type = "shapeless",
            recipe = {
                {"mobs_mc:stray", "mcl_mobitems:bone"}
            }
        })
    end
end

if minetest.settings:get_bool("spawncraft_stray", true) then
    minetest.register_craft({
        output = "mobs_mc:stray",
        recipe = {
            {EGG, "mcl_mobitems:bone", EGG},
            {"mcl_core:ice", DEBRIS, "mcl_core:ice"},
            {EGG, "mcl_mobitems:bone", EGG}
        }
    })
    if minetest.settings:get_bool("spawncraft_skeleton", true) then
        minetest.register_craft({
            output = "mobs_mc:stray",
            type = "shapeless",
            recipe = {
                {"mobs_mc:skeleton", "mcl_core:ice"}
            }
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
            recipe = {
                {"mobs_mc:villager", "mobs_mc:zombie"}
            }
        })
    end
end