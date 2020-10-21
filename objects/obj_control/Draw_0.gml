/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 32ECC505
/// @DnDArgument : "x" "8"
/// @DnDArgument : "y" "8"
/// @DnDArgument : "caption" ""Score: ""
/// @DnDArgument : "var" "global.player_score"
draw_text(8, 8, string("Score: ") + string(global.player_score));

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 5288925D
/// @DnDArgument : "halign" "fa_right"
draw_set_halign(fa_right);
draw_set_valign(fa_top);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 140F8464
/// @DnDArgument : "x" "room_width - 8"
/// @DnDArgument : "y" "8"
/// @DnDArgument : "caption" ""High Score: ""
/// @DnDArgument : "var" "global.high_score"
draw_text(room_width - 8, 8, string("High Score: ") + string(global.high_score));

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 25DD5275
draw_set_halign(fa_left);
draw_set_valign(fa_top);

/// @DnDAction : YoYo Games.Drawing.Draw_Sprites_Stacked
/// @DnDVersion : 1
/// @DnDHash : 56134FD4
/// @DnDArgument : "x" "(room_width / 2) - ((global.player_lives - 1) * 32)"
/// @DnDArgument : "y" "room_height - 32"
/// @DnDArgument : "sprite" "spr_lives"
/// @DnDArgument : "number" "global.player_lives"
/// @DnDSaveInfo : "sprite" "spr_lives"
var l56134FD4_0 = sprite_get_width(spr_lives);
var l56134FD4_1 = 0;
for(var l56134FD4_2 = global.player_lives; l56134FD4_2 > 0; --l56134FD4_2) {
	draw_sprite(spr_lives, 0, (room_width / 2) - ((global.player_lives - 1) * 32) + l56134FD4_1, room_height - 32);
	l56134FD4_1 += l56134FD4_0;
}