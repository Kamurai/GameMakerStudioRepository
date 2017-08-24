if(obj_Controller.PlayerCount == 1) //if first person to connect
{
    //declare first!
    clearbuffer();
    writebyte(chat);
    writestring("System: First!");
    writeint(c_maroon);
    send_client("self");
}
else
{
    scr_SendRoster();
}

Name = obj_Controller.Roster[Index];

scr_SendObjectRoster();
