//this should take the current x, y, alpha, distance, etc.
    //and translate as if the table was at image_angle == 0;
    
    AbsoluteX = x;
    AbsoluteY = y;
    CurrentAlpha = alpha;
    CurrentImageAngle = image_angle;
    CurrentTableAngle = obj_Table.image_angle;
    
    
    //Alpha is always between 0 and 90 (inclusive)
    
    //the difference between obj_table.image_angle and obj_.alpha is consistent regardless of rotation
        //this restricts the location to one of 4 x,y positions
    
    //if the table not already rotated to 0
    if(CurrentTableAngle != 0)
    {
        //the obj_Table.image_angle can be adjusted back to 0, adjusting the
            //obj.alpha as well by adjusting it 0-3 times and evaluating the adjusted x,y coordinates
        for(var tempTracker = 0; tempTracker < 3; tempTracker++)
        {
            //adjusted x,y coordinates can be acheived by subtracting 90 from obj_Table.image_angle
            if(CurrentTableAngle >= 90)
            {
                CurrentTableAngle = CurrentTableAngle - 90;
            }
            else //CurrentTableAngle < 90
            {
                CurrentTableAngle = CurrentTableAngle - (CurrentTableAngle);
            }
            
            //fourth quadrant to third quadrant
            if( AbsoluteX >= room_width/2 && AbsoluteY >= room_height/2 )
            {
                CurrentAlpha = 90 - CurrentAlpha;
                AbsoluteX = room_width/2 + distance*cos(CurrentAlpha)*(-1);
                AbsoluteY = room_height/2 + distance*sin(CurrentAlpha);
            }
            //third quadrant to second quadrant
            else if( AbsoluteX < room_width/2 && AbsoluteY >= room_height/2 )
            {
                CurrentAlpha = 90 - CurrentAlpha;
                AbsoluteX = room_width/2 + distance*cos(CurrentAlpha)*(-1);
                AbsoluteY = room_height/2 + distance*sin(CurrentAlpha)*(-1);
            }
            //second quadrant to first quadrant
            else if( AbsoluteX < room_width/2 && AbsoluteY < room_height/2 )
            {
                CurrentAlpha = 90 - CurrentAlpha;
                AbsoluteX = room_width/2 + distance*cos(CurrentAlpha);
                AbsoluteY = room_height/2 + distance*sin(CurrentAlpha)*(-1);
            }
            //first quadrant to fourth quadrant
            else if( AbsoluteX >= room_width/2 && AbsoluteY < room_height/2 )
            {
                CurrentAlpha = 90 - CurrentAlpha;
                AbsoluteX = room_width/2 + distance*cos(CurrentAlpha);
                AbsoluteY = room_height/2 + distance*sin(CurrentAlpha);
            }
        }
    }
    //obj_.image_angle - obj_Table.image_angle = adjusted(obj.AbsoluteImageAngle)
    CurrentImageAngle = image_angle - obj_Table.image_angle;
    
    if(CurrentImageAngle < 0)
    {
        CurrentImageAngle = CurrentImageAngle + 360;
    }
    else if(CurrentImageAngle >= 360)
    {
        CurrentImageAngle = CurrentImageAngle - 360;
    }
    