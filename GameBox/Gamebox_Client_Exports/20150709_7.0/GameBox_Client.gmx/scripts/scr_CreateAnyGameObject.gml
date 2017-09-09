//set Master index
scr_SetMasterIndex();
//assign Roster Key
obj_Controller.ObjectCount += 1;
Index = -1;

//walk through ObjectRoster
for(i=0;i<(obj_Controller.ObjectCount-1);i+=1)
{
    if(obj_Controller.ObjectRoster[i] == -1)
    {
        Index = i;
        obj_Controller.ObjectRoster[i] = MasterIndex;
    }
}
if(Index == -1)
{
    Index = obj_Controller.ObjectCount-1;
    obj_Controller.ObjectRoster[Index] = MasterIndex;
}

//define variables
Lastx = x;
Lasty = y;
LastDepth = depth;
temp_x = 0;
temp_y = 0;
SubMenuIndex = 0;
Limit = 4;
Pressed = 0;
image_index = 0; //obj_Color.Index;
image_speed = 0;
Selected = false;
Hold = (-1);
FromServer = 0;
//set alarms
alarm[0] = 1;

//additional scripts
scr_DefineForRotation();

AbsoluteX = x;
AbsoluteY = y;
CurrentAlpha = alpha;
CurrentImageAngle = 0.0;
CurrentImageAngle = image_angle;
CurrentTableAngle = 0.0;
CurrentTableAngle = obj_Table.image_angle;

Contact = false; //because objects are created being held, this should set to true immediately
