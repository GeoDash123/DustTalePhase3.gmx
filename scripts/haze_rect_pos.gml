/// haze_rect_pos(id, x, y);
//Started?
if (!instance_exists(obj_hazeC)){
    show_error("Haze not started. Use haze_start()", false);
    return 0;
}

//Change
var arr = obj_hazeC.hazeAreas[| argument0];

var newArr;
newArr[0] = argument1;
newArr[1] = argument2;
newArr[2] = arr[2];
newArr[3] = arr[3];

obj_hazeC.hazeAreas[| argument0] = newArr;