//if not at maximum
if( (view_wview[0] < room_width) && (view_hview[0] < room_height) )
{
    if( view_xview[0] > 0 )
    {
        //left
        view_xview[0] = view_xview[0] - 1;
    }
    
    if( view_yview[0] > 0 )
    {
        //top
        view_yview[0] = view_yview[0] - 1;
    }    
    
    if( view_xview[0] + view_wview[0] < room_width )
    {
        //right
        view_wview[0] = view_wview[0] + 1;
    }    
    
    if( view_yview[0] + view_hview[0] < room_height )
    {
        //bottom
        view_hview[0] = view_hview[0] + 1;
    }
    
    DynScaleX = DynScaleX + obj_Controller.AdjustTextRateX;
    DynScaleY = DynScaleY + obj_Controller.AdjustTextRateY;
    
    with(obj_Display)
    {
    
        if(Adjust == true)
        {
            DynWidth = DynWidthRatio * view_wview[0];
            DynHeight = DynHeightRatio * view_hview[0];
            
            image_xscale = DynWidth / obj_Controller.ZoomRate;
            image_yscale = DynHeight / obj_Controller.ZoomRate;
        
        }
        
        if(AdjustText == true)
        {
            DynScaleX = DynScaleX + obj_Controller.AdjustTextRateX;
            DynScaleY = DynScaleY + obj_Controller.AdjustTextRateY;
        }
        
    }
    
}