/// @description Insert description here
// You can write your code in this editor
/// @description HUD Object Add to every level
//draw_sprite_ext(sprite, index of image, x position in camera, y position in camera, size multiplier x,  size multiplier y, rotation(0), -1, transparency);
//Same every time -> HUD Base 
draw_sprite_ext(sHUD, 0, 680, 625, 0.60, 0.60, 0, -1, 1);
//**Change OPTION(2) for specified level -> Objective
draw_sprite_ext(sMissionObjHUD, 6, 685, 630, 0.75, 0.75, 0, -1, 1);
//**Add to rocket Object -> Succes/ Failure ->Check for instruct below
draw_sprite_ext(sHUDMissionStatus, global.status, 670, 630, 0.75, 0.75, 0, -1, global.statusVisible);
//**Add to rocket Object -> Fuel
if (global.levelDifficulty==2){
	draw_sprite_ext(sFuelGauge, global.fuel, 945, 660, 0.55, 0.55, 0, -1, 1);
	}
else{draw_sprite_ext(sFuelGauge, 6, 945, 660, 0.55, 0.55, 0, -1, 1);
	}
//**Add to rocket Object -> altitude
draw_text(290, 650,"MAX")
//**Add to rocket Object -> x velocity
draw_text(480, 650,global.x_velocity)
//**Add to rocket Object -> y velocity
draw_text(880, 650,global.y_velocity)



//***Just for reference, if adjusting fuel
//draw_text(300, 500,global.fuel)
//TODO:
//1)
//Add global.fuel=7; to create rocket
//Add global.fuel=global.fuel-0.025; to your step of rocket ->give or take
//Add end game or reset when global.fuel<=0;

//2)
//Add global.status=0; (success=1, failure=0), global.statusVisible=0; (makes it invisible)
//Add global.status=1; global.statusVisible=1; if reached end
//Add global.status=0; global.statusVisible=1; if reset and not successful

//3-5)
//Add global.altitude=0;, global.x_velocity=0;, global.y_velocity=0; to create rocket
//Add global.altitude=Altitude;, global.x_velocity=X_velocity;, global.y_velocityn=Y_velocity; to step
//Note: If Altitude is not aplicable set draw text for altitude to MAX