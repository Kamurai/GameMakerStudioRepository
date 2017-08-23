/*

Created by AKSuperNewb. Please give credit if used, includ. website
Email: diamonddefender@live.com
Website: www.deathorglorystudios.co.cc

*/

var arg_shooter, arg_collider, arg_destroyer, arg_direction, arg_checkdistance, arg_lasercolor;
arg_shooter = argument0 //The object that is shooting the laser
arg_collider = argument1 //The object that the laser is supposed to be shooting at (i.e., an enemy object)
arg_destroyer = argument2 //The object that will stop this laser (i.e., a wall object)
arg_direction = argument3 //The direction the laser is going
arg_checkdistance = argument4 //The distance between check points. Smaller values are more accurate, but slower.
arg_lasercolor = argument5 //Color of the laser

var lx, ly, k, h; //x and y values of the laser check position
lx = arg_shooter.x //Start at the x position of the shooter
ly = arg_shooter.y //Start at the y position of the shooter
k = 0 //Just a variable used to create an infinite loop

while (k = 0) //Yes, I know that this is an infinite loop. Fortunately, you can stop a script statement with a return statement
{
    lx += lengthdir_x(arg_checkdistance, arg_direction) //Change the x value using the lengthdir statement
    ly += lengthdir_y(arg_checkdistance, arg_direction) //Same thing with the y value
    d = collision_point(lx,ly,arg_destroyer,true,true) //Get the object at position (lx, ly) if it is a destroyer
    if d >= 0
    {
        if d.object_index = arg_destroyer //Check if d is a destroyer
        {
            draw_set_color(arg_lasercolor) //Set the drawing color to the laser color
            draw_line(arg_shooter.x,arg_shooter.y,lx,ly) //Draw a line from the shooter position to the check position.
            screen_refresh() //Refresh the screen. This will make the line flash for 1 step
            return -1; //The laser failed to hit (in this case, it hit a wall or other destroyer
        }
    }
    h = collision_point(lx,ly,arg_collider,true,true) //Get the object at position (lx, ly) if it is a collider
    if h >= 0
    {
        if h.object_index = arg_collider //Check if h is the object it is supposed to hit
        {
            draw_set_color(arg_lasercolor) //Set the drawing color to the laser color
            draw_line(arg_shooter.x,arg_shooter.y,lx,ly) //Draw a line from the shooter position to the check position.
            screen_refresh() //Refresh the screen. This will make the line flash for 1 step
            return h; //Return the id of the the object it hit. You can then use it to say, subtract health or destroy the object.
        }
    }
    else
    {
        // Following statements make sure the laser has not left the room, so we are not left with an infinite loop
        if lx < 0
        {
            draw_set_color(arg_lasercolor)
            draw_line(arg_shooter.x,arg_shooter.y,lx,ly)
            screen_refresh()
            return -1; //The laser failed to hit (in this case, and the following ones, it left the room
        }
        if lx > room_width
        {
            draw_set_color(arg_lasercolor)
            draw_line(arg_shooter.x,arg_shooter.y,lx,ly)
            screen_refresh()
            return -1;
        }
        if ly < 0
        {
            draw_set_color(arg_lasercolor)
            draw_line(arg_shooter.x,arg_shooter.y,lx,ly)
            screen_refresh()
            return -1;
        }
        if ly > room_width
        {
            draw_set_color(arg_lasercolor)
            draw_line(arg_shooter.x,arg_shooter.y,lx,ly)
            screen_refresh()
            return -1;
        }
    }
}
