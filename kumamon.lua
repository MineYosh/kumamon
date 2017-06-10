if password == "kumamon_erotic" then
	
minetest.register_node("kumamon:kumamon_flower", {
	description = "Kumamon",
	drawtype = "plantlike",
	tiles = {"kumamon.png"},
	inventory_image = "kumamon.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	is_ground_content = false,
	groups = {fleshy = 3, dig_immediate = 3,
		leafdecay = 3, leafdecay_drop = 1},
	on_use = function(itemstack, user, pointed_thing)
		hp_change = -1
		replace_with_item = nil

		minetest.chat_send_player(user:get_player_name(), "You've eaten a Kumamon, you monster D:")

		if itemstack:take_item() ~= nil then
			user:set_hp(user:get_hp() + hp_change)
		end

		return itemstack
	end
})

else if password == nil then

	local who_is_erotic = "Kumamon"
	
	minetest.register_craftitem("kumamon:kuma_poster", {
	description = "KumaPoster",
	inventory_image = "kumaposter.png",
	

	on_use = minetest.show_formspec("kumamon:kuma_poster_max",
				"size[4,3]" ..
				"label[0,0;Hello, " .. who_is_erotic .. "]" ..
				"button_exit[1,2;2,1;exit;Save]")
			
})
	end
end	
