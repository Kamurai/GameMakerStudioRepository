if(obj_Controller.FreeRotation == true)
{
     if(obj_Player.Holding == 0)
     {
         if(Hold < 0)
         {
            //Rotate View
             scr_SubRotation(argument0, id, obj_Table);
             scr_DefineForRotation();
         }
         else
         {
             scr_SendUpdateObjectRotation();
         }
     }
     else
     {
         if(Hold >= 0)
         {
            //Rotate Game Object
             scr_Rotation(argument0);
             scr_SendUpdateObjectRotation();
         }
     }
}
