/// @description Insert description here
// You can write your code in this editor

draw_self();
draw_set_halign(fa_center);
draw_text(x, y - textYOffset, text);

if(global.levels[levelIndex]){
	if(position_meeting(mouse_x, mouse_y, id)){
		image_index = 2;
	} else {
		image_index = 1;	
	}
} else {
	image_index = 0;	
}
