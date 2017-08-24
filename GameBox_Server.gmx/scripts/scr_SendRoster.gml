 //sort roster
    scr_Sort_Roster();
    
    //send roster
    clearbuffer();
    writebyte(getplayers);
    writebyte(obj_Controller.PlayerCount);
    
    //walk through roster
    for(i=0;i<obj_Controller.PlayerCount;i+=1)
    {
        //send name     
        writestring(obj_Controller.Roster[i]);
    }
    
    send_client("all");
    
    //update indexes at client side
    with(obj_Player)
    {
        clearbuffer();
        writebyte(setindex); //set index on client side
        writeshort(Index);
        send_client("self");
    }
