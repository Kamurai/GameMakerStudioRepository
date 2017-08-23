//var temp;
if(Refused == 1)
{
    obj_Controller.PlayerCount-=1;
}

//with(obj_Player) //look at each player
//{
    for(i=0;i<obj_Controller.PlayerCount;i+=1) //walk through roster
    {
        if(Name == obj_Controller.Roster[i]) //if this player (refusals "don't" have a name to compare)
        {
            //obj_Controller.Roster[obj_Controller.PlayerCount-1] = Name; //assign name to last on Roster
            obj_Controller.Roster[i] = ""; //remove the name from roster
        }
    }
//}

    for(i=0;i<obj_Controller.PlayerCount;i+=1) //walk through roster
    {
        if("" == obj_Controller.Roster[i]) //if we find a "blank" spot on the roster
        {
            //find a the next not blank
            for(j=(i+1);j<obj_Controller.PlayerCount;j+=1) //walk through roster
            {
                if( "" != obj_Controller.Roster[j]) //if not a blank
                {
                    //swap with blank
                    obj_Controller.Roster[i] = obj_Controller.Roster[j];
                    obj_Controller.Roster[j] = "";
                }
            }
        }
    }

if(Refused == 0)
{
    obj_Controller.PlayerCount-=1;
}