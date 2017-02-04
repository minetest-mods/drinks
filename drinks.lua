--Parse Table
for i in ipairs (drinks.drink_table) do
   local desc = drinks.drink_table[i][1]
   local craft = drinks.drink_table[i][2]
   local color = drinks.drink_table[i][3]
   local health = drinks.drink_table[i][4]
   health = health or 1
   -- The color of the drink is all done in code, so we don't need to have multiple images.

--Actual Node registration
minetest.register_craftitem('drinks:jcu_'..desc, {
   description = 'Cup of '..craft..' Juice',
   groups = {drink=1},
   juice_type = craft,
   inventory_image = 'drinks_glass_contents.png^[colorize:'..color..':200^drinks_drinking_glass.png',
   on_use = function(itemstack, user, pointed_thing)
      thirsty.drink(user, 4, 20)
      local eat_func = minetest.item_eat(health, 'vessels:drinking_glass')
      return eat_func(itemstack, user, pointed_thing)
   end,
})

minetest.register_craftitem('drinks:jbo_'..desc, {
   description = 'Bottle of '..craft..' Juice',
   groups = {drink=1},
   juice_type = craft,
   inventory_image = 'drinks_bottle_contents.png^[colorize:'..color..':200^drinks_glass_bottle.png',
   on_use = function(itemstack, user, pointed_thing)
      thirsty.drink(user, 8, 20)
      local eat_func = minetest.item_eat((health*2), 'vessels:glass_bottle')
      return eat_func(itemstack, user, pointed_thing)
   end,
})

minetest.register_craftitem('drinks:jbu_'..desc, {
   description = 'Bucket of '..craft..' Juice',
   juice_type = craft,
   inventory_image = 'bucket.png^(drinks_bucket_contents.png^[colorize:'..color..':200)',
   stack_max = 1,
})

end
