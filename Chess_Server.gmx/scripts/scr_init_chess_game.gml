clearbuffer();

writebyte(getplayers);
writebyte(global.chessPlayers);

with(obj_player)
{
    if(gameType=other.gameType) 
        writestring(myName);
    send_client("all");
}


if(global.chessPlayers<=2) 
{ 
    //the two competitors
    clearbuffer();
    writebyte(setplayerstate);
    writebyte(1);
    send_client("self"); //tell client that he/she is a player
    isPlayer=1;
}

if(global.chessPlayers=2) 
{ 
    //last player to connect
    clearbuffer();
    writebyte(setturn);
    writebyte(0);
    send_client("self"); //tell this client that it's not his/hers turn
    
    clearbuffer();
    writebyte(setturn);
    writebyte(1);
    send_client("others"); //tell other client that it's his/hers turn
    
    clearbuffer();
    writebyte(chat);
    writestring("System: Game started.");
    writeint(c_maroon);
    send_client("all");
    
    scr_reset_pieces();
    myImageSingle=1;
    
    with(obj_player)
    {
        
        clearbuffer();
        writebyte(setopponent);
        writestring(self.myName);
        send_client("others");
        
        clearbuffer(); //pivot: added this message to set the index
        writebyte(setindex);
        index += 1;        
        writeshort(self.index);
        send_client("self");
        
        
    }
    
}
else if(global.chessPlayers>2) 
{
    clearbuffer();
    writebyte(setplayerstate);
    writebyte(0);
    send_client("self"); //tell client that he/she is a spectator
    
    clearbuffer();
    writebyte(setspectator);
    writestring(myName);
    send_client("others");
    
    var execline;
    execline="";
    clearbuffer();
    writebyte(speccreate);
    for(i=0;i<instance_number(obj_pawn);i+=1) 
    {
        execline=execline + " with(instance_create(" + string(instance_find(obj_pawn,i).x) + "," + string(instance_find(obj_pawn,i).y) + ",obj_pawn)) { sprite_index=spr_pawn; ID=" + string(instance_find(obj_pawn,i).ID) + "; image_single=" + string(instance_find(obj_pawn,i).image_single) + "; }";
    }
    for(i=0;i<instance_number(obj_knight);i+=1) 
    {
        execline=execline + " with(instance_create(" + string(instance_find(obj_knight,i).x) + "," + string(instance_find(obj_knight,i).y) + ",obj_knight)) { sprite_index=spr_knight ID=" + string(instance_find(obj_knight,i).ID) + "; image_single=" + string(instance_find(obj_knight,i).image_single) + "; }";
    }
    for(i=0;i<instance_number(obj_rook);i+=1) 
    {
        execline=execline + " with(instance_create(" + string(instance_find(obj_rook,i).x) + "," + string(instance_find(obj_rook,i).y) + ",obj_rook)) { sprite_index=spr_rook; ID=" + string(instance_find(obj_rook,i).ID) + "; image_single=" + string(instance_find(obj_rook,i).image_single) + "; }";
    }
    for(i=0;i<instance_number(obj_bishop);i+=1) 
    {
        execline=execline + " with(instance_create(" + string(instance_find(obj_bishop,i).x) + "," + string(instance_find(obj_bishop,i).y) + ",obj_bishop)) { sprite_index=spr_bishop; ID=" + string(instance_find(obj_bishop,i).ID) + "; image_single=" + string(instance_find(obj_bishop,i).image_single) + "; }";
    }
    for(i=0;i<instance_number(obj_queen);i+=1) 
    {
        execline=execline + " with(instance_create(" + string(instance_find(obj_queen,i).x) + "," + string(instance_find(obj_queen,i).y) + ",obj_queen)) { sprite_index=spr_queen; ID=" + string(instance_find(obj_queen,i).ID) + "; image_single=" + string(instance_find(obj_queen,i).image_single) + "; }";
    }
    for(i=0;i<instance_number(obj_king);i+=1) 
    {
        execline=execline + " with(instance_create(" + string(instance_find(obj_king,i).x) + "," + string(instance_find(obj_king,i).y) + ",obj_king)) { sprite_index=spr_king; ID=" + string(instance_find(obj_king,i).ID) + "; image_single=" + string(instance_find(obj_king,i).image_single) + "; }";
    }
    writestring(execline);
    send_client("self");
}
