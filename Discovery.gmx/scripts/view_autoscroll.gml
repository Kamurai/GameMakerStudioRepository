/*
view_autoscroll(view,border,fric)
Makes the view automatically scroll, if the mouse crosses the given border around the given view.

view - What view to move using mouse
border - Border around view the mouse has to cross, before the view starts scrolling
fric - Friction of scrolling (not de-acceleration!)

Script by Fede-lasse
*/
if (mouse_x < view_xview[argument0]+argument1) {
  view_xview[argument0] -= ((view_xview[argument0]+argument1)-mouse_x)/argument2;
}
if (mouse_x > (view_xview[argument0]+view_wview[argument0])-argument1) {
  view_xview[argument0] += (mouse_x-((view_xview[argument0]+view_wview[argument0])-argument1))/argument2;
}

if (mouse_y < view_yview[argument0]+argument1) {
  view_yview[argument0] -= ((view_yview[argument0]+argument1)-mouse_y)/argument2;
}
if (mouse_y > (view_yview[argument0]+view_hview[argument0])-argument1) {
  view_yview[argument0] += (mouse_y-((view_yview[argument0]+view_hview[argument0])-argument1))/argument2;
}

view_xview[argument0] = median(0,view_xview[argument0],room_width-view_wview[argument0]);
view_yview[argument0] = median(0,view_yview[argument0],room_height-view_hview[argument0]);