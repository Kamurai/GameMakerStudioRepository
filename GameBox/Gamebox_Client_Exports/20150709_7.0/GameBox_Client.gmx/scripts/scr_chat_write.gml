with(obj_ChatView) 
{
    if(lines>=27)
    {
        //shift lines
        for(i=0;i<((lines-1)-1);i+=1)
        {
            line[i] = line[(i+1)];
        }
        line[(lines-1)]=argument0;
        color[(lines-1)]=argument1;
    }
    else
    {
        lines+=1;
        line[(lines-1)]=argument0;
        color[(lines-1)]=argument1;
        
    }
    
    
    
}