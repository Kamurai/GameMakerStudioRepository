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
        //writeshort(obj_Controller.ObjectZRoster[i]); //send depth
        
        writeshort(obj_Controller.ObjectColorRoster[i]); //send Color (image index)
        writeshort(obj_Controller.ObjectHoldRoster[i]); //send Hold (player index)
        
        //writedouble(obj_Controller.AlphaRoster[i]);  //send alpha angle
        //writedouble(obj_Controller.ImageAngleRoster[i]); //send rotation angle
        
        writestring(obj_Controller.ChartTitleRoster[i]); //send Chart Title
        writeshort(obj_Controller.ChartScoreRoster[i]); //send Chart Score
                
        writeshort(obj_Controller.CatanChartGoldRoster[i]); //send Catan Chart Gold
        writeshort(obj_Controller.CatanChartTradeRoster[i]); //send Catan Chart Trade
        writeshort(obj_Controller.CatanChartPoliticsRoster[i]); //send Catan Chart Politics
        writeshort(obj_Controller.CatanChartBuildingRoster[i]); //send Catan Chart Building
        
    }
    
    send_client("self");
