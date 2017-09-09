//update ObjectRoster
obj_Controller.ObjectRoster[Index] = -1;
obj_Controller.ObjectCount -= 1;

//update server
if(FromServer == 0)
{
    //update server that an object left
    scr_SendRemoveObject();
}

isDraw = false;

if(obj_MainDisplay.Target != (-1))
{
    if(obj_MainDisplay.Target == id)
    {
        obj_MainDisplay.Index = (-1);
    }
}