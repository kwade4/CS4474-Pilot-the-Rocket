//draw button
draw_self();
draw_circle(x, y, 8, true);
draw_set_font(fLevelSelect)
draw_text(x + 12, y - 12, label);
if (selected){
    draw_circle(x, y, 5, false);
}
