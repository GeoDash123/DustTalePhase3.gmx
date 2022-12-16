/// haze_circle_delete(id)

//Args
var _id = argument[0];

//Function
var arr = obj_hazeC.hazePoints[|_id];

arr[@ 0] = -1000;
arr[@ 1] = -1000;
arr[@ 2] = 1;