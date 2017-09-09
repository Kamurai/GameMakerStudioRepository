if(Selected)
{
    x = (mouse_x - temp_x);
    y = (mouse_y - temp_y);
}

//if the game object is in legal bounds and being held
if( (y > obj_Controller.bound_y || x > obj_Controller.bound_x) && Hold != (-1) )
{
    obj_Player.Holding = 0;
    //instance_destroy();
}

//if the game object has moved and is being held
    //this should not apply for objects being rotated, nor objects being moved by another player.
if(Lastx != x || Lasty != y)
{
    scr_DefineForRotation();
    scr_SendUpdateObjectRotation();
    
    if(Lastx != x)
    {
        Lastx = x;
    }
    if(Lasty != y)
    {
        Lasty = y;
    }
}

//if object is not being held
if(depth != LastDepth)
{  
    LastDepth = depth;
    scr_SendUpdateObjectDepth(depth);
}