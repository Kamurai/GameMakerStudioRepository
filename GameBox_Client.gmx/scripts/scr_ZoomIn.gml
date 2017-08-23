//if not at minimum
if( (view_wview[0] > 100) && (view_hview[0] > 100) )
{
    //left
    view_xview[0] = view_xview[0] + 1;
    //top
    view_yview[0] = view_yview[0] + 1;
    //right
    view_wview[0] = view_wview[0] - 1;
    //bottom
    view_hview[0] = view_hview[0] - 1;
    
    DynScaleX = DynScaleX - obj_Controller.AdjustTextRateX;
    DynScaleY = DynScaleY - obj_Controller.AdjustTextRateY;
    
    with(obj_Display)
    {
        if(Adjust == true)
        {
            DynWidth = ceil(DynWidthRatio * view_wview[0]);
            DynHeight = ceil(DynHeightRatio * view_hview[0]);
            
            image_xscale = DynWidth / obj_Controller.ZoomRate;
            image_yscale = DynHeight / obj_Controller.ZoomRate;
        }
        
        if(AdjustText == true)
        {
            DynScaleX = DynScaleX - obj_Controller.AdjustTextRateX;
            DynScaleY = DynScaleY - obj_Controller.AdjustTextRateY;
        }
    }
    
}
