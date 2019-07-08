local xmutil = require("xmutil")

--Base Overrides

--Base "rail" placeholder
--Base "curved-rail" placeholder
--Base "train-stop"
--Base "rail-signal"
--Base "train-stop"
--Base "rail-signal"
--Base "rail-chain-signal"

--Base "cargo-wagon"
data.raw["cargo-wagon"]["cargo-wagon"].max_speed = 1
data.raw["cargo-wagon"]["cargo-wagon"].air_resistance = 0.005

--Base "fluid-wagon"
data.raw["fluid-wagon"]["fluid-wagon"].weight = 1000
data.raw["fluid-wagon"]["fluid-wagon"].max_speed = 1
data.raw["fluid-wagon"]["fluid-wagon"].air_resistance = 0.005

--Base "locomotive"
data.raw.locomotive["locomotive"].max_speed = 0.8
data.raw.locomotive["locomotive"].max_power = "1MW"
data.raw.locomotive["locomotive"].air_resistance = 0.01
data.raw.locomotive["locomotive"].burner.fuel_category = nil
data.raw.locomotive["locomotive"].burner.fuel_categories = {"crude", "chemical"}
data.raw.locomotive["locomotive"].burner.effectivity = 0.5
data.raw.locomotive["locomotive"].burner.fuel_inventory_size = 2


data:extend(
{

--Base "rail" placeholder
--Base "curved-rail" placeholder
--Base "train-stop" placeholder
--Base "rail-signal" placeholder
--Base "rail-chain-signal" placeholder

--Base "cargo-wagon" placeholder
--Heavy Cargo Wagon
xmutil.clone("cargo-wagon", "cargo-wagon",
	{
		{
			"__base__/graphics/entity/cargo-wagon/(h?r?-?)cargo-wagon-(%d)",
			"__xander-mod-th-graphics-0__/graphics/entity/logistic/cargo-wagon-2/%1%2",
		},
		{
			"__base__/graphics/entity/cargo-wagon/(h?r?-?)cargo-wagon-door-",
			"__xander-mod-th-graphics-0__/graphics/entity/logistic/cargo-wagon-2/%1door-",
		},
	},
	{
		name = "cargo-wagon-2",
		icon = "__xander-mod-th__/graphics/item/logistic/transport/cargo-wagon-2.png",
		inventory_size = 80,
		minable = {result = "cargo-wagon-2"},
		max_health = 1000,
		weight = 2000,
		max_speed = 2,
		braking_force = 6,
		air_resistance = 0.002,
	}
),
--Base "fluid-wagon" placeholder
--High-Pressure Fluid Wagon
xmutil.clone("fluid-wagon", "fluid-wagon",
	{
			{
				"__base__/graphics/entity/fluid-wagon/(h?r?-?)fluid-wagon-(%d)",
				"__xander-mod-th-graphics-0__/graphics/entity/logistic/fluid-wagon-2/%1%2",
			},
			{
				"__base__/graphics/entity/fluid-wagon/(h?r?-?)fluid-wagon-door-",
				"__xander-mod-th-graphics-0__/graphics/entity/logistic/fluid-wagon-2/%1door-",
			},
	},
	{
		name = "fluid-wagon-2",
		icon = "__xander-mod-th__/graphics/item/logistic/transport/fluid-wagon-2.png",
		minable = {result = "fluid-wagon-2"},
		max_health = 1000,
		capacity = 50000,
		weight = 2000,
		max_speed = 2,
		braking_force = 6,
		air_resistance = 0.002,
	}
),
--Base "locomotive" placeholder
--Diesel-Electric Locomotive
xmutil.clone("locomotive", "locomotive",
	{},
	{
		name = "locomotive-2",
		icon = "__xander-mod-th__/graphics/item/logistic/transport/locomotive-2.png",
		minable = {result = "locomotive-2"},
		max_health = 2000,
		weight = 4000,
		max_speed = 1.5,
		max_power = "3MW",
		reversing_power_modifier = 0.8,
		braking_force = 20,
		air_resistance = 0.005,
	}
),
--Turbine Locomotive
xmutil.clone("locomotive", "locomotive",
	{},
	{
		name = "locomotive-3",
		icon = "__xander-mod-th__/graphics/item/logistic/transport/locomotive-3.png",
		minable = {result = "locomotive-3"},
		max_health = 2000,
		weight = 4000,
		max_speed = 2,
		max_power = "5MW",
		reversing_power_modifier = 1,
		braking_force = 20,
		friction_force = 0.50,
		air_resistance = 0.002,
	}
),

}
)
