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

easyButton = instance_create_depth(600, 300, 0, oRadioButton);
easyButton.label = "easy";
easyButton.selected = true;

mediumButton = instance_create_depth(600, 340, 0, oRadioButton);
mediumButton.label = "medium";
mediumButton.selected = false;

hardButton = instance_create_depth(600, 380, 0, oRadioButton);
hardButton.label = "hard";
hardButton.selected = false;
