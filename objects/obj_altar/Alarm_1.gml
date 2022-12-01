/// @description Insert description here
// You can write your code in this editor

particles = part_system_create();

partTypeConfetti = part_type_create();

part_type_sprite(partTypeConfetti, spr_confetti, false, false, true);

part_type_orientation(partTypeConfetti, 0, 360, 0, 45, 0);

part_type_gravity(partTypeConfetti, 0.0001, 270);

part_type_size(partTypeConfetti, 0.1, 0.2, 0, 0);

part_type_life(partTypeConfetti, 30, 250);

part_type_direction(partTypeConfetti, 240, 300, 0, 30);

part_type_speed(partTypeConfetti, 2,3,0,0);

partSystemActive = true;



