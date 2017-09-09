    //send object roster
    clearbuffer();
    writebyte(getobjects);
    writebyte(obj_Controller.ObjectCount); //send object count
    
    //walk through Object roster
    for(i=0;i<obj_Controller.ObjectCount;i+=1)
    {
        writebyte(obj_Controller.ObjectRoster[i]); //send object master key
        writeshort(obj_Controller.ObjectXRoster[i]); //send x location
        writeshort(obj_Controller.ObjectYRoster[i]); //send y location
        
        writeshort(obj_Controller.ObjectColorRoster[i]); //send Color (image index)
        
        writeshort(obj_Controller.ObjectHoldRoster[i]); //send Hold (player index)
    }
    
    send_client("self");
