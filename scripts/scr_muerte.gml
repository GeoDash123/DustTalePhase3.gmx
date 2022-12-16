if global.ar = 0 {

audio_stop_all();
timeline_running = false;
room_goto(room_muerte);

} else { 

audio_stop_all();
audio_play_sound(snd_player_hurt, 0, false);
global.wave = 0;
global.inverse = 0;
timeline_running = false;
room_goto(room_combate); 

}




