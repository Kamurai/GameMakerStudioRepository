if(obj_Controller.Emotion <= 100 && obj_Controller.Emotion > 80)
{
    image_index = 0;
}
else if(obj_Controller.Emotion <= 80 && obj_Controller.Emotion > 60)
{
    image_index = 1;
}
else if(obj_Controller.Emotion <= 60 && obj_Controller.Emotion > 40)
{
    image_index = 2;
}
else if(obj_Controller.Emotion <= 40 && obj_Controller.Emotion > 20)
{
    image_index = 3;
}
else if(obj_Controller.Emotion <= 20 && obj_Controller.Emotion > 0)
{
    image_index = 4;
}
else if(obj_Controller.Emotion == 0)
{
    image_index = 5;
}
