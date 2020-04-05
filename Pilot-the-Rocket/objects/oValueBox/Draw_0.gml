draw_self(); 

// Write the value to the middle of the area, formatted to 2 decimal places 
draw_set_halign(fa_center);
draw_set_valign(fa_center); 
draw_text(x, y, string(value)); 