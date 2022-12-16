/// haze_start(views_used, cover_screen);
if (instance_exists(obj_hazeC)){
    show_error("Haze already started", false);
    return 0;
}

instance_create(0, 0, obj_hazeC);
obj_hazeC.cameraUsed = argument0;
obj_hazeC.coverScreen = argument1;