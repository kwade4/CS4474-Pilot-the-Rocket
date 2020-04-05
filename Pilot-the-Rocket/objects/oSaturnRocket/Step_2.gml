// If successful go to next level 
if (success) {
	room_goto(rLvEndScreen);
}

// Otherwise go the the instructions 
else {
	room_goto(rLvInstructions);
} 
