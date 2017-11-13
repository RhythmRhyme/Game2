
global.HPEnemyFont = font_add_sprite_ext(s_HPloose_enemy, "0123456789", true, -2);

global.playerLevelFont = font_add_sprite_ext(s_player_level, "0123456789.LV", true, 0);



if(!debug_mode)	layer_set_visible(layer_get_id("scene"),false);