/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 5F5DBD54
/// @DnDArgument : "soundid" "snd_PowerUp"
/// @DnDSaveInfo : "soundid" "snd_PowerUp"
audio_play_sound(snd_PowerUp, 0, 0);

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 6082F70F
instance_destroy();

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1DE2E0F6
/// @DnDArgument : "var" "image_index"
if(image_index == 0)
{
	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 49CACE76
	/// @DnDApplyTo : other
	/// @DnDParent : 1DE2E0F6
	/// @DnDArgument : "value" "2"
	/// @DnDArgument : "instvar" "15"
	with(other) {
	image_xscale = 2;
	}

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 00560E13
	/// @DnDApplyTo : other
	/// @DnDParent : 1DE2E0F6
	/// @DnDArgument : "steps" "10 * room_speed"
	with(other) {
	alarm_set(0, 10 * room_speed);
	
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 7D74D49F
else
{
	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 5EAB01ED
	/// @DnDApplyTo : {obj_ball}
	/// @DnDParent : 7D74D49F
	/// @DnDArgument : "speed" "spd"
	with(obj_ball) speed = spd;
}