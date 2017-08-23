scr_LClickAnyContainer(0, 2);

//delete submenu
with(obj_ChitStackSubMenu)
{
    if(other.id == ParentIndex)
    {
        with(obj_ChitStack)
        {
            if(id == other.ParentIndex)
            {
                Pressed = 0;
            }
        }
    
        instance_destroy();
    }
}

