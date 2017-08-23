//update server that there is a new object
if(obj_Controller.Startup == 0)
{
    if(FromServer == 0)
    {
        x = mouse_x;
        y = mouse_y;
        Selected = 1;
        obj_Player.Holding = 1;
        Hold = obj_Player.Index;
        //update server with creating an object
        scr_SendMakeObject();
    }
    else if(FromServer == 1)
    {
        FromServer = 0;
    }
}