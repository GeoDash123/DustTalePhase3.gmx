/// haze_circle_add(x, y, radius);
//Started?
if (!instance_exists(obj_hazeC)){
    show_error("Haze not started. Use haze_start()", false);
    return 0;
}

//ID
var pID = ds_list_size(obj_hazeC.hazePoints);

//Add array
var arr;
arr[0] = argument0;
arr[1] = argument1;
arr[2] = argument2;

ds_list_add(obj_hazeC.hazePoints, arr);

return pID;