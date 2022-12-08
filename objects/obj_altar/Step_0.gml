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
		alarm[0] = 10*room_speed; //10 sec timer until game end
	alarm[1] = room_speed; //1 sec timer until confetti animation
	break;
	default:
	image_index = 3;
	break;
}                    

if(partSystemActive)
{
	xLowBound = 0;
	xHighBound = 512;
	yLowBound = -30;
	yHighBound = 0;
	randX = random_range(xLowBound, xHighBound);
	randY = random_range(yLowBound, yHighBound);
	part_particles_create(particles, randX, randY, partTypeConfetti, 3);
}


