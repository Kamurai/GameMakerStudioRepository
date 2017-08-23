scr_LClickAnyContainer(0, 2);

//delete submenu
with(obj_TileStackSubMenu)
{
    if(other.id == ParentIndex)
    {
        with(obj_TileStack)
        {
            if(id == other.ParentIndex)
            {
                Pressed = 0;
            }
        }
    
        instance_destroy();
    }
}
