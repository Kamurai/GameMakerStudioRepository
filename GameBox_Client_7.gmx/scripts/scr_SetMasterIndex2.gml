
var startingindex = 0;
var stoppingindex = 0;

//set startingindex based on Game Index
if(obj_Mode.Index == 0)  //if Chess
{
    startingindex = 0
    stoppingindex = 6
}
else if(obj_Mode.Index == 1)  //if Playing Cards
{
    startingindex = 7
    stoppingindex = 60
}
else if(obj_Mode.Index == 2)  //if Quit
{
    startingindex = 61
    stoppingindex = 81
}
else if(obj_Mode.Index == 3)  //if Catan
{
    startingindex = 82
    stoppingindex = 207
}
else if(obj_Mode.Index == 4)  //if Monster Office Workplace
{
    startingindex = 208
    stoppingindex = 572
}
else if(obj_Mode.Index == 5)  //if Nine Card
{
    startingindex = 573
    stoppingindex = 694
}
else if(obj_Mode.Index == 6)  //if Penny Arcade Deckbuilding Game
{
    startingindex = 695
    stoppingindex = 1002
}
else if(obj_Mode.Index == 7)  //if Sacred Offerings
{
    startingindex = 1003
    stoppingindex = 1012
}
else if(obj_Mode.Index == 8)  //if The Way
{
    startingindex = 1013
    stoppingindex = 1045
}
else if(obj_Mode.Index == 9)  //if Battle Princess
{
    startingindex = 1046
    stoppingindex = 1415
}

for(var i = startingindex; i <= stoppingindex; i++)
{
    if( object_get_name(object_index) == master_Info.Object[i])
    {
        MasterIndex = i;
    }
}

//if no match found
if(MasterIndex == 0)
{
    startingindex = 61
    stoppingindex = 81

    //Double check standard
    for(var i = startingindex; i <= stoppingindex; i++)
    {
        if( object_get_name(object_index) == Object[i])
        {
            MasterIndex = i;
        }
    }
}

Name = master_Info.Name[MasterIndex];
