//Draws the minimap
//This code will need changing, as the things you wish to draw may differ

//Arg0:  X position to draw minimap
//Arg1:  Y position to draw minimap
//Arg2:  Width of minimap
//Arg3:  Height of minimap

//Arg4:  X in  room to start drawing from
//Arg5:  Y in  room to start drawing from
//Arg6:  X in  room to end drawing from
//Arg7:  Y in  room to end drawing from

//Arg8:  Minimap background color

draw_set_color(argument8);
draw_rectangle(argument0,argument1,argument0+argument2,argument1+argument3,false);

//Copy the following code and change the obj_player to the object of your choice
//Also change the sprite it's drawing from mkr_player to something else
//with(obj_player)
with(Friendly)
{
    if( (x >= argument4) && (y >= argument5) && (x <= argument6) && (y <= argument7) )
    {
        //determine sprite width
            //if 8 by 8
        if( (sprite_width <= 8) && (sprite_height <= 8) )
        {
            draw_sprite(mkr_Friendly_8, -1, argument0+((x-argument4)*(argument2/(argument6-argument4))), argument1+((y-argument5)*(argument3/(argument7-argument5))));
        }
        //if 16 by 16
        else if( (sprite_width == 16) )//&& (sprite_height == 16) )
        {
            draw_sprite(mkr_Friendly_16,-1,argument0+((x-argument4)*(argument2/(argument6-argument4))),argument1+((y-argument5)*(argument3/(argument7-argument5))));
        }
        //if 32 by 32
        else if( (sprite_width == 32) )//&& (sprite_height == 32) )
        {
            draw_sprite(mkr_Friendly_32,-1,argument0+((x-argument4)*(argument2/(argument6-argument4))),argument1+((y-argument5)*(argument3/(argument7-argument5))));
        }
        //if 64 by 64
        else if( (sprite_width == 64) )//&& (sprite_height == 64) )
        {
            draw_sprite(mkr_Friendly_64,-1,argument0+((x-argument4)*(argument2/(argument6-argument4))),argument1+((y-argument5)*(argument3/(argument7-argument5))));
        }
        //if 128 by 128
        else if( (sprite_width == 128) )//&& (sprite_height == 128) )
        {
            draw_sprite(mkr_Friendly_128,-1,argument0+((x-argument4)*(argument2/(argument6-argument4))),argument1+((y-argument5)*(argument3/(argument7-argument5))));
        }
        //if 256 by 256
        else if( (sprite_width == 256) )//&& (sprite_height == 256) )
        {
            draw_sprite(mkr_Friendly_256,-1,argument0+((x-argument4)*(argument2/(argument6-argument4))),argument1+((y-argument5)*(argument3/(argument7-argument5))));
        }
    }
}

//And now draw the enemys
//with(obj_enemy)
with(AllBad)
{
  if( (x >= argument4) && (y >= argument5) && (x <= argument6) && (y <= argument7) )
  {
        //determine sprite width
            //if 8 by 8
        if( (sprite_width <= 8) && (sprite_height <= 8) )
        {
            draw_sprite(mkr_AllBad_8, -1, argument0+((x-argument4)*(argument2/(argument6-argument4))), argument1+((y-argument5)*(argument3/(argument7-argument5))));
        }
        //if 16 by 16
        else if( (sprite_width == 16) )//&& (sprite_height == 16) )
        {
            draw_sprite(mkr_AllBad_16,-1,argument0+((x-argument4)*(argument2/(argument6-argument4))),argument1+((y-argument5)*(argument3/(argument7-argument5))));
        }
        //if 32 by 32
        else if( (sprite_width == 32) )//&& (sprite_height == 32) )
        {
            draw_sprite(mkr_AllBad_32,-1,argument0+((x-argument4)*(argument2/(argument6-argument4))),argument1+((y-argument5)*(argument3/(argument7-argument5))));
        }
        //if 64 by 64
        else if( (sprite_width == 64) )//&& (sprite_height == 64) )
        {
            draw_sprite(mkr_AllBad_64,-1,argument0+((x-argument4)*(argument2/(argument6-argument4))),argument1+((y-argument5)*(argument3/(argument7-argument5))));
        }
        //if 128 by 128
        else if( (sprite_width == 128) )//&& (sprite_height == 128) )
        {
            draw_sprite(mkr_AllBad_128,-1,argument0+((x-argument4)*(argument2/(argument6-argument4))),argument1+((y-argument5)*(argument3/(argument7-argument5))));
        }
        //if 256 by 256
        else if( (sprite_width == 256) )//&& (sprite_height == 256) )
        {
            draw_sprite(mkr_AllBad_256,-1,argument0+((x-argument4)*(argument2/(argument6-argument4))),argument1+((y-argument5)*(argument3/(argument7-argument5))));
        }
  }
}

//And now draw the resources
with(Resource)
{
  if( (x >= argument4) && (y >= argument5) && (x <= argument6) && (y <= argument7) )
  {
        //determine sprite width
            //if 8 by 8
        if( (sprite_width <= 8) && (sprite_height <= 8) )
        {
            draw_sprite(mkr_Resource_8, -1, argument0+((x-argument4)*(argument2/(argument6-argument4))), argument1+((y-argument5)*(argument3/(argument7-argument5))));
        }
        //if 16 by 16
        else if( (sprite_width == 16) )//&& (sprite_height == 16) )
        {
            draw_sprite(mkr_Resource_16,-1,argument0+((x-argument4)*(argument2/(argument6-argument4))),argument1+((y-argument5)*(argument3/(argument7-argument5))));
        }
        //if 32 by 32
        else if( (sprite_width == 32) )//&& (sprite_height == 32) )
        {
            draw_sprite(mkr_Resource_32,-1,argument0+((x-argument4)*(argument2/(argument6-argument4))),argument1+((y-argument5)*(argument3/(argument7-argument5))));
        }
        //if 64 by 64
        else if( (sprite_width == 64) )//&& (sprite_height == 64) )
        {
            draw_sprite(mkr_Resource_64,-1,argument0+((x-argument4)*(argument2/(argument6-argument4))),argument1+((y-argument5)*(argument3/(argument7-argument5))));
        }
        //if 128 by 128
        else if( (sprite_width == 128) )//&& (sprite_height == 128) )
        {
            draw_sprite(mkr_Resource_128,-1,argument0+((x-argument4)*(argument2/(argument6-argument4))),argument1+((y-argument5)*(argument3/(argument7-argument5))));
        }
        //if 256 by 256
        else if( (sprite_width == 256) )//&& (sprite_height == 256) )
        {
            draw_sprite(mkr_Resource_256,-1,argument0+((x-argument4)*(argument2/(argument6-argument4))),argument1+((y-argument5)*(argument3/(argument7-argument5))));
        }
  }
}

//And now draw the terrain
    //Impassable
with(Impassable)
{
    if( (x >= argument4) && (y >= argument5) && (x <= argument6) && (y <= argument7) )
    {
        draw_sprite_stretched(sprite_index, 0, argument0+((x-argument4)*(argument2/(argument6-argument4))), argument1+((y-argument5)*(argument3/(argument7-argument5))), (sprite_width/16), (sprite_height/16) )
        
    }
}

/*

//And now draw the terrain
    //Water
with(Water)
{
  if( (x >= argument4) && (y >= argument5) && (x <= argument6) && (y <= argument7) )
  {
        //determine sprite width
            //if 8 by 8
        if( (sprite_width <= 8) && (sprite_height <= 8) )
        {
            draw_sprite(mkr_Water_8, -1, argument0+((x-argument4)*(argument2/(argument6-argument4))), argument1+((y-argument5)*(argument3/(argument7-argument5))));
        }
        //if 16 by 16
        else if( (sprite_width == 16) )//&& (sprite_height == 16) )
        {
            draw_sprite(mkr_Water_16,-1,argument0+((x-argument4)*(argument2/(argument6-argument4))),argument1+((y-argument5)*(argument3/(argument7-argument5))));
        }
        //if 32 by 32
        else if( (sprite_width == 32) )//&& (sprite_height == 32) )
        {
            draw_sprite(mkr_Water_32,-1,argument0+((x-argument4)*(argument2/(argument6-argument4))),argument1+((y-argument5)*(argument3/(argument7-argument5))));
        }
        //if 64 by 64
        else if( (sprite_width == 64) )//&& (sprite_height == 64) )
        {
            draw_sprite(mkr_Water_64,-1,argument0+((x-argument4)*(argument2/(argument6-argument4))),argument1+((y-argument5)*(argument3/(argument7-argument5))));
        }
        //if 128 by 128
        else if( (sprite_width == 128) )//&& (sprite_height == 128) )
        {
            draw_sprite(mkr_Water_128,-1,argument0+((x-argument4)*(argument2/(argument6-argument4))),argument1+((y-argument5)*(argument3/(argument7-argument5))));
        }
        //if 256 by 256
        else if( (sprite_width == 256) )//&& (sprite_height == 256) )
        {
            draw_sprite(mkr_Water_256,-1,argument0+((x-argument4)*(argument2/(argument6-argument4))),argument1+((y-argument5)*(argument3/(argument7-argument5))));
        }
        
  }
}

//And now draw the terrain
    //Rock
with(Rock)
{
  if( (x >= argument4) && (y >= argument5) && (x <= argument6) && (y <= argument7) )
  {
  //draw_sprite(mkr_Rock,-1,argument0+((x-argument4)*(argument2/(argument6-argument4))),argument1+((y-argument5)*(argument3/(argument7-argument5))));

        //determine sprite width
            //if 8 by 8
        if( (sprite_width <= 8) && (sprite_height >= 8) )
        {
            draw_sprite(mkr_Rock_8,-1,argument0+((x-argument4)*(argument2/(argument6-argument4))),argument1+((y-argument5)*(argument3/(argument7-argument5))));
        }
        //if 16 by 16
        else if( (sprite_width == 16) && (sprite_height == 16) )
        {
            draw_sprite(mkr_Rock_16,-1,argument0+((x-argument4)*(argument2/(argument6-argument4))),argument1+((y-argument5)*(argument3/(argument7-argument5))));
        }
        //if 32 by 32
        else if( (sprite_width == 32) && (sprite_height == 32) )
        {
            draw_sprite(mkr_Rock_32,-1,argument0+((x-argument4)*(argument2/(argument6-argument4))),argument1+((y-argument5)*(argument3/(argument7-argument5))));
        }
        //if 64 by 64
        else if( (sprite_width == 64) && (sprite_height == 64) )
        {
            draw_sprite(mkr_Rock_64,-1,argument0+((x-argument4)*(argument2/(argument6-argument4))),argument1+((y-argument5)*(argument3/(argument7-argument5))));
        }
        //if 128 by 128
        else if( (sprite_width == 128) && (sprite_height == 128) )
        {
            draw_sprite(mkr_Rock_128,-1,argument0+((x-argument4)*(argument2/(argument6-argument4))),argument1+((y-argument5)*(argument3/(argument7-argument5))));
        }
        //if 256 by 256
        else if( (sprite_width == 256) && (sprite_height == 256) )
        {
            draw_sprite(mkr_Rock_256,-1,argument0+((x-argument4)*(argument2/(argument6-argument4))),argument1+((y-argument5)*(argument3/(argument7-argument5))));
        }

  }
}

//And now draw the terrain
    //Chasm
with(Chasm)
{
  if( (x >= argument4) && (y >= argument5) && (x <= argument6) && (y <= argument7) )
  {
        //determine sprite width
            //if 8 by 8
        if( (sprite_width <= 8) && (sprite_height >= 8) )
        {
            draw_sprite(mkr_Chasm_8,-1,argument0+((x-argument4)*(argument2/(argument6-argument4))),argument1+((y-argument5)*(argument3/(argument7-argument5))));
        }
        //if 16 by 16
        else if( (sprite_width == 16) && (sprite_height == 16) )
        {
            draw_sprite(mkr_Chasm_16,-1,argument0+((x-argument4)*(argument2/(argument6-argument4))),argument1+((y-argument5)*(argument3/(argument7-argument5))));
        }
        //if 32 by 32
        else if( (sprite_width == 32) && (sprite_height == 32) )
        {
            draw_sprite(mkr_Chasm_32,-1,argument0+((x-argument4)*(argument2/(argument6-argument4))),argument1+((y-argument5)*(argument3/(argument7-argument5))));
        }
        //if 64 by 64
        else if( (sprite_width == 64) && (sprite_height == 64) )
        {
            draw_sprite(mkr_Chasm_64,-1,argument0+((x-argument4)*(argument2/(argument6-argument4))),argument1+((y-argument5)*(argument3/(argument7-argument5))));
        }
        //if 128 by 128
        else if( (sprite_width == 128) && (sprite_height == 128) )
        {
            draw_sprite(mkr_Chasm_128,-1,argument0+((x-argument4)*(argument2/(argument6-argument4))),argument1+((y-argument5)*(argument3/(argument7-argument5))));
        }
        //if 256 by 256
        else if( (sprite_width == 256) && (sprite_height == 256) )
        {
            draw_sprite(mkr_Chasm_256,-1,argument0+((x-argument4)*(argument2/(argument6-argument4))),argument1+((y-argument5)*(argument3/(argument7-argument5))));
        }

  }
  
}
*/
