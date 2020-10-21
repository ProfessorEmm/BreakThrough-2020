/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7911C686
/// @DnDArgument : "var" "bbox_left"
/// @DnDArgument : "op" "1"
if(bbox_left < 0)
{
	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 4C8C55CE
	/// @DnDParent : 7911C686
	/// @DnDArgument : "speed" "-hspeed"
	/// @DnDArgument : "type" "1"
	hspeed = -hspeed;

	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 78972BF1
	/// @DnDInput : 2
	/// @DnDParent : 7911C686
	/// @DnDArgument : "value" "xprevious"
	/// @DnDArgument : "value_1" "yprevious"
	/// @DnDArgument : "instvar_1" "1"
	x = xprevious;
	y = yprevious;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3B4A0182
/// @DnDArgument : "var" "bbox_right"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "room_width"
if(bbox_right > room_width)
{
	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 268C2A0B
	/// @DnDParent : 3B4A0182
	/// @DnDArgument : "speed" "-hspeed"
	/// @DnDArgument : "type" "1"
	hspeed = -hspeed;

	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 7C13A441
	/// @DnDInput : 2
	/// @DnDParent : 3B4A0182
	/// @DnDArgument : "value" "xprevious"
	/// @DnDArgument : "value_1" "yprevious"
	/// @DnDArgument : "instvar_1" "1"
	x = xprevious;
	y = yprevious;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 68515084
/// @DnDArgument : "var" "bbox_top"
/// @DnDArgument : "op" "1"
if(bbox_top < 0)
{
	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 6C2027CE
	/// @DnDParent : 68515084
	/// @DnDArgument : "speed" "-vspeed"
	/// @DnDArgument : "type" "2"
	vspeed = -vspeed;

	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 28AFC26E
	/// @DnDInput : 2
	/// @DnDParent : 68515084
	/// @DnDArgument : "value" "xprevious"
	/// @DnDArgument : "value_1" "yprevious"
	/// @DnDArgument : "instvar_1" "1"
	x = xprevious;
	y = yprevious;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 78F7D066
/// @DnDArgument : "var" "bbox_bottom"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "room_height"
if(bbox_bottom > room_height)
{
	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 29165E11
	/// @DnDParent : 78F7D066
	/// @DnDArgument : "value" "-1"
	/// @DnDArgument : "value_relative" "1"
	/// @DnDArgument : "var" "player_lives"
	global.player_lives += -1;

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 0B947F16
	/// @DnDParent : 78F7D066
	instance_destroy();

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 637ABA0F
	/// @DnDParent : 78F7D066
	/// @DnDArgument : "var" "global.player_lives"
	/// @DnDArgument : "op" "3"
	if(global.player_lives <= 0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2C1BFE93
		/// @DnDApplyTo : {obj_control}
		/// @DnDParent : 637ABA0F
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "var" "gameover"
		with(obj_control) {
		gameover = true;
		
		}
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7A8CD336
		/// @DnDParent : 637ABA0F
		/// @DnDArgument : "var" "global.player_score"
		/// @DnDArgument : "op" "2"
		/// @DnDArgument : "value" "global.high_score"
		if(global.player_score > global.high_score)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 5BF58277
			/// @DnDParent : 7A8CD336
			/// @DnDArgument : "expr" "global.player_score"
			/// @DnDArgument : "var" "global.high_score"
			global.high_score = global.player_score;
		}
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 602A1940
	/// @DnDParent : 78F7D066
	else
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 13AEA0E2
		/// @DnDParent : 602A1940
		/// @DnDArgument : "xpos" "xstart"
		/// @DnDArgument : "ypos" "ystart"
		/// @DnDArgument : "objectid" "obj_ball"
		/// @DnDSaveInfo : "objectid" "obj_ball"
		instance_create_layer(xstart, ystart, "Instances", obj_ball);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 26569FC1
		/// @DnDApplyTo : {obj_bat}
		/// @DnDParent : 602A1940
		/// @DnDArgument : "expr" "xstart"
		/// @DnDArgument : "var" "x"
		with(obj_bat) {
		x = xstart;
		
		}
	}
}