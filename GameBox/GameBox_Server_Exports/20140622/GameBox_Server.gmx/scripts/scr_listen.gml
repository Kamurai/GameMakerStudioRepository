   switch (readbyte())
    {
            
       case chat:
       //var String, color;
            String=readstring();
            color=readint();
            
            clearbuffer();
            writebyte(chat);
            writestring(String);
            writeint(color);
            send_client("others");
            break;
            
        case setname: 
        //var tempName, tempDog;
            tempName = readstring();
            
            with(obj_Player)
            {
                if(Name == other.tempName)
                {
                    other.Refused = 1;
                }   
            }
        
            if(Refused == 1)
            {
                closesocket(socket);
                instance_destroy();
               // break;
            }
            else
            {        
                obj_Controller.Roster[Index]=tempName;
                Name = tempName;
            }
            break;
            
        case leave:
            instance_destroy();
            break;
        
        case updateobject:
        //var tempKey, tempX, tempY;
            
            tempKey=readbyte();    //read object roster key
            tempX=readshort();  //read x location
            tempY=readshort();  //read y location
            
            //pivot: store new object position on server
            obj_Controller.ObjectXRoster[tempKey] = tempX;
            obj_Controller.ObjectYRoster[tempKey] = tempY;            
            
            clearbuffer();
            writebyte(updateobject);
            writebyte(tempKey);    //send object roster key
            writeshort(tempX);  //send x location
            writeshort(tempY);  //send y location
            send_client("others");
            break;
            
        case updateobjectcolor:
        //var tempKey, tempColor;
            //instance_destroy();
            tempKey=readbyte();    //read object roster key
            tempColor=readshort();  //read object index image
            obj_Controller.ObjectColorRoster[tempKey] = tempColor;
            
            clearbuffer();
            writebyte(updateobjectcolor);
            writebyte(tempKey);    //send object roster key
            writebyte(tempColor);  //send object index image
            send_client("others");            
            break;
            
        case updateobjecthold:
        //var tempKey, tempHold;
            
            tempKey=readbyte();    //read object roster key
            tempHold=readshort();  //read player roster key
            obj_Controller.ObjectHoldRoster[tempKey] = tempHold;
            
            clearbuffer();
            writebyte(updateobjecthold);
            writebyte(tempKey);    //send object roster key
            writeshort(tempHold);  //send player roster key
            send_client("others");            
            break;
            
        case updatecharttitle:
        //var tempKey, tempTitle;
            
            tempKey=readbyte();    //read object roster key
            tempTitle=readstring();  //read chart title
            obj_Controller.ChartTitleRoster[tempKey] = tempTitle;
            
            clearbuffer();
            writebyte(updatecharttitle);
            writebyte(tempKey);    //send object roster key
            writestring(tempTitle);  //send chart title
            send_client("others");            
            break;
            
        case updatechartscore:
        //var tempKey, tempScore;
            
            temp=readbyte();    //read object roster key
            tempScore=readshort();  //read chart score
            obj_Controller.ChartScoreRoster[tempKey] = tempScore;
            
            clearbuffer();
            writebyte(updatechartscore);
            writebyte(tempKey);    //send object roster key
            writeshort(tempScore);  //send chart score
            send_client("others");            
            break;
         
        case updatecatanchartscores:
        //var tempKey, tempVictory, tempGold, tempTrade, tempPolitics, tempBuilding;
            
            tempKey=readbyte();    //read object roster key
            tempVictory=readshort();  //read Victory
            tempGold=readshort();  //read Gold
            tempTrade=readshort();  //read Trade
            tempPolitics=readshort();  //read Politics
            tempBuilding=readshort();  //read Building
            
            obj_Controller.CatanChartVictoryRoster[tempKey] = tempVictory;
            obj_Controller.CatanChartGoldRoster[tempKey] = tempGold;
            obj_Controller.CatanChartTradeRoster[tempKey] = tempTrade;
            obj_Controller.CatanChartPoliticsRoster[tempKey] = tempPolitics;
            obj_Controller.CatanChartBuildingRoster[tempKey] = tempBuilding;
            
            clearbuffer();
            writebyte(updatecatanchartscores);
            writebyte(tempKey);    //send object roster key
            writeshort(tempVictory);  //send Victory
            writeshort(tempGold);  //send Gold
            writeshort(tempTrade);  //send Trade
            writeshort(tempPolitics);  //send Politics
            writeshort(tempBuilding);  //send Building
            send_client("others");            
            break;
        
         case makeobject: //this is intended to create a new object on the other clients
         //var tempKey, tempMaster, tempX, tempY, tempColor, tempHold;
            tempKey=readbyte();     //read object roster key
            tempMaster=readbyte();  //read object master key
            tempX=readshort();      //read x location
            tempY=readshort();      //read y location
            tempColor=readshort();  //read color
            tempHold=readshort();   //read hold
                        
            //pivot: store new object on server
            obj_Controller.ObjectRoster[tempKey] = tempMaster;
            obj_Controller.ObjectXRoster[tempKey] = tempX;
            obj_Controller.ObjectYRoster[tempKey] = tempY;
            obj_Controller.ObjectColorRoster[tempKey] = tempColor;
            obj_Controller.ObjectHoldRoster[tempKey] = tempHold;
            
            obj_Controller.ObjectCount += 1;
            
            clearbuffer();
            writebyte(makeobject);
            writebyte(tempKey);     //send object roster key
            writebyte(tempMaster);  //send object master key
            writeshort(tempX);      //send x location
            writeshort(tempY);      //send y location
            writeshort(tempColor);  //send color
            writeshort(tempHold);   //send hold
            send_client("others");
            break;
            
        case removeobject:
        //var tempKey;
            tempKey=readbyte();        //read object roster key
            
            //pivot: remove object from server
            obj_Controller.ObjectRoster[tempKey] = (-1);            
            obj_Controller.ObjectXRoster[tempKey] = (-1);
            obj_Controller.ObjectYRoster[tempKey] = (-1);     
            obj_Controller.ObjectColorRoster[tempKey] = (-1);
            obj_Controller.ObjectHoldRoster[tempKey] = (-1);
            
            obj_Controller.ObjectCount -= 1;       
            
            clearbuffer();
            writebyte(removeobject);
            writebyte(tempKey);        //send object roster key
            send_client("others");
            break;
        
        //No identifier present in the message, so show an error message
        default:
            show_message("Unknown packet received.");
    }
