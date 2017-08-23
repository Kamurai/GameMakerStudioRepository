scr_LClickAnyGameObject(0,1);

//delete submenu
with(obj_CardSubMenu)
{
    if(other.id == ParentIndex)
    {
        with(obj_Card)
        {
            if(id == other.ParentIndex)
            {
                Pressed = 0;
            }
        }
    
        instance_destroy();
    }
}
