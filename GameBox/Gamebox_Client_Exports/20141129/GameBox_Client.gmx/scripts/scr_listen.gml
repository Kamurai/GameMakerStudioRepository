var size;

//receive packet/message from server
size = receivemessage(obj_Connection.socket);
monkey = size;
if(size < 0) 
    exit; //no packet received
if(size > 0) 
{
 
    //packet received, process it
    switch(readbyte()) 
    { 
        case chat:
            var tempChat = readstring();
            scr_chat_write(tempChat,readint());
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
                tempZ=readshort();   //depth
                
                tempColor=readshort();  //read color
                tempHold=readshort();   //read hold
                
                CurrentAlpha=readdouble();  //read alpha angle
                CurrentImageAngle=readdouble(); //read rotation
                
                scr_CreateObjectByIndex(tempX,tempY,obj_Controller.ObjectRoster[temp]);
                
                with(master_Game)
                {
                    if(Index == other.temp)
                    {
                        FromServer = 1;
                        image_index = other.tempColor;    //set color
                        Hold=other.tempHold;              //set hold
                        depth=other.tempZ;                //set depth
                        
                        AbsoluteX = other.tempX;
                        AbsoluteY = other.tempY;
                        CurrentAlpha = other.CurrentAlpha;  //set alpha angle
                        CurrentImageAngle = other.CurrentImageAngle;    //set rotation
                    
                        scr_EncodeAlpha(); //this should be oriented at 0 degrees room rotation
                    }
                }
                
                tempTitle=readstring();   //read chart title key
                tempScore=readshort();   //read chart score key
                
                with(obj_Chart)
                {
                    if(other.temp == Index)
                    {
                        Title = other.tempTitle;
                        Score = other.tempScore;
                    }
                }
                
                tempGold=readshort();       //read Gold
                tempTrade=readshort();      //read Trade
                tempPolitics=readshort();   //read Politics
                tempBuilding=readshort();   //read Building
                
                with(obj_CatanScoreChart)
                {
                    if(other.temp == Index)
                    {
                        Gold = other.tempGold;
                        Trade = other.tempTrade;
                        Politics = other.tempPolitics;
                        Building = other.tempBuilding;
                    }
                }
            }
            obj_Controller.Startup = 0;
            break;
            
        case updateobject: //this is intended to update an existing object
        //var temp;
        
            temp=readbyte(); //object roster key
                
            with(master_Game)
            {
                if(other.temp == Index)
                {
                    x=readshort();     //x location
                    y=readshort();     //y location
                    depth=readshort(); //depth
                    Lastx=x;
                    Lasty=y;
                    LastDepth=depth;
                }
            }        
            break;
            
        case updateobjectrotation: //this is intended to update an existing object with rotation in mind
        //var temp;
        
            temp=readbyte(); //object roster key
                
            with(master_Game)
            {
                if(other.temp == Index)
                {
                    AbsoluteX=readshort();     //x location
                    AbsoluteY=readshort();     //y location
                    depth=readshort(); //depth
                    LastDepth=depth;
                    CurrentAlpha=readdouble();
                    CurrentImageAngle=readdouble();
                    
                    scr_EncodeAlpha();
                }
            }        
            break;
            
        case updateobjectdepth: //this is intended update an existing object's depth
        
            temp=readbyte(); //object roster key
            
            with(master_Game)
            {
                if(other.temp == Index)
                {
                    depth=readshort(); //depth
                    LastDepth=depth;
                }
            }
            break;
        
        case updateobjectcolor:
        //var temp,tempColor;
        
            temp=readbyte(); //object roster key
            tempColor=readshort(); //Color (image index)
            
            with(master_Game)
            {
                if(Index == other.temp)
                {
                    image_index = other.tempColor;    //read color
                }
            }
            break;
        
        case updateobjecthold:
        //var temp,tempHold; 
            temp=readbyte();        //read object roster key
            tempHold=readshort();   //read player roster key
                
            with(master_Game)
            {
                if(other.temp == Index)
                {
                    Hold = other.tempHold;
                }
            }
            break;
            
        case updatecharttitle:
        //var temp,tempTitle;    
            temp=readbyte();        //read object roster key
            tempTitle=readstring();   //read chart title key
                
            with(obj_Chart)
            {
                if(other.temp == Index)
                {
                    Title = other.tempTitle;
                }
            }
            break;
            
        case updatechartscore:
        //var temp,tempScore;
            
            temp=readbyte();        //read object roster key
            tempScore=readshort();   //read chart score key
                
            with(obj_Chart)
            {
                if(other.temp == Index)
                {
                    Score = other.tempScore;
                }
            }
            break;
            
        case updatecatanchartscores:
        //var temp,tempGold,tempTrade,tempPolitics,tempBuilding;
            temp=readbyte();        //read object roster key
            
            tempGold=readshort();   //read Gold
            tempTrade=readshort();   //read Trade
            tempPolitics=readshort();   //read Politics
            tempBuilding=readshort();   //read Building
            
            with(obj_CatanScoreChart)
            {
                if(other.temp == Index)
                {
                    Gold = other.tempGold;
                    Trade = other.tempTrade;
                    Politics = other.tempPolitics;
                    Building = other.tempBuilding;
                }
            }
            break;
            
        case makeobject: //this is intended to create a new object
        //var tempKey,tempX,tempY,tempColor,tempHold;
            tempKey=readbyte(); //object roster key
             
            obj_Controller.ObjectRoster[tempKey] = readbyte(); //object master index
            
            tempX=readshort();   //x location
            tempY=readshort();   //y location
            tempZ=readshort();   //depth
            tempColor=readshort();  //read color
                            
            tempHold=readshort();   //read hold
            
            CurrentAlpha=readdouble();  //read alpha angle
            CurrentImageAngle=readdouble(); //read rotation
            
            scr_CreateObjectByIndex(tempX,tempY,obj_Controller.ObjectRoster[tempKey]);
            
            with(master_Game)
            {
                if(Index == other.tempKey)
                {
                    FromServer = 1;
                    image_index = other.tempColor;      //set color
                    Hold=other.tempHold;                //set hold
                    depth=other.tempZ;                  //set depth
                    
                    AbsoluteX = other.tempX;
                    AbsoluteY = other.tempY;
                    CurrentAlpha = other.CurrentAlpha;  //set alpha angle
                    CurrentImageAngle = other.CurrentImageAngle;    //set rotation
                    
                    scr_EncodeAlpha();
                }
            }
                
            break;
            
        case removeobject: //
        //var tempKey;
            //obj_Controller.FromServer = 1;
            tempKey=readbyte(); //object roster key
            
            with(master_Game)
            {
                if(other.tempKey == Index)
                {
                    FromServer = 1;
                    instance_destroy();
                }
            }
           //obj_Controller.FromServer = 0;
            
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
