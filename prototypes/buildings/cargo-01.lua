RECIPE {
    type = "recipe",
    name = "cargo-01",
    energy_required = 10,
    category = "crafting-with-fluid",
    enabled = false,
    ingredients = {
        {"iron-plate", 10},
        {"iron-gear-wheel", 10},
        {"chromium", 2},
        {"advanced-circuit", 10},
        {"cr-01", 1},
        {type = "fluid", name = "lubricant", amount = 300},
    },
    results = {
        {"cargo-01", 1}
    }
}:add_ingredient({type = "item", name = "rubber", amount = 10}):replace_ingredient("iron-plate", "brass-alloy"):replace_ingredient("iron-gear-wheel", "steel-bearing"):add_unlock("basic-electronics")

ITEM {
    type = "item",
    name = "cargo-01",
    icon = "__pyhightech__/graphics/icons/cargo-01.png",
    icon_size = 32,
    flags = {"goes-to-quickbar"},
    subgroup = "py-hightech-items",
    order = "b",
    place_result = "cargo-01",
    stack_size = 10
}

ENTITY {
    type = "logistic-robot",
    name = "cargo-01",
    icon = "__pyhightech__/graphics/icons/cargo-01.png",
    icon_size = 32,
    flags = {"placeable-player", "player-creation", "placeable-off-grid", "not-on-map"},
    minable = {hardness = 0.1, mining_time = 0.1, result = "cargo-01"},
    resistances = { { type = "fire", percent = 85 } },
    max_health = 100,
    collision_box = {{0, 0}, {0, 0}},
    selection_box = {{-0.5, -1.5}, {0.5, -0.5}},
    max_payload_size = 3,
    speed = 0.02,
    transfer_distance = 0.5,
    max_energy = "1.5MJ",
    energy_per_tick = "0.05kJ",
    speed_multiplier_when_out_of_energy = 0.2,
    energy_per_move = "5kJ",
    min_to_charge = 0.2,
    max_to_charge = 0.95,
    idle =
    {
      filename = "__pyhightech__/graphics/entity/cargo-01/idle.png",
      priority = "high",
      line_length = 16,
      width = 64,
      height = 64,
      frame_count = 1,
      shift = util.by_pixel(0,0),
      direction_count = 16,
      --y = 42,
      hr_version = {
        filename = "__pyhightech__/graphics/entity/cargo-01/hr-idle.png",
        priority = "high",
        line_length = 16,
        width = 128,
        height = 128,
        frame_count = 1,
        shift = util.by_pixel(0, 0),
        direction_count = 16,
        --y = 84,
        scale = 0.5
      }
    },
    idle_with_cargo =
    {
      filename = "__pyhightech__/graphics/entity/cargo-01/idle-cargo.png",
      priority = "high",
      line_length = 16,
      width = 64,
      height = 64,
      frame_count = 1,
      shift = util.by_pixel(0,0),
      direction_count = 16,
      hr_version = {
        filename = "__pyhightech__/graphics/entity/cargo-01/hr-idle-cargo.png",
        priority = "high",
        line_length = 16,
        width = 128,
        height = 128,
        frame_count = 1,
        shift = util.by_pixel(0,0),
        direction_count = 16,
        scale = 0.5
      }
    },
    in_motion =
    {
      filename = "__pyhightech__/graphics/entity/cargo-01/run.png",
      priority = "high",
      line_length = 16,
      width = 64,
      height = 64,
      frame_count = 1,
      shift = util.by_pixel(0,0),
      direction_count = 16,
      hr_version = {
        filename = "__pyhightech__/graphics/entity/cargo-01/hr-run.png",
        priority = "high",
        line_length = 16,
        width = 128,
        height = 128,
        frame_count = 1,
        shift = util.by_pixel(0,0),
        direction_count = 16,
        scale = 0.5
      }
    },
    in_motion_with_cargo =
    {
      filename = "__pyhightech__/graphics/entity/cargo-01/run-cargo.png",
      priority = "high",
      line_length = 16,
      width = 64,
      height = 64,
      frame_count = 1,
      shift = util.by_pixel(0,0),
      direction_count = 16,
      hr_version = {
        filename = "__pyhightech__/graphics/entity/cargo-01/hr-run-cargo.png",
        priority = "high",
        line_length = 16,
        width = 128,
        height = 128,
        frame_count = 1,
        shift = util.by_pixel(0,0),
        direction_count = 16,
        scale = 0.5
      }
    },
    shadow_idle =
    {
      filename = "__pyhightech__/graphics/entity/cargo-01/shadow.png",
      priority = "high",
      line_length = 16,
      width = 64,
      height = 48,
      frame_count = 1,
      shift = util.by_pixel(33.5, 18.75),
      draw_as_shadow = true,
      direction_count = 16,
      hr_version = {
        filename = "__pyhightech__/graphics/entity/cargo-01/hr-shadow.png",
        priority = "high",
        line_length = 16,
        width = 128,
        height = 96,
        frame_count = 1,
        shift = util.by_pixel(33.5, 18.75),
        draw_as_shadow = true,
        direction_count = 16,
        scale = 0.5
      }
    },
    shadow_idle_with_cargo =
    {
      filename = "__pyhightech__/graphics/entity/cargo-01/shadow-cargo.png",
      priority = "high",
      line_length = 16,
      width = 64,
      height = 48,
      frame_count = 1,
      shift = util.by_pixel(33.5, 18.75),
      draw_as_shadow = true,
      direction_count = 16,
      hr_version = {
        filename = "__pyhightech__/graphics/entity/cargo-01/hr-shadow-cargo.png",
        priority = "high",
        line_length = 16,
        width = 128,
        height = 96,
        frame_count = 1,
        shift = util.by_pixel(33.5, 18.75),
        draw_as_shadow = true,
        direction_count = 16,
        scale = 0.5
      }
    },
    shadow_in_motion =
    {
        filename = "__pyhightech__/graphics/entity/cargo-01/shadow.png",
        priority = "high",
        line_length = 16,
        width = 64,
        height = 48,
        frame_count = 1,
        shift = util.by_pixel(33.5, 18.75),
        draw_as_shadow = true,
        direction_count = 16,
        hr_version = {
          filename = "__pyhightech__/graphics/entity/cargo-01/hr-shadow.png",
          priority = "high",
          line_length = 16,
          width = 128,
          height = 96,
          frame_count = 1,
          shift = util.by_pixel(33.5, 18.75),
          draw_as_shadow = true,
          direction_count = 16,
          scale = 0.5
        }
    },
    shadow_in_motion_with_cargo =
    {
        filename = "__pyhightech__/graphics/entity/cargo-01/shadow-cargo.png",
        priority = "high",
        line_length = 16,
        width = 64,
        height = 48,
        frame_count = 1,
        shift = util.by_pixel(33.5, 18.75),
        draw_as_shadow = true,
        direction_count = 16,
        hr_version = {
          filename = "__pyhightech__/graphics/entity/cargo-01/hr-shadow-cargo.png",
          priority = "high",
          line_length = 16,
          width = 128,
          height = 96,
          frame_count = 1,
          shift = util.by_pixel(33.5, 18.75),
          draw_as_shadow = true,
          direction_count = 16,
          scale = 0.5
        }
    },
    working_sound = flying_robot_sounds(),
    cargo_centered = {0.0, 0.2},
  }