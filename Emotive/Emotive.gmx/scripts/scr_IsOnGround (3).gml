if(position_meeting(x+sprite_width/2,y+sprite_height+vspeed,obj_BlockType)==true)
//if(place_meeting(x,(y+1),obj_BlockType)==true)
{
    with(obj_BlockType)
    {
        if( y > (other.y + other.sprite_height)-1 )
        {
            //if(position_meeting(x,(y-1),(other.id)) == true)
            if(place_meeting(x,(y-1-other.vspeed),(other.id)) == true)
            {
                
                return true;
            }
            //else if(other.vspeed > 0)//else if(other.vspeed > 0 && (y-(other.y+other.sprite_height)) < abs(other.vspeed))
            //{
                
            //    return true;
            //}
        }
    }
}

return false;
