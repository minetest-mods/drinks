-- This code is for if Thirst isn't enabled.
--Parse Table
for i in ipairs (drinks.drink_table) do
   local desc = drinks.drink_table[i][1]
   local craft = drinks.drink_table[i][2]
   local color = drinks.drink_table[i][3]
   local health = drinks.drink_table[i][4]
   health = health or 1

--Actual Node registration
drinks.register_item( 'drinks:jcu_'..desc, 'vessels:drinking_glass', {
   description = 'Cup of '..craft..' Juice',
   juice_type = craft,
   inventory_image = 'drinks_glass_contents.png^[colorize:'..color..':200^drinks_drinking_glass.png',
   on_use = function(itemstack, user, pointed_thing)
      local eat_func = minetest.item_eat(health, 'vessels:drinking_glass')
      return eat_func(itemstack, user, pointed_thing)
   end,
})

drinks.register_item( 'drinks:jbo_'..desc, 'vessels:glass_bottle', {
   description = 'Bottle of '..craft..' Juice',
   groups = {drink=1},
   juice_type = craft,
   inventory_image = 'drinks_bottle_contents.png^[colorize:'..color..':200^drinks_glass_bottle.png',
   on_use = function(itemstack, user, pointed_thing)
      local eat_func = minetest.item_eat((health*2), 'vessels:glass_bottle')
      return eat_func(itemstack, user, pointed_thing)
   end,
})

drinks.register_item( 'drinks:jsb_'..desc, 'vessels:steel_bottle', {
   description = 'Heavy Steel Bottle ('..craft..' Juice)',
   groups = {drink=1},
   juice_type = craft,
   inventory_image = 'vessels_steel_bottle.png',
   on_use = function(itemstack, user, pointed_thing)
      local eat_func = minetest.item_eat((health*2), 'vessels:steel_bottle')
      return eat_func(itemstack, user, pointed_thing)
   end,
})

drinks.register_item('drinks:jbu_'..desc, 'bucket:bucket_empty',{
   description = 'Bucket of '..craft..' Juice',
   groups = {drink=1},
   juice_type = craft,
   inventory_image = 'bucket.png^(drinks_bucket_contents.png^[colorize:'..color..':200)',
   stack_max = 1,
})

end
