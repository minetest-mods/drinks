function drinks.liquid_storage_formspec(fullness, max)
	local formspec =  -- Used for the liquid storing barrels.
   'size[8,8]'..
      'label[0,0;Fill with the drink of your choice,]'..
      'label[0,.4;you can only add more of the same type of drink.]'..
      'label[4.5,1.2;Add liquid ->]'..
      'label[.75,1.75;This is '..((fullness/max)*100)..'% full]'..
      'label[4.5,2.25;Take liquid ->]'..
      'label[2,3.2;(This empties the container completely)]'..
      'button[0,3;2,1;purge;Purge]'..
      'list[current_name;src;6.5,1;1,1;]'..
      'list[current_name;dst;6.5,2;1,1;]'..
      'list[current_player;main;0,4;8,5;]'
   return formspec
end
