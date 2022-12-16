if obj_jugador.estado = 0 {

audio_play_sound(snd_player_hurt, 0, false);
randomize();
repeat(irandom_range(1, 5)) { instance_create(obj_jugador.x, obj_jugador.y, obj_fragmento); }
with obj_fragmento { image_blend = obj_jugador.image_blend; }

sh = instance_create(0,0,obj_terremoto);
sh.shake = 3;

if global.hp = 8 && argument0 = 8 { global.hp = 1; } else {

if global.hp != 1 { if global.hp > 4 { global.hp -= argument0; } else { global.hp = 1; } } else { scr_muerte(); }

}

if global.hp <= 0 { scr_muerte(); }

with obj_jugador {

estado = 1;
pitido = 6;
alarm[1] = 1;

}

}
