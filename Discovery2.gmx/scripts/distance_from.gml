//determine the distance from an arbitrated x,y coordinate to a specific object

//arguments
    //origin coordinates
var x1, y1;
    x1 = argument0;
    y1 = argument1;
    //target id
var target;
    target = argument2;
    
//user variables

//temporary variables
    //resulting distance in pixels
var result;

//the distance between two points can be determined by pythagorem theorem sqrt(sq(x2-x1) + sq(y2-y1))

//first,  the nearest point of the target object must be determined relative to the arbritrary coordinates

//determine direction based on comparitives between x,y and target bounding boxes

    //if bbox_left - (target).bbox_right > 0 (direction is to the left)
    if( (x1 - (target).bbox_right) > 0 )
    {
        //if (bbox_top - (target).bbox_bottom) > 0 (direction is up)
        if( (y1 - (target).bbox_bottom) > 0)      
        {
            //use bottom, right or both bounding boxes (direction is left and up)
                //use bottom-right corner
            result = sqrt( sqr( x1 - (target).bbox_right ) + sqr( y1 - (target).bbox_bottom )  );

        }
        //else if ((target).bbox_top - bbox_bottom) > 0 (direction is down)
        else if( ((target).bbox_top - y1) > 0 )
        {
            //use top, right or both bounding boxes (direction is left and down)
                //use top-right corner
            result = sqrt( sqr( x1 - (target).bbox_right ) + sqr( (target).bbox_top - y1 )  );

        }
        //else (original coordinates are between top and bottom bounding boxes) (direction is in line with target horizontally)
        else
        {    
            //use right bounding box (direction is left only)
                //use right egde only
            result = x1 - (target).bbox_right;
        }
    }
    //else if (target).bbox_left - bbox_right  > 0 (direction to the right)
    if( ((target).bbox_left - x1) > 0 )    
    {
        //if (bbox_top - (target).bbox_bottom) > 0 (direction is up)
        if( (y1 - (target).bbox_bottom) > 0 )
        {
            //use bottom, left or both bounding boxes (direction is right and up)
                //use bottom-left corner
            result = sqrt( sqr( (target).bbox_left - x1 ) + sqr( y1 - (target).bbox_bottom )  );

        }    
        //else if ((target).bbox_top - bbox_bottom) > 0 (direction is down)
        else if( ((target).bbox_top - y1) > 0 )
        {
            //use top, left or both bounding boxes (direction is right and down)
                //use top-left corner
            result = sqrt( sqr( (target).bbox_left - x1 ) + sqr( (target).bbox_top - y1 )  );
        }
        //else (original coordinates are between top and bottom bounding boxes) (direction is in line with target horizontally)
        else
        {
            //use left bounding box (direction is right only)
                //use left edge only
            result = (target).bbox_left - x1;
        }
    }
    //else (original coordinates are between left and right bounding boxes) (direction is in line with target vertically)
    else
    {
        //if (bbox_top - (target).bbox_bottom) > 0 (direction is up)
        if( (y1 - (target).bbox_bottom) > 0 )
        {
            //use bottom bounding box (direction is up only)
                //use bottom edge only
            result = y1 - (target).bbox_bottom;
        }
        //else if ((target).bbox_top - bbox_bottom) > 0 (direction is down)
        else if( ((target).bbox_top - y1) > 0 )
        {
            //use top bounding box (direction is down only)
                //use top edge only
            result = (target).bbox_top - y1;
        }
    }   
            





//result = distance_to_object(Building);

return result;



