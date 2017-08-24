var temp;

//walk through roster
for(i=0;i<obj_Controller.PlayerCount-1;i+=1)
{
    //if current item is greater than next
    if(obj_Controller.Roster[i]>obj_Controller.Roster[i+1])
    {
        //shift it forward
        temp = obj_Controller.Roster[i+1];
        obj_Controller.Roster[i+1] = obj_Controller.Roster[i];
        obj_Controller.Roster[i] = temp;
        
        //reset tracker
        i = 0;
    }
}

with(obj_Player) //look at each player
{
    for(i=0;i<obj_Controller.PlayerCount;i+=1) //walk through roster
    {
        if(Name == obj_Controller.Roster[i])
        {
            Index = i;
            
        }
    }
}
