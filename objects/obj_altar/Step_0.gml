/// @description Insert description here
// You can write your code in this editor

switch(hits)
{
	case 0:
	image_index = 0;
	break;
	case 1:
	image_index = 1;
	break;
	case 2:
	image_index = 2;
	break;
	case 3:
	image_index = 3;
	alarm[0] = 2*room_speed; //3 sec timer until game end
	break;
	default:
	image_index = 3;
	break;
}


