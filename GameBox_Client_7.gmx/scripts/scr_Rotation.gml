//argument0 represents positive or negative rotation

if(obj_Controller.FreeRotation == true)
{
    //
    image_angle = image_angle + obj_Controller.Rotation*argument0;
    
    if( image_angle >= 360)
    {
        image_angle = image_angle - 360;
    }
    else if( image_angle < 0)
    {
        image_angle = image_angle + 360;
    }
    
    if(position_meeting(mouse_x,mouse_y,self) == false)
    {
        contact = false;
    }
    else
    {
        contact = true;
    }
}
