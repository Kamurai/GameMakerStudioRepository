var size;

//receive packet/message from server
size = receivemessage(obj_Connection.socket);
if(size < 0) 
    exit; //no packet received
if(size > 0) 
{ 
    //packet received, process it
    switch(readbyte()) 
    {
            
        case chat:
            var moo = readstring();
            scr_chat_write(moo,readint());
            //scr_chat_write(readstring(),readint());
            break;
            
        case setindex:
            obj_Player.Index = readshort();
            break;
            
        case getplayers:
            obj_Controller.connectedClients=readbyte(); //read Roster size
            for(i=0;i<obj_Controller.connectedClients;i+=1)
            {
                obj_Controller.Roster[i]=readstring(); //read player name
            }
            break;
            
        case getobjects: //this is intended to get existing objects for a new player
        //var temp,tempLimit,tempX,tempY,tempColor,tempHold;
        
            obj_Controller.Startup = 1;
            tempLimit=readbyte(); //read Object Roster size
            for(temp=0;temp<tempLimit;temp+=1)
            {
                obj_Controller.ObjectRoster[temp] = readbyte(); //object master index
                
                tempX=readshort();   //x location
                tempY=readshort();   //y location
                
                tempColor=readshort();  //read color
                            
                tempHold=readshort();   //read hold
                 
                //scr_CreateObjectByIndex(tempX,tempY,obj_Controller.ObjectRoster[temp]);
                
                with(master_Game)
                {
                    if(Index == other.temp)
                    {
                        image_index = other.tempColor;    //read color
                        Hold=other.tempHold;              //read hold
                        FromServer = 1;
                    }
                }
                
            }
            obj_Controller.Startup = 0;
            break;
                
        case leave:
        //var tempName;
            tempName = readstring();
            scr_chat_write("System: " + tempName + " has disconnected.",c_teal);
            break;     
        
        default:
            game_end();    
    }  
}
else 
{ 
    game_end();  
    //lost connection
    obj_Controller.isConnected=0;
}
