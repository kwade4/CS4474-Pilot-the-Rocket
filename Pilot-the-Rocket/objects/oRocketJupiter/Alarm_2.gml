/// @description Insert description here
// You can write your code in this editor

with(oHelpfulAstro){
	tid = instance_create_depth(x + 70.5, y - 126, -100, oWinBubble);
	tid.text = "You've successfully docked to the\nspace station. Angle yourself\nand press space to fire a rope\nand save your comrade!";
	tid.image_xscale = 0.47;
	tid.image_yscale = 0.57;
	other.msgTid = tid;
}