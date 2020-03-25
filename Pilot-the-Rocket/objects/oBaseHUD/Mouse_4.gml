
// Get the fuel amount based on the user's input 
if device_mouse_check_button(0, mb_left) {
   
   if device_mouse_x_to_gui(0) < 708 {
	  fuel = 0;  
	  // TODO: Move arrow sprite to position  
   }
   
   else if device_mouse_x_to_gui(0) >= 708 && device_mouse_x_to_gui(0) < 716 {
      fuel = 100; 
	  // TODO: Move arrow sprite to position
   }
   
   else if device_mouse_x_to_gui(0) >= 716 && device_mouse_x_to_gui(0) < 758 {
	   fuel = 200; 
	   // TODO: Move arrow sprite to position
   }
   
   else if device_mouse_x_to_gui(0) >= 758 && device_mouse_x_to_gui(0) < 769 {
	   fuel = 300; 
	   // TODO: Move arrow sprite to position
   }
   
   else if device_mouse_x_to_gui(0) >= 769 && device_mouse_x_to_gui(0) < 789 {
	   fuel = 400; 
	   // TODO: Move arrow sprite to position
   }
   
   else if device_mouse_x_to_gui(0) >= 789 && device_mouse_x_to_gui(0) < 840 {
	   fuel = 500; 
	   // TODO: Move arrow sprite to position
   }
   
   else if device_mouse_x_to_gui(0) >= 840 {
	   fuel = 600; 
	   // TODO: Move arrow sprite to position
   }
}
