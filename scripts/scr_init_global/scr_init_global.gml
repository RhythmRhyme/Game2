global.FPS = 60;

game_set_speed(global.FPS, gamespeed_fps);
show_debug_message(global.FPS);

global.HPEnemyFont = font_add_sprite_ext(s_HPloose_enemy, "0123456789", true, 2);
