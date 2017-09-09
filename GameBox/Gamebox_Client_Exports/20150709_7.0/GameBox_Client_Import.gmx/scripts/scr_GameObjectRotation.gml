//argument0 represents positive or negative rotation

//MooBaby = argument0;

image_angle = image_angle + obj_Controller.Rotation*argument0;

if( image_angle >= 360)
{
    image_angle = image_angle - 360;
}
else if( image_angle < 0)
{
    image_angle = image_angle + 360;
}

//if Game Object is in quadrant 1
if( x > (room_width/2) && y <= (room_height/2) )
{
    alpha = alpha + obj_Controller.Rotation*argument0;
    
    //if Game Object is moving to quadrant 2
    if( alpha > 90 )
    {
        alpha = 90 - (alpha - 90);
        x = (room_width/2) - (distance * cos(alpha*(pi/180)));
        y = (room_height/2) - (distance * sin(alpha*(pi/180)));
    }
    else
    {
        x = (room_width/2) + (distance * cos(alpha*(pi/180)));
        y = (room_height/2) - (distance * sin(alpha*(pi/180)));
    }
}
//if Game Object is in quadrant 2
else if( x <= (room_width/2) && y < (room_height/2) )
{
    alpha = alpha - obj_Controller.Rotation*argument0;
    
    //if Game Object is moving to quadrant 3
    if( alpha < 0 )
    {
        alpha = alpha * (-1);
        x = (room_width/2) - (distance * cos(alpha*(pi/180)));
        y = (room_height/2) + (distance * sin(alpha*(pi/180)));
    }
    else
    {
        x = (room_width/2) - (distance * cos(alpha*(pi/180)));
        y = (room_height/2) - (distance * sin(alpha*(pi/180)));
    }
}
//if Game Object is in quadrant 3
else if( x < (room_width/2) && y >= (room_height/2) )
{
    alpha = alpha + obj_Controller.Rotation*argument0;
    
    //if Game Object is moving to quadrant 4
    if( alpha > 90 )
    {
        alpha = 90 - (alpha - 90);
        x = (room_width/2) + (distance * cos(alpha*(pi/180)));
        y = (room_height/2) + (distance * sin(alpha*(pi/180)));
    }
    else
    {
        x = (room_width/2) - (distance * cos(alpha*(pi/180)));
        y = (room_height/2) + (distance * sin(alpha*(pi/180)));
    }
}
//if Game Object is in quadrant 4
else if( x >= (room_width/2) && y > (room_height/2) )
{
    alpha = alpha - obj_Controller.Rotation*argument0;
    
    //if Game Object is moving to quadrant 1
    if( alpha < 0 )
    {
        alpha = alpha * (-1);
        x = (room_width/2) + (distance * cos(alpha*(pi/180)));
        y = (room_height/2) - (distance * sin(alpha*(pi/180)));
    }
    else
    {
        x = (room_width/2) + (distance * cos(alpha*(pi/180)));
        y = (room_height/2) + (distance * sin(alpha*(pi/180)));
    }
}