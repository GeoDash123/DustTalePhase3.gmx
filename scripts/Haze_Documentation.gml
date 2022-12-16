/*
******************
Heat Haze Shader
    --by matharoo
******************

**USAGE**

Use haze_start() to begin implementing the heat haze.

Arguments:
    views_used: Set it to true if you're using views.
    cover_screen: Set it to true if you want the heat haze effect
                    to cover the whole screen.
                    
------------------------------------------------------------------

Use haze_circle_add(x, y, radius) to add a circular area for the haze,
or haze_rect_add(x, y, w, h) to add a rectangular area.

You can also store its id in a variable to modify it later.

Usage example:*/
    haze_areaC = haze_circle_add(x, y, 64);
    haze_areaR = haze_rect_add(x, y, 128, 32);
/*

Use haze_circle_pos(id, x, y) and haze_circle_radius(id, radius) to modify
an existing haze circle.
*/
    haze_circle_pos(haze_areaC, x+2, y+2);
    haze_circle_radius(haze_areaC, 28);
/*

Use haze_rect_pos(id, x, y) and haze_rect_size(id, w, h) to modify an existing
haze rectangle.
*/
    haze_rect_pos(haze_areaR, 8, 16);
    haze_rect_size(haze_areaR, 42, 98);
/*

Use haze_circle_delete(id) or haze_rect_delete(id) to delete a haze area.
*/
    haze_circle_delete(haze_areaC);
    haze_rect_delete(haze_areaR);
/*

------------------------------------------------------------------

You can modify the haze shader properties in obj_hazeC's Create event.
You can also set the view number in the "viewN" variable if using views.

------------------------------------------------------------------

Facing any problems, or want to request a feature?
Mail me at gurpreetsingh793@gmail.com.

*/