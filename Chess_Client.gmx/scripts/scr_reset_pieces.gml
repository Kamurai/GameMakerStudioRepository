//Player pieces
with(instance_create(40,320,obj_rook)) 
{ 
    sprite_index=spr_rook;
    //image_index=0;
    if(global.playerIndex == 1)
    {
        image_index=0;
    }
    else if(global.playerIndex == 2)
    {
        image_index=1;
    }
    image_speed=0;
    ID=0; 
}
with(instance_create(80,320,obj_knight)) 
{ 
    sprite_index=spr_knight; 
    //image_index=0;
    if(global.playerIndex == 1)
    {
        image_index=0;
    }
    else if(global.playerIndex == 2)
    {
        image_index=1;
    }
    image_speed=0;
    ID=1; 
}
with(instance_create(120,320,obj_bishop)) 
{ 
    sprite_index=spr_bishop; 
    //image_index=0;
    if(global.playerIndex == 1)
    {
        image_index=0;
    }
    else if(global.playerIndex == 2)
    {
        image_index=1;
    }
    image_speed=0;
    ID=2; 
}
with(instance_create(160,320,obj_king)) 
{ 
    sprite_index=spr_king; 
    //image_index=0;
    if(global.playerIndex == 1)
    {
        image_index=0;
    }
    else if(global.playerIndex == 2)
    {
        image_index=1;
    }
    image_speed=0;
    ID=3; 
}
with(instance_create(200,320,obj_queen)) 
{ 
    sprite_index=spr_queen; 
    //image_index=0;
    if(global.playerIndex == 1)
    {
        image_index=0;
    }
    else if(global.playerIndex == 2)
    {
        image_index=1;
    }
    image_speed=0;
    ID=4; 
}
with(instance_create(240,320,obj_bishop)) 
{ 
    sprite_index=spr_bishop; 
    //image_index=0;
    if(global.playerIndex == 1)
    {
        image_index=0;
    }
    else if(global.playerIndex == 2)
    {
        image_index=1;
    }
    image_speed=0;
    ID=5; 
}
with(instance_create(280,320,obj_knight)) 
{ 
    sprite_index=spr_knight; 
    //image_index=0;
    if(global.playerIndex == 1)
    {
        image_index=0;
    }
    else if(global.playerIndex == 2)
    {
        image_index=1;
    }
    image_speed=0;
    ID=6; 
}
with(instance_create(320,320,obj_rook)) 
{ 
    sprite_index=spr_rook; 
    //image_index=0;
    if(global.playerIndex == 1)
    {
        image_index=0;
    }
    else if(global.playerIndex == 2)
    {
        image_index=1;
    }
    image_speed=0;
    ID=7; 
}
with(instance_create(40,280,obj_pawn)) 
{ 
    sprite_index=spr_pawn; 
    //image_index=0;
    if(global.playerIndex == 1)
    {
        image_index=0;
    }
    else if(global.playerIndex == 2)
    {
        image_index=1;
    }
    image_speed=0;
    ID=8; 
}
with(instance_create(80,280,obj_pawn)) 
{ 
    sprite_index=spr_pawn; 
    //image_index=0;
    if(global.playerIndex == 1)
    {
        image_index=0;
    }
    else if(global.playerIndex == 2)
    {
        image_index=1;
    }
    image_speed=0;
    ID=9; 
}
with(instance_create(120,280,obj_pawn)) 
{ 
    sprite_index=spr_pawn; 
    //image_index=0;
    if(global.playerIndex == 1)
    {
        image_index=0;
    }
    else if(global.playerIndex == 2)
    {
        image_index=1;
    }
    image_speed=0;
    ID=10; 
}
with(instance_create(160,280,obj_pawn)) 
{ 
    sprite_index=spr_pawn; 
    //image_index=0;
    if(global.playerIndex == 1)
    {
        image_index=0;
    }
    else if(global.playerIndex == 2)
    {
        image_index=1;
    }
    image_speed=0;
    ID=11; 
}
with(instance_create(200,280,obj_pawn)) 
{ 
    sprite_index=spr_pawn; 
    //image_index=0;
    if(global.playerIndex == 1)
    {
        image_index=0;
    }
    else if(global.playerIndex == 2)
    {
        image_index=1;
    }
    image_speed=0;
    ID=12; 
}
with(instance_create(240,280,obj_pawn)) 
{ 
    sprite_index=spr_pawn; 
    //image_index=0;
    if(global.playerIndex == 1)
    {
        image_index=0;
    }
    else if(global.playerIndex == 2)
    {
        image_index=1;
    }
    image_speed=0;
    ID=13; 
}
with(instance_create(280,280,obj_pawn)) 
{ 
    sprite_index=spr_pawn; 
    //image_index=0;
    if(global.playerIndex == 1)
    {
        image_index=0;
    }
    else if(global.playerIndex == 2)
    {
        image_index=1;
    }
    image_speed=0;
    ID=14; 
}
with(instance_create(320,280,obj_pawn)) 
{ 
    sprite_index=spr_pawn; 
    //image_index=0;
    if(global.playerIndex == 1)
    {
        image_index=0;
    }
    else if(global.playerIndex == 2)
    {
        image_index=1;
    }
    image_speed=0;
    ID=15; 
}

//Opponent pieces
with(instance_create(40,40,obj_rook)) 
{ 
    sprite_index=spr_rook; 
    //image_index=1;
    if(global.playerIndex == 1)
    {
        image_index=1;
    }
    else if(global.playerIndex == 2)
    {
        image_index=0;
    }
    image_speed=0;
    ID=7; 
}
with(instance_create(80,40,obj_knight)) 
{ 
    sprite_index=spr_knight; 
    //image_index=1;
    if(global.playerIndex == 1)
    {
        image_index=1;
    }
    else if(global.playerIndex == 2)
    {
        image_index=0;
    }
    image_speed=0;
    ID=6; 
}
with(instance_create(120,40,obj_bishop)) 
{ 
    sprite_index=spr_bishop; 
    //image_index=1;
    if(global.playerIndex == 1)
    {
        image_index=1;
    }
    else if(global.playerIndex == 2)
    {
        image_index=0;
    }
    image_speed=0;
    ID=5; 
}
with(instance_create(200,40,obj_king)) 
{ 
    sprite_index=spr_king; 
    //image_index=1;
    if(global.playerIndex == 1)
    {
        image_index=1;
    }
    else if(global.playerIndex == 2)
    {
        image_index=0;
    }
    image_speed=0;
    ID=3; 
}
with(instance_create(160,40,obj_queen)) 
{ 
    sprite_index=spr_queen; 
    //image_index=1;
    if(global.playerIndex == 1)
    {
        image_index=1;
    }
    else if(global.playerIndex == 2)
    {
        image_index=0;
    }
    image_speed=0;
    ID=4; 
}
with(instance_create(240,40,obj_bishop)) 
{ 
    sprite_index=spr_bishop; 
    //image_index=1;
    if(global.playerIndex == 1)
    {
        image_index=1;
    }
    else if(global.playerIndex == 2)
    {
        image_index=0;
    }
    image_speed=0;
    ID=2; 
}
with(instance_create(280,40,obj_knight)) 
{ 
    sprite_index=spr_knight; 
    //image_index=1;
    if(global.playerIndex == 1)
    {
        image_index=1;
    }
    else if(global.playerIndex == 2)
    {
        image_index=0;
    }
    image_speed=0;
    ID=1; 
}
with(instance_create(320,40,obj_rook)) 
{ 
    sprite_index=spr_rook; 
    //image_index=1;
    if(global.playerIndex == 1)
    {
        image_index=1;
    }
    else if(global.playerIndex == 2)
    {
        image_index=0;
    }
    image_speed=0;
    ID=0; 
}
with(instance_create(40,80,obj_pawn)) 
{ 
    sprite_index=spr_pawn; 
    //image_index=1;
    if(global.playerIndex == 1)
    {
        image_index=1;
    }
    else if(global.playerIndex == 2)
    {
        image_index=0;
    }
    image_speed=0;
    ID=15; 
}
with(instance_create(80,80,obj_pawn)) 
{ 
    sprite_index=spr_pawn; 
    //image_index=1;
    if(global.playerIndex == 1)
    {
        image_index=1;
    }
    else if(global.playerIndex == 2)
    {
        image_index=0;
    }
    image_speed=0;
    ID=14; 
}
with(instance_create(120,80,obj_pawn)) 
{ 
    sprite_index=spr_pawn; 
    //image_index=1;
    if(global.playerIndex == 1)
    {
        image_index=1;
    }
    else if(global.playerIndex == 2)
    {
        image_index=0;
    }
    image_speed=0;
    ID=13; 
}
with(instance_create(160,80,obj_pawn)) 
{ 
    sprite_index=spr_pawn; 
    //image_index=1;
    if(global.playerIndex == 1)
    {
        image_index=1;
    }
    else if(global.playerIndex == 2)
    {
        image_index=0;
    }
    image_speed=0;
    ID=12; 
}
with(instance_create(200,80,obj_pawn)) 
{ 
    sprite_index=spr_pawn; 
    //image_index=1;
    if(global.playerIndex == 1)
    {
        image_index=1;
    }
    else if(global.playerIndex == 2)
    {
        image_index=0;
    }
    image_speed=0;
    ID=11; 
}
with(instance_create(240,80,obj_pawn)) 
{ 
    sprite_index=spr_pawn; 
    //image_index=1;
    if(global.playerIndex == 1)
    {
        image_index=1;
    }
    else if(global.playerIndex == 2)
    {
        image_index=0;
    }
    image_speed=0;
    ID=10; 
}
with(instance_create(280,80,obj_pawn)) 
{ 
    sprite_index=spr_pawn; 
    //image_index=1;
    if(global.playerIndex == 1)
    {
        image_index=1;
    }
    else if(global.playerIndex == 2)
    {
        image_index=0;
    }
    image_speed=0;
    ID=9; 
}
with(instance_create(320,80,obj_pawn)) 
{ 
    sprite_index=spr_pawn; 
    //image_index=1;
    if(global.playerIndex == 1)
    {
        image_index=1;
    }
    else if(global.playerIndex == 2)
    {
        image_index=0;
    }
    image_speed=0;
    ID=8; 
}
