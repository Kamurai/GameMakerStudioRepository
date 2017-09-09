//arguments
    //target id
var Target_Object;
    Target_Object = argument0;
var Subject_Speed;
    Subject_Speed = argument1;
    

//temp variables

//directional
var Subject_Direction;
    Subject_Direction = 0;

//objective points
//var point_x;
//var point_y;


//Objective is to cause the current object
    //to move away from the target object
    

//Case 1
    //Current Object is ON TOP of Target
if( (x == (Target_Object).x) && (y == (Target_Object).y) )
{
    //direction = random(1) * 360;
    x = x + random(8);
}

//This should eliminate Case 1 so that Case 2 may be applied, regardless   
    
//Case 2
    //Current Object is NOT on top of Target
    

//x is in line with Target.x (vertically aligned)
if( x == (Target_Object).x )
{
    //alter only the y variable
    
    //object is below the Target
    if( y > (Target_Object).y )
    {
        //direct Subject down
        
        //determine direction from subject to target
            //x: N/A
            //y: positive
        Subject_Direction = 90;//arctan( (x-Target_Object.x)/(y-Target_Object.y) );
        
        
        //reverse direction
        Subject_Direction = 270;//Subject_Direction - 180;
        
        //use sin of reverse direction to determine y coordinate
        y = y + Subject_Speed * sin(Subject_Direction)*(-1);
        
        //use cos of reverse direction to determine x coordinate
        //x = x + Subject_Speed * cos(Subject_Direction);

    }
    //object is above the Target
    else if( y < (Target_Object).y )
    {
        //direct Subject up
        
        //determine direction from subject to target
            //x: N/A
            //y: negative
        Subject_Direction = 270;//arctan( (x-Target_Object.x)/(Target_Object.y-y) );
        
        
        //reverse direction
        Subject_Direction = 90;//Subject_Direction + 180;
        
        //use sin of reverse direction to determine y coordinate
        y = y + Subject_Speed * sin(Subject_Direction)*(-1);
        
        //use cos of reverse direction to determine x coordinate
        //x = x + Subject_Speed * cos(Subject_Direction);

    }
}
//if object is to the right of the Target
else if( x > (Target_Object).x )
{
    //y is in line with Target.y (horizontally)
    if( y == (Target_Object).y )
    {
        //alter only the x variable
        
        //direct Subject to the right
        
        //determine direction from subject to target
            //x: positive
            //y: N/A
        Subject_Direction = 180;//arctan( (x-Target_Object.x)/(y-Target_Object.y) );
        
        
        //reverse direction
        Subject_Direction = 0;//Subject_Direction - 180;
        
        //use sin of reverse direction to determine y coordinate
        //y = y + Subject_Speed * sin(Subject_Direction)*(-1);
        
        //use cos of reverse direction to determine x coordinate
        x = x + Subject_Speed * cos(Subject_Direction);

    }
    //object is below the Target
    else if( y > (Target_Object).y )
    {
        //direct Subject to the right and down
        
        //determine direction from subject to target
            //x: positive
            //y: positive
        Subject_Direction = arctan( (y-Target_Object.y)/(x-Target_Object.x) );
        
        //adjust for vertically reversed cartesan plan
        Subject_Direction = 180 - Subject_Direction; //90 + Subject_Direction; 
        
        //this results in quad 2
           
        //reverse direction to quad 4
        Subject_Direction = Subject_Direction + 180;
        
        //use sin of reverse direction to determine y coordinate
            //negative sin(angle)
                //cartesan down
                //reversed up
                    //needs negative modifier
            //move subject down
        y = y + Subject_Speed * sin(Subject_Direction);//*(-1);
        
        //use cos of reverse direction to determine x coordinate
            //positive cos(angle)
            //move subject to the right
        x = x + Subject_Speed * cos(Subject_Direction);

    }
    //object is above the Target
    else if( y < (Target_Object).y )
    {
        //direct Subject to the right and up
        
        //determine direction from subject to target
            //x: positive
            //y: negative
        Subject_Direction = arctan( (Target_Object.y-y)/(x-Target_Object.x) );
        
        //adjust for vertically reversed cartesan plan
        Subject_Direction = 180 + Subject_Direction; //180 + Subject_Direction; 
        
        //this results in quad 3
        
        //reverse direction to quad 1
        Subject_Direction = Subject_Direction - 180;
        
        //use sin of reverse direction to determine y coordinate
            //positive sin(angle)
                //cartesan up
                //reversed down
                    //needs negative modifier
                        //removed for accuracy
            //move subject up
        y = y + Subject_Speed * sin(Subject_Direction)*(-1);
        
        //use cos of reverse direction to determine x coordinate
            //positive cos(angle)
            //move subject to the right
        x = x + Subject_Speed * cos(Subject_Direction);

    }

}
//object is to the left of the Target
else if( x < (Target_Object).x )
{
    //y is in line with Target.y (horizontally)
    if( y == (Target_Object).y )
    {
        //alter only the x variable
        
        //direct Subject to the left
        
        //determine direction from subject to target
            //x: negative
            //y: N/A
        Subject_Direction = 0;//arctan( (x-Target_Object.x)/(Target_Object.y-y) );
        
        
        //reverse direction
        Subject_Direction = 180;//Subject_Direction + 180;
        
        //use sin of reverse direction to determine y coordinate
        //y = y + Subject_Speed * sin(Subject_Direction)*(-1);
        
        //use cos of reverse direction to determine x coordinate
        x = x + Subject_Speed * cos(Subject_Direction);

    }
    //object is below the Target
    else if( y > (Target_Object).y )
    {
        //direct Subject to the left and down
        
        //determine direction from subject to target
            //x: positive
            //y: positive
        Subject_Direction = arctan( (y-Target_Object.y)/(Target_Object.x-x) );
        
        //adjust for vertically reversed cartesan plan
        Subject_Direction = 0 + Subject_Direction; //0 + Subject_Direction; 
        
        //this results in quad 1
           
        //reverse direction to quad 3
        Subject_Direction = Subject_Direction + 180;
        
        //use sin of reverse direction to determine y coordinate
            //negative sin(angle)
                //cartesan down
                //reversed up
                    //needs negative modifier
            //move subject down
        y = y + Subject_Speed * sin(Subject_Direction)*(-1);
        
        //use cos of reverse direction to determine x coordinate
            //negative cos(angle)
            //move subject to the left
        x = x + Subject_Speed * cos(Subject_Direction);

    }
    //object is above the Target
    else if( y < (Target_Object).y )
    {
        //direct Subject to the left and up
        
        //determine direction from subject to target
            //x: positive
            //y: negative
        Subject_Direction = arctan( (Target_Object.y-y)/(Target_Object.x-x) );
        
        //adjust for vertically reversed cartesan plan
        Subject_Direction = 360 - Subject_Direction; //270 + Subject_Direction; 
        
        //this results in quad 4
        
        //reverse direction to quad 2
        Subject_Direction = Subject_Direction - 180;
        
        //use sin of reverse direction to determine y coordinate
            //positive sin(angle)
                //cartesan up
                //reversed down
                    //needs negative modifier
                        //removed for accuracy
            //move subject up
        y = y + Subject_Speed * sin(Subject_Direction);//*(-1);
        
        //use cos of reverse direction to determine x coordinate
            //negative cos(angle)
            //move subject to the left
        x = x + Subject_Speed * cos(Subject_Direction);

    }
    
    
}


//use sin of reverse direction to determine y coordinate
//y = y + Subject_Speed * sin(Subject_Direction);//*(-1);
        
//use cos of reverse direction to determine x coordinate
//x = x + Subject_Speed * cos(Subject_Direction);



/*    
//if object is to the left
if( y > (Target_Object).y )
{
    point_y = y + Subject_Speed/room_speed; //(y - (Target_Object).y);
}
else if( y < (Target_Object).y )
{
    point_y = y - Subject_Speed/room_speed; //((Target_Object).y - y);    
}
*/
//move_towards_point(point_x, point_y, (Target).Speed);

//move object Subject_Speed/room_speed number of pixels away from original location
//x = point_x;
//y = point_y;



       