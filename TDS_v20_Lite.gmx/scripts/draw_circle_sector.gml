/*  draw_circle_sector()
**  by SoulRed12
**
**  General form: draw_circle_sector(dir,rad,ang,seg,col,ful)
**
**  Argument list:
**    argument0 (dir):  current direction
**    argument1 (rad):  circle radius
**    argument2 (ang):  size of arc in degrees
**    argument3 (seg):  arc segments
**    argument4 (col):  color of lines
**
**  Usage: Draws a circle sector on the screen
*/
draw_set_color(argument4); //Set the color

//Draw a bunch of lines to approximate an arc
for (cc=-argument2/2; cc<argument2/2; cc+=argument2/argument3)
{
    draw_line(x+lengthdir_x(argument1,argument0+cc),y+lengthdir_y(argument1,argument0+cc),x+lengthdir_x(argument1,argument0+cc+argument2/argument3),y+lengthdir_y(argument1,argument0+cc+argument2/argument3));
}

//Now draw lines to show sides of circle sector
draw_line(x,y,x+lengthdir_x(argument1,argument0+argument2/2),y+lengthdir_y(argument1,argument0+argument2/2));
draw_line(x,y,x+lengthdir_x(argument1,argument0-argument2/2),y+lengthdir_y(argument1,argument0-argument2/2));
