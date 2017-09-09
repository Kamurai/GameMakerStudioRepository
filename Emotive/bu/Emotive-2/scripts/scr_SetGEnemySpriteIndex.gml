if(obj_Controller.EmotionState == 0)
    {
        if(FaceRight == true)
        {
            sprite_index = spr_Goomba_0_Right;
        }
        else
        {
            sprite_index = spr_Goomba_0_Left;
        }
    }
    else if(obj_Controller.EmotionState == 1)
    {
        if(FaceRight == true)
        {
            sprite_index = spr_Goomba_1_Right;
        }
        else
        {
            sprite_index = spr_Goomba_1_Left;
        }
    }
    else if(obj_Controller.EmotionState == 2)
    {
        if(FaceRight == true)
        {
            sprite_index = spr_Goomba_2_Right;
        }
        else
        {
            sprite_index = spr_Goomba_2_Left;
        }
    }
    else if(obj_Controller.EmotionState == 3)
    {
        if(FaceRight == true)
        {
            sprite_index = spr_Goomba_3_Right;
        }
        else
        {
            sprite_index = spr_Goomba_3_Left;
        }   
    }
    if(obj_Controller.EmotionState == 4) //losing state
    {
        instance_destroy();
    }
