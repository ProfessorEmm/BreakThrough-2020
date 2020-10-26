/// @DnDAction : YoYo Games.Instances.Instance_Get_Count
/// @DnDVersion : 1
/// @DnDHash : 2DECB46A
/// @DnDArgument : "var" "numOfBricks"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "object" "obj_brick"
/// @DnDSaveInfo : "object" "obj_brick"
var numOfBricks = instance_number(obj_brick);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2BAA258C
/// @DnDArgument : "var" "numOfBricks"
/// @DnDArgument : "op" "3"
if(numOfBricks <= 0)
{
	/// @DnDAction : YoYo Games.Rooms.Restart_Room
	/// @DnDVersion : 1
	/// @DnDHash : 1BC7EAF1
	/// @DnDParent : 2BAA258C
	room_restart();
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5990C1F6
/// @DnDArgument : "var" "gameover"
/// @DnDArgument : "value" "true"
if(gameover == true)
{
	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
	/// @DnDVersion : 1
	/// @DnDHash : 7CC6F463
	/// @DnDParent : 5990C1F6
	/// @DnDArgument : "key" "vk_anykey"
	var l7CC6F463_0;
	l7CC6F463_0 = keyboard_check_pressed(vk_anykey);
	if (l7CC6F463_0)
	{
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1
		/// @DnDHash : 1B300C99
		/// @DnDParent : 7CC6F463
		/// @DnDArgument : "soundid" "snd_PowerUp"
		/// @DnDSaveInfo : "soundid" "snd_PowerUp"
		audio_play_sound(snd_PowerUp, 0, 0);
	
		/// @DnDAction : YoYo Games.Common.Set_Global
		/// @DnDVersion : 1
		/// @DnDHash : 37F18423
		/// @DnDInput : 2
		/// @DnDParent : 7CC6F463
		/// @DnDArgument : "value_1" "3"
		/// @DnDArgument : "var" "player_score"
		/// @DnDArgument : "var_1" "player_lives"
		global.player_score = 0;
		global.player_lives = 3;
	
		/// @DnDAction : YoYo Games.Rooms.Restart_Room
		/// @DnDVersion : 1
		/// @DnDHash : 4A7ED0BE
		/// @DnDParent : 7CC6F463
		room_restart();
	}
}