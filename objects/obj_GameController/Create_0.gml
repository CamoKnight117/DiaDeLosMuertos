/// @description Insert description here
// You can write your code in this editor

zombieCreationCounter = 0;
zombieCreationThreshold = 180;

laCatrinaCreationCounter = 0;
laCatrinaCreationThreshold = 1000;

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
	var numTequila = irandom_range(3,6);
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

pickupGUI0 = instance_create_layer(485,50,layer_get_id("GUI_Layer"),obj_pickupGUI);
pickupGUI1 = instance_create_layer(485,25,layer_get_id("GUI_Layer"),obj_pickupGUI);
pickupGUI2 = instance_create_layer(460,25,layer_get_id("GUI_Layer"),obj_pickupGUI);
pickupGUI3 = instance_create_layer(435,25,layer_get_id("GUI_Layer"),obj_pickupGUI);

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


if(room == room0)
{
	rightWall = instance_create_layer(515,120,layer_get_id("Instances"),obj_wallCollisionObjectRoom0);
}
if(room == room1)
{
	rightWall = instance_create_layer(515,120,layer_get_id("Instances"),obj_wallCollisionObjectRoom1);
}
if(room == room2)
{
	rightWall = instance_create_layer(515,120,layer_get_id("Instances"),obj_wallCollisionObjectRoom2);
}

if(room != rm_altar)
{
rightWall.active = false;
}