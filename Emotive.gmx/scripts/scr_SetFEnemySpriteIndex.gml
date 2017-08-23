if(obj_Controller.EmotionState == 0)
    {
        if(FaceRight == true)
        {
            sprite_index = spr_Flyer_0_Right;
        }
        else
        {
            sprite_index = spr_Flyer_0_Left;
        }
    }
    else if(obj_Controller.EmotionState == 1)
    {
        if(FaceRight == true)
        {
            sprite_index = spr_Flyer_1_Right;
        }
        else
        {
            sprite_index = spr_Flyer_1_Left;
        }
    }
    else if(obj_Controller.EmotionState == 2)
    {
        if(FaceRight == true)
        {
            sprite_index = spr_Flyer_2_Right;
        }
        else
        {
            sprite_index = spr_Flyer_2_Left;
        }
    }
    else if(obj_Controller.EmotionState == 3)
    {
        if(FaceRight == true)
        {
            sprite_index = spr_Flyer_3_Right;
        }
        else
        {
            sprite_index = spr_Flyer_3_Left;
        }   
    }
    if(obj_Controller.EmotionState == 4) //losing state
    {
        instance_destroy();
    }
