-- This code is for if Thirst isn't enabled.
--Parse Table
for i in ipairs (drinks.drink_table) do
   local desc = drinks.drink_table[i][1]
   local craft = drinks.drink_table[i][2]
   local color = drinks.drink_table[i][3]

--Actual Node registration
minetest.register_craftitem('drinks:jcu_'..desc, {
   description = 'Cup of '..craft..' Juice',
   groups = {drink=1},
   inventory_image = 'drinks_glass_contents.png^[colorize:'..color..':200^drinks_drinking_glass.png',
   on_use = function(itemstack, user, pointed_thing)
      local eat_func = minetest.item_eat(.5, 'vessels:drinking_glass')
      return eat_func(itemstack, user, pointed_thing)
   end,
})

minetest.register_craftitem('drinks:jbo_'..desc, {
   description = 'Bottle of '..craft..' Juice',
   groups = {drink=1},
   inventory_image = 'drinks_bottle_contents.png^[colorize:'..color..':200^drinks_glass_bottle.png',
   on_use = function(itemstack, user, pointed_thing)
      local eat_func = minetest.item_eat(.5, 'vessels:glass_bottle')
      return eat_func(itemstack, user, pointed_thing)
   end,
   print ('registered bottle of '..desc.. ' juice.')
})

minetest.register_craftitem('drinks:jbu_'..desc, {
   description = 'Bucket of '..craft..' Juice',
   inventory_image = 'bucket.png^(drinks_bucket_contents.png^[colorize:'..color..':200)',
   stack_max = 1,
})

end
