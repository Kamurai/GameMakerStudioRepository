var tracker;
tracker = 0;

obj_Master_Controller.Overall_Score = 0;

for(tracker = 1; tracker <= obj_Info.NumberOfLevels; tracker++)
{
    obj_Master_Controller.Overall_Score = obj_Master_Controller.Overall_Score + real(obj_Master_Controller.Score[tracker]);
}
