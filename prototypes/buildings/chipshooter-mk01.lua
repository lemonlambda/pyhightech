RECIPE {
    type = "recipe",
    name = "chipshooter-mk01",
    energy_required = 0.5,
    enabled = true,
    ingredients = {
        {"distilator", 2},
        {"iron-plate", 60},
        {"iron-gear-wheel", 100},
        {"inserter", 2},
        {"pcb1", 20}
    },
    results = {
        {"chipshooter-mk01", 1}
    }
}

ITEM {
    type = "item",
    name = "chipshooter-mk01",
    icon = "__pyhightech__/graphics/icons/chipshooter-mk01.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-hightech-buildings-mk01",
    order = "b",
    place_result = "chipshooter-mk01",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "chipshooter-mk01",
    icon = "__pyhightech__/graphics/icons/chipshooter-mk01.png",
	icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "chipshooter-mk01"},
    fast_replaceable_group = "chipshooter",
    max_health = 100,
    corpse = "big-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-2.2, -2.2}, {2.2, 2.2}},
    selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
    match_animation_speed_to_activity = false,
    module_specification = {
        module_slots = 1
    },
    allowed_effects = {"speed", "productivity"},
    crafting_categories = {"chip"},
    crafting_speed = 1,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 0.06,
    },
    energy_usage = "150kW",
    ingredient_count = 20,
    animation = {
        layers = {
            {
                filename = "__pyhightech__/graphics/entity/chipshooter/1.png",
                width = 64,
                height = 288,
                line_length = 32,
                frame_count = 150,
                animation_speed = 0.3,
                shift = util.by_pixel(-53, -64)
            },
            {
                filename = "__pyhightech__/graphics/entity/chipshooter/1-mask.png",
                width = 64,
                height = 288,
                line_length = 32,
                frame_count = 150,
                animation_speed = 0.3,
                shift = util.by_pixel(-53, -64),
                tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
            },
            {
                filename = "__pyhightech__/graphics/entity/chipshooter/2.png",
                width = 64,
                height = 288,
                line_length = 32,
                frame_count = 150,
                animation_speed = 0.3,
                shift = util.by_pixel(11, -64)
            },
            {
                filename = "__pyhightech__/graphics/entity/chipshooter/2-mask.png",
                width = 64,
                height = 288,
                line_length = 32,
                frame_count = 150,
                animation_speed = 0.3,
                shift = util.by_pixel(11, -64),
                tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
            },
            {
                filename = "__pyhightech__/graphics/entity/chipshooter/3.png",
                width = 36,
                height = 288,
                line_length = 32,
                frame_count = 150,
                animation_speed = 0.3,
                shift = util.by_pixel(61, -64)
            },
            {
                filename = "__pyhightech__/graphics/entity/chipshooter/3-mask.png",
                width = 36,
                height = 288,
                line_length = 32,
                frame_count = 150,
                animation_speed = 0.3,
                shift = util.by_pixel(61, -64),
                tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
            },
            {
                filename = "__pyhightech__/graphics/entity/chipshooter/shadow.png",
                width = 105,
                height = 161,
                line_length = 19,
                frame_count = 150,
                animation_speed = 0.3,
                draw_as_shadow = true,
                shift = util.by_pixel(72, 0)
            }
        }
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyhightech__/sounds/chipshooter.ogg", volume = 0.9},
        idle_sound = {filename = "__pyhightech__/sounds/chipshooter.ogg", volume = 0.5},
        apparent_volume = 2.5
    }
}
