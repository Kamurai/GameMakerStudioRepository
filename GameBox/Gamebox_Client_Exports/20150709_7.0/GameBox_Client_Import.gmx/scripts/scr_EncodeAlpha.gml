//this should take the x, y, alpha, distance, etc. from the server
    //and implement that in relation to the current obj_Table.image_angle;

//AbsoluteX;
//AbsoluteY;
//CurrentAlpha;
//CurrentImageAngle;

    //Alpha is always between 0 and 90 (inclusive)
        //0 towards the x access and 90 towards the y access
        
    /*
    2|1
    3|4
    */
    
    //the difference between obj_table.image_angle and obj_.alpha is consistent regardless of rotation
        //this restricts the location to one of 4 x,y positions
   
    
    //if the table is not already rotated to 0
    if(CurrentTableAngle != 0)
    {
        //the obj_Table.image_angle can be adjusted from 0, adjusting the
            //obj.alpha as well by adjusting it 0-3 times and evaluating the adjusted x,y coordinates
        for(var tempTracker = 0; tempTracker < 4; tempTracker++)
        {
            //adjusted x,y coordinates can be acheived by subtracting 90 from obj_Table.image_angle
            if(CurrentTableAngle < 270)
            {
                CurrentTableAngle = CurrentTableAngle + 90;
                
                //first quadrant to second quadrant
                if( AbsoluteX >= room_width/2 && AbsoluteY < room_height/2 )
                {
                    CurrentAlpha = 90 - CurrentAlpha;
                    AbsoluteX = room_width/2 + distance*cos(CurrentAlpha*(pi/180))*(-1);
                    AbsoluteY = room_height/2 + distance*sin(CurrentAlpha*(pi/180))*(-1);
                } 
                //second quadrant to third quadrant
                else if( AbsoluteX < room_width/2 && AbsoluteY < room_height/2 )
                {
                    CurrentAlpha = 90 - CurrentAlpha;
                    AbsoluteX = room_width/2 + distance*cos(CurrentAlpha*(pi/180))*(-1);
                    AbsoluteY = room_height/2 + distance*sin(CurrentAlpha*(pi/180));
                }
                //third quadrant to fourth quadrant
                else if( AbsoluteX < room_width/2 && AbsoluteY >= room_height/2 )
                {
                    CurrentAlpha = 90 - CurrentAlpha;
                    AbsoluteX = room_width/2 + distance*cos(CurrentAlpha*(pi/180));
                    AbsoluteY = room_height/2 + distance*sin(CurrentAlpha*(pi/180));
                }
                //fourth quadrant to first quadrant
                else if( AbsoluteX >= room_width/2 && AbsoluteY >= room_height/2 )
                {
                    CurrentAlpha = 90 - CurrentAlpha;
                    AbsoluteX = room_width/2 + distance*cos(CurrentAlpha*(pi/180));
                    AbsoluteY = room_height/2 + distance*sin(CurrentAlpha*(pi/180))*(-1);
                }
            }
            else //CurrentTableAngle >= 270
            {
                //CurrentTableAngle = CurrentTableAngle;
                
                //first quadrant
                if( AbsoluteX >= room_width/2 && AbsoluteY < room_height/2 )
                {
                    CurrentAlpha = CurrentAlpha + CurrentTableAngle;
                    AbsoluteX = room_width/2 + distance*cos(CurrentAlpha*(pi/180));
                    AbsoluteY = room_height/2 + distance*sin(CurrentAlpha*(pi/180))*(-1);
                } 
                //second quadrant
                else if( AbsoluteX < room_width/2 && AbsoluteY < room_height/2 )
                {
                    CurrentAlpha = CurrentAlpha + CurrentTableAngle*(-1);
                    AbsoluteX = room_width/2 + distance*cos(CurrentAlpha*(pi/180))*(-1);
                    AbsoluteY = room_height/2 + distance*sin(CurrentAlpha*(pi/180))*(-1);
                }
                //third quadrant
                else if( AbsoluteX < room_width/2 && AbsoluteY >= room_height/2 )
                {
                    CurrentAlpha = CurrentAlpha + CurrentTableAngle;
                    AbsoluteX = room_width/2 + distance*cos(CurrentAlpha*(pi/180))*(-1);
                    AbsoluteY = room_height/2 + distance*sin(CurrentAlpha*(pi/180));
                }
                //fourth quadrant
                else if( AbsoluteX >= room_width/2 && AbsoluteY >= room_height/2 )
                {
                    CurrentAlpha = CurrentAlpha + CurrentTableAngle*(-1);
                    AbsoluteX = room_width/2 + distance*cos(CurrentAlpha*(pi/180));
                    AbsoluteY = room_height/2 + distance*sin(CurrentAlpha*(pi/180));
                }
            }
            
            
            
            
            
        }
    }
    //obj_.image_angle + obj_Table.image_angle = adjusted(obj.AbsoluteImageAngle)
    //CurrentImageAngle = CurrentImageAngle;
    
    if(CurrentImageAngle < 0)
    {
        CurrentImageAngle = CurrentImageAngle + 360;
    }
    else if(CurrentImageAngle >= 360)
    {
        CurrentImageAngle = CurrentImageAngle - 360;
    }
    
    
x = AbsoluteX;
y = AbsoluteY;
Lastx = x;
Lasty = y;

alpha = CurrentAlpha;
image_angle = CurrentImageAngle;