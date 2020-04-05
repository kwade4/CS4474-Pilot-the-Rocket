if(!collision) {
	movespv = 1;
	if(fuel_amount > 0){
		if(global.currentLevel==2&& (keyboard_check(vk_right) || keyboard_check(vk_left) 
										|| keyboard_check(vk_up) || keyboard_check(vk_down))) {
			fuel_amount -= 0.5; 
		}
	}
	if(keyboard_check(vk_left)){
		x -= movespv;
	}
	if(keyboard_check(vk_right)){
		x += movesph;
	}
	if(keyboard_check(vk_up)){
		y-= movespv;
	}
}
