scr_CreateAnyGameObject();

//Set card to "Peek" (show only to current player)
image_index = 1;
//update server
scr_SendUpdateObjectColor();

//show card to this player only
image_index = 0;