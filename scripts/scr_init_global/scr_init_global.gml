
global.HPEnemyFont = font_add_sprite_ext(s_HPloose_enemy, "0123456789", true, -2);

global.HPPlayerFont = font_add_sprite_ext(s_HPloose_player, "0123456789", true, -2);

global.UIFont = font_add_sprite_ext(s_ui_font, "0123456789MPEXQ+.%/", true, 0);

global.chineseFont12 = font_add("simhei.ttf",12,true,false,0,65535);
global.chineseFont10 = font_add("simhei.ttf",10,false,false,0,65535);
global.chineseFont8 = font_add("simhei.ttf",8,false,false,0,65535);

global.HPDamageFont = font_add("maobi.ttf",32,false,false,0,65535);

global.chineseFont14Maobi = font_add("maobi.ttf",14,false,false,0,65535);
global.chineseFont12Maobi = font_add("maobi.ttf",12,false,false,0,65535);

if(!debug_mode)	layer_set_visible(layer_get_id("scene"),false);