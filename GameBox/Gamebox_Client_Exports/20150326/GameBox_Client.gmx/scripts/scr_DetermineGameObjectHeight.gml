var temp_z = obj_Table.depth;


//for each Game Object
with(master_Game)
{
    //if object is touching this object and is not current object and that object is not being held
    if(place_meeting(x,y,other) && (id != other.id) && Selected == false)
    {
        //if object is shallower than previous object and object is deeper than current object
        if(depth < temp_z && depth >= other.depth)
        {
            //set current object's height to 1 height above the highest object touching this one
            other.depth = depth - 1;
            temp_z = depth;
        }
    }
}


//if previous object is still the table
if(temp_z == obj_Table.depth || depth == obj_Table.depth)
{
    //set current object's height to 1 height abot the table
    depth = obj_Table.depth - 1;
}

