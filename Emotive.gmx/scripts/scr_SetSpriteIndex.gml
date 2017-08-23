if(obj_Controller.EmotionState == 0)
    {
        if(FaceRight == true)
        {
            sprite_index = spr_Character_0_Right;
        }
        else
        {
            sprite_index = spr_Character_0_Left;
        }
    }
    else if(obj_Controller.EmotionState == 1)
    {
        if(FaceRight == true)
        {
            sprite_index = spr_Character_1_Right;
        }
        else
        {
            sprite_index = spr_Character_1_Left;
        }
    }
    else if(obj_Controller.EmotionState == 2)
    {
        if(FaceRight == true)
        {
            sprite_index = spr_Character_2_Right;
            MovePercentage = 1.00;
        }
        else
        {
            sprite_index = spr_Character_2_Left;
            MovePercentage = 1.00;
        }
    }
    else if(obj_Controller.EmotionState == 3)
    {
        if(FaceRight == true)
        {
            sprite_index = spr_Character_3_Right;
            MovePercentage = 3.00;
        }
        else
        {
            sprite_index = spr_Character_3_Left;
            MovePercentage = 3.00;
        }   
    }
    if(obj_Controller.EmotionState == 4) //losing state
    {
        instance_destroy(); 
    }
