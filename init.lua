local EGG = "mcl_throwing:egg"
local DEBRIS = "mcl_nether:ancient_debris"
local NETHERITE_INGOT = "mcl_nether:netherite_ingot"
local NETHERITE_BLOCK = "mcl_nether:netheriteblock"

minetest.register_craft({
    output = "mobs_mc:zombie",
    recipe = {
        {EGG, "mcl_mobitems:rotten_flesh", EGG},
        {"mcl_mobitems:rotten_flesh", DEBRIS, "mcl_mobitems:rotten_flesh"},
        {EGG, "mcl_mobitems:rotten_flesh", EGG}
    }
})

minetest.register_craft({
    output = "mobs_mc:husk",
    recipe = {
        {EGG, "mcl_mobitems:rotten_flesh", EGG},
        {"group:sand", DEBRIS, "group:sand"},
        {EGG, "mcl_mobitems:rotten_flesh", EGG}
    }
})

local spawncraft_skeleton = minetest.settings:get_bool("spawncraft_skeleton") ~= false

if spawncraft_skeleton then
    minetest.register_craft({
        output = "mobs_mc:skeleton",
        recipe = {
            {EGG, "mcl_mobitems:bone", EGG},
            {"mcl_mobitems:bone", DEBRIS, "mcl_mobitems:bone"},
            {EGG, "mcl_mobitems:bone", EGG}
        }
    })
end

if minetest.settings:get_bool("spawncraft_stray") then
    minetest.register_craft({
        output = "mobs_mc:stray",
        recipe = {
            {EGG, "mcl_mobitems:bone", EGG},
            {"mcl_core:ice", DEBRIS, "mcl_core:ice"},
            {EGG, "mcl_mobitems:bone", EGG}
        }
    })
end

