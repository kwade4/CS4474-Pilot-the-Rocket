/// @description Insert description here
// You can write your code in this editor

draw_self();
draw_set_color(c_black);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
if (global.currentLevel == 2 or global.currentLevel == 4 or global.currentLevel == 5 or global.currentLevel == 7) {
	draw_set_font(scaledFont);
} else {
	draw_set_font(-1);	
}
draw_text(x, y - 25, text);
draw_set_color(c_white);
draw_set_font(-1);
