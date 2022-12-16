/// haze_circle_radius(id, radius);
//Started?
if (!instance_exists(obj_hazeC)){
    show_error("Haze not started. Use haze_start()", false);
    return 0;
}

//Change
var arr = obj_hazeC.hazePoints[| argument0];

var newArr;
newArr[0] = arr[0];
newArr[1] = arr[1];
newArr[2] = argument1;

obj_hazeC.hazePoints[| argument0] = newArr;