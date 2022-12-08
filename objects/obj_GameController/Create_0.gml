/// @description Insert description here
// You can write your code in this editor
display_set_gui_size(512,384);
zombieCreationCounter = 0;
zombieCreationThreshold = 180;

laCatrinaCreationCounter = 0;
laCatrinaCreationThreshold = 1000;

global.gameCompleted = false;
global.walkBorderLeft = 0;
global.walkBorderRight = 512;
global.walkBorderBottom = 334;
global.walkBorderTop = 142;

global.pickupOne = false;
global.pickupTwo = false;
global.pickupThree = false;


if debug_mode
{
    random_set_seed(1);
}
else
{
	randomize();
}

xLowBound = 0;
xHighBound = 512;
yLowBound = 334;
yHighBound = 180;

zombieXLowBound1 = -100;
zombieXHighBound1 = 0;
zombieYLowBound1 = 434;
zombieYHighBound1 = 300;

zombieXLowBound2 = 612;
zombieXHighBound2 = 530;
zombieYLowBound2 = 434;
zombieYHighBound2 = 300;

zombieXLowBound3 = -100;
zombieXHighBound3 = 612;
zombieYLowBound3 = 434;
zombieYHighBound3 = 334;



randomX1 = irandom_range(xLowBound,xHighBound);
randomY1 = irandom_range(yLowBound,yHighBound);
randomX2 = irandom_range(xLowBound,xHighBound);
randomY2 = irandom_range(yLowBound,yHighBound);
randomX3 = irandom_range(xLowBound,xHighBound);
randomY3 = irandom_range(yLowBound,yHighBound);

if(room == z)
{
	global.walkBorderRight = 1536;
	xHighBound = 1536;
	zombieXLowBound2 = 1536;
	zombieXHighBound2 = 1636;	
	zombieXHighBound3 = 1636;	
	zombieCreationThreshold = 150;
	laCatrinaCreationThreshold = 400;	
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
}
else
{
	global.walkBorderRight = 512;
	xHighBound = 512;
	zombieXLowBound2 = 612;
	zombieXHighBound2 = 530;
	zombieXHighBound3 = 612;
}

if(room != rm_altar)
{
var emptyUrnsNum = 10;
for(i = 0; i < emptyUrnsNum; i++)
{
	
	randomX1 = irandom_range(xLowBound,xHighBound);
	randomY1 = irandom_range(yLowBound,yHighBound);

	instance_create_layer(randomX1,randomY1,layer_get_id("Instances"),obj_urn);

}
}

var numTequila = irandom_range(1,3);
if(room == rm_altar)
{
	var numTequila = 0;
	global.gameCompleted = true;
}
else if(room == z)
{
	numTequila = irandom_range(10,18);
	view_visible[1] = true;
	view_visible[0] = false;
}
for(i = 0; i < numTequila; i++)
{
		randomX1 = irandom_range(xLowBound,xHighBound);
	randomY1 = irandom_range(yLowBound,yHighBound);

	tequila = instance_create_layer(randomX1,randomY1,layer_get_id("Instances"),obj_pickupParent);
	tequila.pickupNumber = 0;
	tequila.sprite_index = spr_tequilaBottle;
}


if(room == room0)
{
	global.holdingTequila = false;
	pickupUrnOne = instance_create_layer(randomX1,randomY1,layer_get_id("Instances"),obj_urn);	
	pickupUrnOne.pickupNumber = 1;
	zombieCreationThreshold = 400;
	
}
else if(room == room1)
{	
	pickupUrnTwo = instance_create_layer(randomX2,randomY2,layer_get_id("Instances"),obj_urn);
	pickupUrnTwo.pickupNumber = 2;
	zombieCreationThreshold = 300;
	global.pickupOne = true;
}
else if(room == room2)
{
	pickupUrnThree = instance_create_layer(randomX3,randomY3,layer_get_id("Instances"),obj_urn);
	pickupUrnThree.pickupNumber = 3;
	zombieCreationThreshold = 200;
	global.pickupOne = true;
	global.pickupTwo = true;
}
else if(room == rm_altar)
{
	global.pickupOne = true;
	global.pickupTwo = true;
	global.pickupThree = true;
}
else if(room == rm_altar)
{
	global.pickupOne = true;
	global.pickupTwo = true;
	global.pickupThree = true;
}

pickupGUI0 = instance_create_layer(105,85,layer_get_id("GUI_Layer"),obj_pickupGUI);
pickupGUI1 = instance_create_layer(30,85,layer_get_id("GUI_Layer"),obj_pickupGUI);
pickupGUI2 = instance_create_layer(55,85,layer_get_id("GUI_Layer"),obj_pickupGUI);
pickupGUI3 = instance_create_layer(80,85,layer_get_id("GUI_Layer"),obj_pickupGUI);

pickupGUI0.pickupNumber = 0;
pickupGUI1.pickupNumber = 1;
pickupGUI2.pickupNumber = 2;
pickupGUI3.pickupNumber = 3;

arrowOne = instance_create_layer(224,228,layer_get_id("Instances"),obj_arrow);
arrowTwo = instance_create_layer(160,300,layer_get_id("Instances"),obj_arrow);
arrowThree = instance_create_layer(288,160,layer_get_id("Instances"),obj_arrow);
arrowOne.visible = false;
arrowTwo.visible = false;
arrowThree.visible = false;

//Health bar creation
hpBar = instance_create_layer(0,10,layer_get_id("GUI_Layer"),obj_healthBarBackground);
helpMessage = instance_create_layer(260,10,layer_get_id("GUI_Layer"),obj_helpMessageGUI);

if(room == room0)
{
	rightWall = instance_create_layer(515,120,layer_get_id("Instances"),obj_wallCollisionObjectRoom0);
	helpMessage.sprite1 = spr_motherMessage1;
	helpMessage.sprite2 = spr_helpMessage1;
}
else if(room == room1)
{
	rightWall = instance_create_layer(515,120,layer_get_id("Instances"),obj_wallCollisionObjectRoom1);
	helpMessage.sprite1 = spr_motherMessage2;
	helpMessage.sprite2 = spr_helpMessage2;
}
else if(room == room2)
{
	rightWall = instance_create_layer(515,120,layer_get_id("Instances"),obj_wallCollisionObjectRoom2);
	helpMessage.sprite1 = spr_motherMessage3;
	helpMessage.sprite2 = spr_helpMessage3;
}
else if(room == rm_altar)
{
	helpMessage.sprite1 = spr_motherMessage4;
	helpMessage.sprite2 = spr_motherMessage4;
}
else if(room == z)
{
	helpMessage.sprite1 = spr_motherMessage5;
	helpMessage.sprite2 = spr_motherMessage5;
}

if(room != rm_altar && room != z)
{
rightWall.active = false;
}