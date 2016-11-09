drinks = {
drink_table = {},
juiceable = {},
}


-- Honestly not needed for default, but used as an example to add support to other mods.
-- Basically to use this all you need to do is add the name of the fruit to make juiceable (see line 14 for example)
-- Add the new fruit to a table like I've done in line 16.
-- The table should follow this scheme: internal name, Displayed name, colorize code.
-- Check out the drinks.lua file for more info how how the colorize code is used.

if minetest.get_modpath('default') then
   drinks.juiceable['apple'] = true -- Name of fruit to make juiceable.
   drinks.juiceable['cactus'] = true
   table.insert(drinks.drink_table, {'apple', 'Apple', '#ecff56'})
   table.insert(drinks.drink_table, {'cactus', 'Cactus', '#96F97B'})
end

if minetest.get_modpath('bushes_classic') then
   drinks.juiceable['blackberry'] = true
   drinks.juiceable['blueberry'] = true
   drinks.juiceable['gooseberry'] = true
   drinks.juiceable['raspberry'] = true
   drinks.juiceable['strawberry'] = true
   table.insert(drinks.drink_table, {'blackberry', 'Blackberry', '#581845'})
   table.insert(drinks.drink_table, {'blueberry', 'Blueberry', '#521dcb'})
   table.insert(drinks.drink_table, {'gooseberry', 'Gooseberry', '#9cf57c'})
   table.insert(drinks.drink_table, {'raspberry', 'Raspberry', '#C70039'})
   table.insert(drinks.drink_table, {'strawberry', 'Strawberry', '#ff3636'})
end

if minetest.get_modpath('thirsty') then
   dofile(minetest.get_modpath('drinks')..'/drinks.lua')
else
   dofile(minetest.get_modpath('drinks')..'/drinks2.lua')
end
dofile(minetest.get_modpath('drinks')..'/drink_machines.lua')
dofile(minetest.get_modpath('drinks')..'/formspecs.lua')
