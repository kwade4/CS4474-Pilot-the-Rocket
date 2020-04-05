global.levelDifficulty = 0;
global.currentLevel = 0;
global.paused = false;

// levels: 0 = available, 1 = locked
global.levels[0] = 0;	//placeholder
global.levels[1] = 1;	//earth
global.levels[2] = 1;	//mercury
global.levels[3] = 1;	//venus
global.levels[4] = 1;	//mars
global.levels[5] = 1;	//jupiter
global.levels[6] = 1;	//saturn
global.levels[7] = 1;	//uranus
global.levels[8] = 1;	//neptune

//rooms
global.rooms[1] = rEarth;
global.rooms[2] = rMercury;
global.rooms[3] = rVenus;
global.rooms[4] = rMars;
global.rooms[5] = rJupiter;
global.rooms[6] = rSaturn;
global.rooms[7] = rUranus;
global.rooms[8] = rNeptune;

easyButton = instance_create_depth(600, 300, 0, oRadioButton);
easyButton.label = "easy";
easyButton.selected = true;

mediumButton = instance_create_depth(600, 340, 0, oRadioButton);
mediumButton.label = "medium";
mediumButton.selected = false;

hardButton = instance_create_depth(600, 380, 0, oRadioButton);
hardButton.label = "hard";
hardButton.selected = false;
