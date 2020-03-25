// Handle user input 
left_key = keyboard_check(vk_left); 
right_key = keyboard_check(vk_right); 
up_key = keyboard_check(vk_up); 
down_key = keyboard_check(vk_down); 

// Handle rocket movement 
var x_move = right_key - left_key; 
var y_move = up_key - down_key; 

x_speed = x_move * fly_speed; 
y_speed = y_move * fly_speed; 


// Adjust position of the rocket sprite 
x += x_speed; 
y += y_speed; 


// Decrease the amount of fuel when a thruster is pressed 
with (fuel) {	
	if (left_key || right_key) {
		fuel -= 1;
		mass = 100 + fuel;
	}
}

// Y - Accerleration = Force / mass 
y_acceleration = 2500 / mass;		// Assuming the thrust is 2500 N 
