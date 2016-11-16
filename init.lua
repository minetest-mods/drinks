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

if minetest.get_modpath('farming_plus') then
   drinks.juiceable['banana'] = true
   drinks.juiceable['lemon_item'] = true
   drinks.juiceable['melon'] = true
   drinks.juiceable['orange_item'] = true
   drinks.juiceable['peach_item'] = true
   drinks.juiceable['rhubarb_item'] = true
   drinks.juiceable['tomato_item'] = true
   drinks.juiceable['strawberry_item'] = true
   drinks.juiceable['raspberry_item'] = true
   table.insert(drinks.drink_table, {'banana', 'Banana', '#eced9f'})
   table.insert(drinks.drink_table, {'lemon_item', 'Lemon', '#feffaa'})
   table.insert(drinks.drink_table, {'melon', 'Melon', '#ef4646'})
   table.insert(drinks.drink_table, {'orange_item', 'Orange', '#ffc417'})
   table.insert(drinks.drink_table, {'peach_item', 'Peach', '#f2bc1e'})
   table.insert(drinks.drink_table, {'rhubarb_item', 'Rhubarb', '#fb8461'})
   table.insert(drinks.drink_table, {'tomato_item', 'Tomato', '#d03a0e'})
   table.insert(drinks.drink_table, {'strawberry_item', 'Strawberry', '#ff3636'})
   table.insert(drinks.drink_table, {'raspberry_item', 'Raspberry', '#C70039'})
end

if minetest.get_modpath('crops') then
   drinks.juiceable['melon'] = true
   drinks.juiceable['tomato'] = true
   table.insert(drinks.drink_table, {'melon', 'Melon', '#ef4646'})
   table.insert(drinks.drink_table, {'tomato', 'Tomato', '#d03a0e'})
end

if minetest.get_modpath('thirsty') then
   dofile(minetest.get_modpath('drinks')..'/drinks.lua')
else
   dofile(minetest.get_modpath('drinks')..'/drinks2.lua')
end
dofile(minetest.get_modpath('drinks')..'/drink_machines.lua')
dofile(minetest.get_modpath('drinks')..'/formspecs.lua')
