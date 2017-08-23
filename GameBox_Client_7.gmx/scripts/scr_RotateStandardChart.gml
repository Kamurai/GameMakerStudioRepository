scr_RotateAnyChart(argument0);

//(ChildIncrementButton).image_angle = image_angle;

//(ChildDecrementButton).image_angle = image_angle;


scr_SubRotation(argument0,ChildTitle,id);
ChildTitleDiffX = x - (ChildTitle).x;
ChildTitleDiffY = y - (ChildTitle).y;

scr_SubRotation(argument0,ChildTitleBox,id);
ChildTitleBoxDiffX = x - (ChildTitleBox).x;
ChildTitleBoxDiffY = y - (ChildTitleBox).y;

scr_SubRotation(argument0,ChildScore,id);
ChildScoreDiffX = x - (ChildScore).x;
ChildScoreDiffY = y - (ChildScore).y;

scr_SubRotation(argument0,ChildIncrementButton,id);
ChildIncrementDiffX = x - (ChildIncrementButton).x;
ChildIncrementDiffY = y - (ChildIncrementButton).y;

scr_SubRotation(argument0,ChildDecrementButton,id);
ChildDecrementDiffX = x - (ChildDecrementButton).x;
ChildDecrementDiffY = y - (ChildDecrementButton).y;

if(image_angle == 0)
{
    (ChildTitle).x = x + OriginalChildTitleDiffX;
    (ChildTitle).y = y + OriginalChildTitleDiffY;
    with( (ChildTitle) )
    {
        scr_DefineSubForRotation(id, ParentIndex);
    }
    
    (ChildTitleBox).x = x + OriginalChildTitleBoxDiffX;
    (ChildTitleBox).y = y + OriginalChildTitleBoxDiffY;
    with( (ChildTitleBox) )
    {
        scr_DefineSubForRotation(id, ParentIndex);
    }
    
    (ChildScore).x = x + OriginalChildScoreDiffX;
    (ChildScore).y = y + OriginalChildScoreDiffY;
    with( (ChildScore) )
    {
        scr_DefineSubForRotation(id, ParentIndex);
    }
    
    (ChildIncrementButton).x = x + OriginalChildIncrementDiffX;
    (ChildIncrementButton).y = y + OriginalChildIncrementDiffY;
    with( (ChildIncrementButton) )
    {
        scr_DefineSubForRotation(id, ParentIndex);
    }
    
    (ChildDecrementButton).x = x + OriginalChildDecrementDiffX;
    (ChildDecrementButton).y = y + OriginalChildDecrementDiffY;
    with( (ChildDecrementButton) )
    {
        scr_DefineSubForRotation(id, ParentIndex);
    }
}
else if(image_angle == 90)
{
    (ChildTitle).x = x + OriginalChildTitleDiffY-4;
    (ChildTitle).y = y - OriginalChildTitleDiffX;
    with( (ChildTitle) )
    {
        scr_DefineSubForRotation(id, ParentIndex);
    }
    
    (ChildTitleBox).x = x + OriginalChildTitleBoxDiffY;
    (ChildTitleBox).y = y - OriginalChildTitleBoxDiffX;
    with( (ChildTitleBox) )
    {
        scr_DefineSubForRotation(id, ParentIndex);
    }
    
    (ChildScore).x = x + OriginalChildScoreDiffY;
    (ChildScore).y = y - OriginalChildScoreDiffX;
    with( (ChildScore) )
    {
        scr_DefineSubForRotation(id, ParentIndex);
    }
    
    (ChildIncrementButton).x = x + OriginalChildIncrementDiffY;
    (ChildIncrementButton).y = y - OriginalChildIncrementDiffX;
    with( (ChildIncrementButton) )
    {
        scr_DefineSubForRotation(id, ParentIndex);
    }
    
    (ChildDecrementButton).x = x + OriginalChildDecrementDiffY;
    (ChildDecrementButton).y = y - OriginalChildDecrementDiffX;
    with( (ChildDecrementButton) )
    {
        scr_DefineSubForRotation(id, ParentIndex);
    }
}
else if(image_angle == 180)
{
    (ChildTitle).x = x - OriginalChildTitleDiffX;
    (ChildTitle).y = y - OriginalChildTitleDiffY;
    with( (ChildTitle) )
    {
        scr_DefineSubForRotation(id, ParentIndex);
    }
    
    (ChildTitleBox).x = x - OriginalChildTitleBoxDiffX;
    (ChildTitleBox).y = y - OriginalChildTitleBoxDiffY;
    with( (ChildTitleBox) )
    {
        scr_DefineSubForRotation(id, ParentIndex);
    }
    
    (ChildScore).x = x - OriginalChildScoreDiffX;
    (ChildScore).y = y - OriginalChildScoreDiffY;
    with( (ChildScore) )
    {
        scr_DefineSubForRotation(id, ParentIndex);
    }
    
    (ChildIncrementButton).x = x - OriginalChildIncrementDiffX;
    (ChildIncrementButton).y = y - OriginalChildIncrementDiffY;
    with( (ChildIncrementButton) )
    {
        scr_DefineSubForRotation(id, ParentIndex);
    }
    
    (ChildDecrementButton).x = x - OriginalChildDecrementDiffX;
    (ChildDecrementButton).y = y - OriginalChildDecrementDiffY;
    with( (ChildDecrementButton) )
    {
        scr_DefineSubForRotation(id, ParentIndex);
    }

}
else if(image_angle == 270)
{
    (ChildTitle).x = x - OriginalChildTitleDiffY;
    (ChildTitle).y = y + OriginalChildTitleDiffX;
    with( (ChildTitle) )
    {
        scr_DefineSubForRotation(id, ParentIndex);
    }
    
    (ChildTitleBox).x = x - OriginalChildTitleBoxDiffY;
    (ChildTitleBox).y = y + OriginalChildTitleBoxDiffX;
    with( (ChildTitleBox) )
    {
        scr_DefineSubForRotation(id, ParentIndex);
    }
    
    (ChildScore).x = x - OriginalChildScoreDiffY;
    (ChildScore).y = y + OriginalChildScoreDiffX;
    with( (ChildScore) )
    {
        scr_DefineSubForRotation(id, ParentIndex);
    }
    
    (ChildIncrementButton).x = x - OriginalChildIncrementDiffY;
    (ChildIncrementButton).y = y + OriginalChildIncrementDiffX;
    with( (ChildIncrementButton) )
    {
        scr_DefineSubForRotation(id, ParentIndex);
    }
    
    (ChildDecrementButton).x = x - OriginalChildDecrementDiffY;
    (ChildDecrementButton).y = y + OriginalChildDecrementDiffX;
    with( (ChildDecrementButton) )
    {
        scr_DefineSubForRotation(id, ParentIndex);
    }
}

