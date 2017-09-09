//for each Game Object
with(master_Game)
{
    //if object is touching this object and is not current object and that object is not being held
    if(place_meeting(x,y,other) && (id != other.id))// && Selected == false)
    {
        //if object is shallower than current object
        if(depth <= other.depth)
        {
            //return true
            return true;
        }
    }
}

return false;
