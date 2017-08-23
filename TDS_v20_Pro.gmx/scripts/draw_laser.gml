/*  draw_laser()
**  by masterofkings
**
**  General form: draw_laser(x,y,dir,range,accr,obj,col)
**
**  Argument list:
**    argument0 (x):      x position of the start of the laser
**    argument1 (y):      y position of the start of the laser
**    argument2 (dir):    direction in which the laser will travel
**    argument3 (range):  maximum distance that the laser can travel
**    argument4 (accr):   the accuracy of the laser (cannot be 0)
**    argument5 (obj):    the object which blocks the laser
**    argument6 (col):    the color of the laser
**
**  Usage: Draws a laser which can be blocked by obj, in the color of col.
**
**  Note: For use in both Lite and Pro.
*/
var xx, yy, oldCol;
xx=argument0;
yy=argument1;
oldCol=draw_get_color();
repeat(argument3/argument4)
{
    xx+=lengthdir_x(argument4,argument2);
    yy+=lengthdir_y(argument4,argument2);
    if (instance_position(xx,yy,instance_nearest(xx,yy,argument5)))
    {
        break;
    }
}
draw_set_color(argument6);
draw_line(argument0,argument1,xx,yy);
draw_set_color(oldCol);
