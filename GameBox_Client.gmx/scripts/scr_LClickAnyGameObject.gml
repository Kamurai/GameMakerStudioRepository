var varCheck; //if true, then pick up / put down game object

varCheck = true;

if(/*argument[0] == null || */argument[0] == 0)
{
    varCheck = true;
}
else if(argument[0] == 1 && obj_Phase.Index == 0)
{
    varCheck = true;
}
else if(argument[0] == 2)
{
    if(position_meeting(mouse_x, mouse_y, obj_Tile) == true)
    {
        varCheck = false;
    }
    else if(position_meeting(mouse_x, mouse_y, obj_Piece) == true)
    {
        varCheck = false;
    }
    else if(position_meeting(mouse_x, mouse_y, obj_Chit) == true)
    {
        varCheck = false;
    }
    else if(position_meeting(mouse_x, mouse_y, obj_Dice) == true)
    {
        varCheck = false;
    }
    else if(position_meeting(mouse_x, mouse_y, obj_Chart) == true)
    {
        varCheck = false;
    }
    else
    {
        varCheck = true;
    }
}

if(varCheck)
{
    //if in bounds
    if(!(y > obj_Controller.bound_y || x > obj_Controller.bound_x))
    {
        //switch hold
            //grab/release if not pointed at a SubMenu option and not pointed at an Object Option
        if((position_meeting(mouse_x, mouse_y, obj_SubMenu) == false) && (position_meeting(mouse_x, mouse_y, obj_Option) == false))
        {
            //grab/release if Player is not holding or player is holding THIS object
            if(obj_Player.Holding == 0 || ((obj_Player.Holding == 1 || Hold == obj_Player.Index)))
            {
                //grab/release if object is not being held or this player is holding the object
                if(Hold == (-1) || Hold == obj_Player.Index)
                {
                    //if(position_meeting(mouse_x,mouse_y,obj_Piece) == false)
                    //{
                        //if object is not marked as held
                        if(Selected == false)
                        {
                            //if object is not under another game object
                            if(scr_DetermineIfGameObjectUnder() == false)
                            {
                                //mark this object as being held
                                Selected = true;
                                obj_Player.Holding = 1;
                                temp_x = mouse_x - x;
                                temp_y = mouse_y - y;
                                depth = obj_Controller.PickupHeight;
                                scr_SendUpdateObjectDepth();
                            }
                        
                        }
                        //or if object is marked as being held
                        else if(Selected == true)
                        {
                            //mark this object as not being held
                            Selected = false;
                            obj_Player.Holding = 0;
                            temp_x = 0;
                            temp_y = 0;
                            scr_DetermineGameObjectHeight();
    
                            if(position_meeting(x,y,obj_Table) == false)
                            {
                                instance_destroy();
                            }
                        }
                        
                        //If no player is holding this object
                        if(Hold == (-1))
                         {
                            //this player is now holding this object
                            Hold = obj_Player.Index;
                         }
                         //or if this player is holding this object
                         else if(Hold == obj_Player.Index)
                         {
                            //no one is now holding this object
                            Hold = (-1);
                         }
                         scr_SendUpdateObjectHold();
                     //}
                 }
            }
        }
    }
}
