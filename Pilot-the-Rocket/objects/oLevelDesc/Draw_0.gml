/// @description Insert description here
// You can write your code in this editor
draw_rectangle(x, y, x+300, y+200, true);
switch(global.levelDifficulty){
	case 0:
		draw_text_ext(x + 10, y + 10, easyText, 22, 290);
		break;
	case 1:
		draw_text_ext(x + 10, y + 10, mediumText, 22, 290);
		break;
	case 2:
		draw_text_ext(x + 10, y + 10, hardText, 22, 290);
		break;
}
