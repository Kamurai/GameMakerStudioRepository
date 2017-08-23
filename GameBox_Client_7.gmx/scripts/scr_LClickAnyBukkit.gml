scr_LClickAnyContainer(0, 2);

//delete submenu
with(obj_BukkitSubMenu)
{
    if(other.id == ParentIndex)
    {
        with(obj_Bukkit)
        {
            if(id == other.ParentIndex)
            {
                Pressed = 0;
            }
        }
    
        instance_destroy();
    }
}


