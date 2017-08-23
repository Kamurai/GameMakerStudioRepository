scr_LClickAnyContainer(0, 2);

//delete submenu
with(obj_DeckSubMenu)
{
    if(other.id == ParentIndex)
    {
        with(obj_Deck)
        {
            if(id == other.ParentIndex)
            {
                Pressed = 0;
            }
        }
    
        instance_destroy();
    }
}

