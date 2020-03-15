global.levelDifficulty = 0;

easyButton = instance_create_depth(600, 300, 0, oRadioButton);
easyButton.label = "easy";
easyButton.selected = true;

mediumButton = instance_create_depth(600, 340, 0, oRadioButton);
mediumButton.label = "medium";
mediumButton.selected = false;

hardButton = instance_create_depth(600, 380, 0, oRadioButton);
hardButton.label = "hard";
hardButton.selected = false;
