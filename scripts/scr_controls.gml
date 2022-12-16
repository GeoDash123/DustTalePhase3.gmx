///Script que hereda codigo al objeto KeyCont

var p;
p = 0;

//var s = 6;

var joystickderechoY = gamepad_axis_value(0, gp_axisrv);
var joystickderechoX = gamepad_axis_value(0, gp_axisrh);

repeat(players) {

    //Arriba
    
    if keyboard_check(bind_up) or keyboard_check(bind_up2) or -joystick_ypos(0)
    
     or gamepad_button_check(0, gp_padu) or joystickderechoY < -0.50  {
    
        if key_up[p] = 1 { key_up[p] = 2; }
            
        else if key_up[p] !=2 { key_up[p] = 1; }
            
        } else { if key_up[p] = 3 { key_up[p] = 0; }
    
        else if key_up[p] !=0 { key_up[p] = 3; }
            
    }
    
    //Abajo
    
    if keyboard_check(bind_down) or keyboard_check(bind_down2) or joystick_ypos(0)
    
     or gamepad_button_check(0, gp_padd) or joystickderechoY > 0.50  {
    
        if key_down[p] = 1 { key_down[p] = 2; }
            
        else if key_down[p] !=2 { key_down[p] = 1; }
            
    } else { if key_down[p] = 3 { key_down[p] = 0; }
    
        else if key_down[p] !=0 { key_down[p] = 3; }
            
    }
    
    //Izquierda
    
    if keyboard_check(bind_left) or keyboard_check(bind_left2) or -joystick_xpos(0)
    
     or gamepad_button_check(0, gp_padl) or joystickderechoX < -0.50  {
    
        if key_left[p] = 1 { key_left[p] = 2; }
            
        else if key_left[p] !=2 { key_left[p] = 1; } 
            
    } else { if key_left[p] = 3 { key_left[p] = 0; }
    
        else if key_left[p] !=0 { key_left[p] = 3; }
            
    }
    
    //Derecha
    
    if keyboard_check(bind_right) or keyboard_check(bind_right2) or joystick_xpos(0) 
    
    or gamepad_button_check(0, gp_padr) or joystickderechoX > 0.50  {
    
        if key_right[p] = 1 { key_right[p] = 2; }
            
        else if key_right[p] !=2 { key_right[p] = 1; }
            
        } else { if key_right[p] = 3 { key_right[p] = 0; }
         
        else if key_right[p] !=0 { key_right[p] = 3; }
            
    }
    
    //Boton Z
    
    if keyboard_check(bind_primary) or keyboard_check(bind_primary2) or joystick_check_button(1, 1)
    
     or gamepad_button_check(0, gp_start) {
    
        if key_primary[p] = 1 { key_primary[p] = 2; }
            
        else if key_primary[p] !=2 { key_primary[p] = 1; }

        } else { if key_primary[p] = 3 { key_primary[p] = 0; }
  
        else if key_primary[p] !=0 { key_primary[p] = 3; }
            
    }
    
    //Boton X
    
    if keyboard_check(bind_secondary) or keyboard_check(bind_secondary2) or joystick_check_button(1, 2) 
    
    or gamepad_button_check(0, gp_select) {
    
        if key_secondary[p] = 1 { key_secondary[p] = 2; }
            
        else if key_secondary[p] !=2 { key_secondary[p] = 1; }
            
        } else { if key_secondary[p] = 3 { key_secondary[p] = 0; }

        else if key_secondary[p] !=0 { key_secondary[p] = 3; }
        
            
    }
    
    //Salir
    if keyboard_check(bind_pause)
    {
        if key_pause[p] = 1
            key_pause[p] = 2;
        else if key_pause[p] !=2
            key_pause[p] = 1;
            
        } else {
        
        if key_pause[p] = 3
            key_pause[p] = 0;
        else if key_pause[p] !=0
            key_pause[p] = 3;
    }

    p++;
}
