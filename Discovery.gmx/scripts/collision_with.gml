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
result = false;


//if calling object and target are colliding

//case 1:  neither object uses precise collision checking
    //this case is the only feasible case to attempt to program here
    //this case coincides with current game features
//case 2:  current object uses precise collison checking
//case 3:  target object uses precise collision checking
//case 4:  both objects use precise collision checking


//case 1:  neither object uses precise collision checking

//determine orientation
    //if object is to the left of the target
if( x < (Target).x )
{
    //if  nearest bbox is past (Target)'s nearest bbox
        //if bbox right is greater than the (Target)'s bbox_left
    if( bbox_right >= (Target).bbox_left && (bbox_bottom >= (Target).bbox_top && bbox_top <= (Target).bbox_bottom) )
    {
        //instance_destroy();
        //then there is a collision
        result = true;
    }
}
//if object is to the right of the target
else if( x > (Target).x )
{
    //if  nearest bbox is past (Target)'s nearest bbox
        //if bbox left is greater than the (Target)'s bbox_right
    if( bbox_left <= (Target).bbox_right && (bbox_bottom >= (Target).bbox_top && bbox_top <= (Target).bbox_bottom) )
    {
        //instance_destroy();
        //then there is a collision
        result = true;
    }
}
//if object is aove of the target
else if( y < (Target).y )
{
    //if  nearest bbox is past (Target)'s nearest bbox
        //if bbox_bottom is greater than the (Target)'s bbox_left
    if( bbox_bottom >= (Target).bbox_top && (bbox_right >= (Target).bbox_left && bbox_left <= (Target).bbox_right) )
    {
        //instance_destroy();
        //then there is a collision
        result = true;
    }
}
//if object is below the target
else if( y > (Target).y )
{
    //if  nearest bbox is past (Target)'s nearest bbox
        //if bbox_bottom is greater than the (Target)'s bbox_left
    if( bbox_top <= (Target).bbox_bottom && (bbox_right >= (Target).bbox_left && bbox_left <= (Target).bbox_right) )
    {
        //instance_destroy();
        //then there is a collision
        result = true;
    }
}

return result;
