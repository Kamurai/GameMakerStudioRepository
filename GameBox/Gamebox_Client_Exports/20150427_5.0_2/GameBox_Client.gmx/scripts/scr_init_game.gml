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
    clearbuffer();
    writebyte(getplayers);
    writebyte(obj_Controller.PlayerCount);
    
    with(obj_Player) //Each player
    {
        writestring(Name);      //Sends their name
        send_client("others");  //to the others
        
        clearbuffer();          //pivot: how do server / client sort the roster?
        writebyte(setindex);    //Send their index
        writeshort(index);
        send_client("self");    //itself
    }
}
