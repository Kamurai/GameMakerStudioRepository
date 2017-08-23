//determine the distance from one object to a specific object

//arguments
    //target id
var target;
    target = argument0;
    
//user variables
    //origin coordinates
//var x, y

//temporary variables
    //resulting distance in pixels
var result;

//the distance between two points can be determined by pythagorem theorem sqrt(sq(x2-x1) + sq(y2-y1))

//first,  the nearest point of the target object must be determined relative to the determined nearest point of the source object

//determine direction based on comparitives between the source's bounding boxes and the target's bounding boxes

    //if bbox_left - (target).bbox_right > 0 
        //(direction is to the left)
    if( (bbox_left - (target).bbox_right) > 0 )
    {
    
    
    
        //if (bbox_top - (target).bbox_bottom) > 0 
            //(direction is up)
        if( (bbox_top - (target).bbox_bottom) > 0)      
        {
            //use bottom, right or both bounding boxes (direction is left and up)
                //use bottom-right corner
            result = sqrt( sqr( bbox_left - (target).bbox_right ) + sqr( bbox_top - (target).bbox_bottom )  );

        }
        //else if ((target).bbox_top - bbox_bottom) > 0 
            //(direction is down)
        else if( ((target).bbox_top - bbox_bottom) > 0 )
        {
         //instance_destroy();
               //use top, right or both bounding boxes (direction is left and down)
                //use top-right corner
            result = sqrt( sqr( bbox_left - (target).bbox_right ) + sqr( bbox_bottom - (target).bbox_top )  );

        }
        //else (original coordinates are between top and bottom bounding boxes) (direction is in line with target horizontally)
        else
        {    
            //use right bounding box (direction is left only)
                //use right egde only
            result = bbox_left - (target).bbox_right;
            
            
        }
    }
    //else if (target).bbox_left - bbox_right  > 0 
        //(direction to the right)
    else if( ((target).bbox_left - bbox_right) > 0 )    
    {
        //if (bbox_top - (target).bbox_bottom) > 0 (direction is up)
        if( (bbox_top - (target).bbox_bottom) > 0 )
        {
            //use bottom, left or both bounding boxes (direction is right and up)
                //use bottom-left corner
            result = sqrt( sqr( (target).bbox_left - bbox_right ) + sqr( bbox_top - (target).bbox_bottom )  );

        }    
        //else if ((target).bbox_top - bbox_bottom) > 0 (direction is down)
        else if( ((target).bbox_top - bbox_top) > 0 )
        {
            //use top, left or both bounding boxes (direction is right and down)
                //use top-left corner
            result = sqrt( sqr( (target).bbox_left - bbox_right ) + sqr( (target).bbox_top - bbox_top )  );
        }
        //else (original coordinates are between top and bottom bounding boxes) (direction is in line with target horizontally)
        else
        {
            //use left bounding box (direction is right only)
                //use left edge only
            result = (target).bbox_left - bbox_right;
        }
    }
    //else (original coordinates are between left and right bounding boxes) 
        //(direction is in line with target vertically)
    else
    {
        //if (bbox_top - (target).bbox_bottom) > 0 (direction is up)
        if( (bbox_top - (target).bbox_bottom) > 0 )
        {
            //use bottom bounding box (direction is up only)
                //use bottom edge only
            result = bbox_top - (target).bbox_bottom;
        }
        //else if ((target).bbox_top - bbox_bottom) > 0 (direction is down)
        else if( ((target).bbox_top - bbox_bottom) > 0 )
        {
            //use top bounding box (direction is down only)
                //use top edge only
            result = (target).bbox_top - bbox_bottom;
            
            //instance_destroy();
        }
    }   
            

//overlapping correction
if( result < 0 )
{
    result = 0;
}



//result = distance_to_object(Building);

return result;


