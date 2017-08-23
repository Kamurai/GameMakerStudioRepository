//argument0 represents positive or negative rotation
//argument1 represents instance being rotated around stationary object
//argument2 represents instance of stationary object

if(obj_Controller.FreeRotation == true)
{
    //rotate Sub Component
    (argument1).image_angle = (argument1).image_angle + obj_Controller.Rotation*argument0;
    
    if( (argument1).image_angle >= 360)
    {
        (argument1).image_angle = (argument1).image_angle - 360;
    }
    else if( (argument1).image_angle < 0)
    {
        (argument1).image_angle = (argument1).image_angle + 360;
    }
    
    //if Sub Component is in quadrant 1
    if( (argument1).x > ((argument2).x) && (argument1).y <= ((argument2).y) )
    {
        (argument1).alpha = (argument1).alpha + obj_Controller.Rotation*argument0;
        
        //if Sub Component is moving to quadrant 2
        if( (argument1).alpha > 90 )
        {
            (argument1).alpha = 90 - ((argument1).alpha - 90);
            (argument1).x = ((argument2).x) - ((argument1).distance * cos((argument1).alpha*(pi/180)));
            (argument1).y = ((argument2).y) - ((argument1).distance * sin((argument1).alpha*(pi/180)));
        }
        else
        {
            (argument1).x = ((argument2).x) + ((argument1).distance * cos((argument1).alpha*(pi/180)));
            (argument1).y = ((argument2).y) - ((argument1).distance * sin((argument1).alpha*(pi/180)));
        }
    }
    //if Sub Component is in quadrant 2
    else if( (argument1).x <= ((argument2).x) && (argument1).y < ((argument2).y) )
    {
        (argument1).alpha = (argument1).alpha - obj_Controller.Rotation*argument0;
        
        //if Sub Component is moving to quadrant 3
        if( (argument1).alpha < 0 )
        {
            (argument1).alpha = (argument1).alpha * (-1);
            (argument1).x = ((argument2).x) - ((argument1).distance * cos((argument1).alpha*(pi/180)));
            (argument1).y = ((argument2).y) + ((argument1).distance * sin((argument1).alpha*(pi/180)));
        }
        else
        {
            (argument1).x = ((argument2).x) - ((argument1).distance * cos((argument1).alpha*(pi/180)));
            (argument1).y = ((argument2).y) - ((argument1).distance * sin((argument1).alpha*(pi/180)));
        }
    }
    //if Sub Component is in quadrant 3
    else if( (argument1).x < ((argument2).x) && (argument1).y >= ((argument2).y) )
    {
        (argument1).alpha = (argument1).alpha + obj_Controller.Rotation*argument0;
        
        //if Sub Component is moving to quadrant 4
        if( alpha > 90 )
        {
            (argument1).alpha = 90 - ((argument1).alpha - 90);
            (argument1).x = ((argument2).x) + ((argument1).distance * cos((argument1).alpha*(pi/180)));
            (argument1).y = ((argument2).y) + ((argument1).distance * sin((argument1).alpha*(pi/180)));
        }
        else
        {
            (argument1).x = ((argument2).x) - ((argument1).distance * cos((argument1).alpha*(pi/180)));
            (argument1).y = ((argument2).y) + ((argument1).distance * sin((argument1).alpha*(pi/180)));
        }
    }
    //if Sub Component is in quadrant 4
    else if( (argument1).x >= ((argument2).x) && (argument1).y > ((argument2).y) )
    {
        (argument1).alpha = (argument1).alpha - obj_Controller.Rotation*argument0;
        
        //if Sub Component is moving to quadrant 1
        if( (argument1).alpha < 0 )
        {
            (argument1).alpha = (argument1).alpha * (-1);
            (argument1).x = ((argument2).x) + ((argument1).distance * cos((argument1).alpha*(pi/180)));
            (argument1).y = ((argument2).y) - ((argument1).distance * sin((argument1).alpha*(pi/180)));
        }
        else
        {
            (argument1).x = ((argument2).x) + ((argument1).distance * cos((argument1).alpha*(pi/180)));
            (argument1).y = ((argument2).y) + ((argument1).distance * sin((argument1).alpha*(pi/180)));
        }
    }
}
