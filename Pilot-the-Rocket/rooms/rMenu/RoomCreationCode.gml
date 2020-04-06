earth = instance_create_depth(200, 150, 0, oPlanet);
earth.sprite_index = s_earth;
earth.text = "Level 1:\nEarth";
earth.textYOffset = 140;
earth.levelIndex = 1;

mercury = instance_create_depth(100, 400, 0, oPlanet);
mercury.sprite_index = s_mercury;
mercury.text = "Level 2:\nMercury";
mercury.textYOffset = 110;
mercury.levelIndex = 2;

venus = instance_create_depth(400, 550, 0, oPlanet);
venus.sprite_index = s_venus;
venus.text = "Level 3:\nVenus";
venus.textYOffset = 135;
venus.levelIndex = 3;

mars = instance_create_depth(550, 300, 0, oPlanet);
mars.sprite_index = s_mars;
mars.text = "Level 4:\nMars";
mars.textYOffset = 125;
mars.levelIndex = 4;

jupiter = instance_create_depth(800, 550, 0, oPlanet);
jupiter.sprite_index = s_jupiter;
jupiter.text = "Level 5:\nJupiter";
jupiter.textYOffset = 170;
jupiter.levelIndex = 5;

saturn = instance_create_depth(820, 200, 0, oPlanet);
saturn.sprite_index = s_saturn;
saturn.text = "Level 6:\nSaturn";
saturn.textYOffset = 145;
saturn.levelIndex = 6;

uranus = instance_create_depth(1100, 550, 0, oPlanet);
uranus.sprite_index = s_uranus;
uranus.text = "Level 7:\nUranus";
uranus.textYOffset = 135;
uranus.levelIndex = 7;

neptune = instance_create_depth(1150, 200, 0, oPlanet);
neptune.sprite_index = s_neptune;
neptune.text = "Level 8:\nNeptune";
neptune.textYOffset = 130;
neptune.levelIndex = 8;

audio_play_sound(snd_1, 10, true);