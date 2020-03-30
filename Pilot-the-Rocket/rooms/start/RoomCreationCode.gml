global.levelDifficulty = 0;

// levels: 0 = available, 1 = locked
global.levels[0] = 0;	//placeholder
global.levels[1] = 1;	//earth
global.levels[2] = 1;	//mercury
global.levels[3] = 0;	//venus
global.levels[4] = 0;	//mars
global.levels[5] = 0;	//jupiter
global.levels[6] = 0;	//saturn
global.levels[7] = 0;	//uranus
global.levels[8] = 0;	//neptune

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

//global variables
global.currentRocket[0] = 0;	//placeholder
global.currentRocket[1] = 0;	//earth
global.currentRocket[2] = 0;	//mercury
global.currentRocket[3] = 0;	//venus
global.currentRocket[4] = 0;	//mars
global.currentRocket[5] = 0;	//jupiter
global.currentRocket[6] = 0;	//saturn
global.currentRocket[7] = 0;	//uranus
global.currentRocket[8] = 0;	//neptune

global.camX = 0;
global.camY = 0;
global.halfViewWidth = 0;
global.halfViewHeight = 0;