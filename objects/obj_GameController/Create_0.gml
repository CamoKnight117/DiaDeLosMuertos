/// @description Insert description here
// You can write your code in this editor

zombieCreationCounter = 0;
zombieCreationThreshold = 1000;

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

pickupUrnOne = instance_create_layer(randomX1,randomY1,layer_get_id("Instances"),obj_urn);
pickupUrnTwo = instance_create_layer(randomX2,randomY2,layer_get_id("Instances"),obj_urn);
pickupUrnThree = instance_create_layer(randomX3,randomY3,layer_get_id("Instances"),obj_urn);

var emptyUrnsNum = 10;
for(i = 0; i < emptyUrnsNum; i++)
{
	
	randomX1 = irandom_range(xLowBound,xHighBound);
	randomY1 = irandom_range(yLowBound,yHighBound);

	instance_create_layer(randomX1,randomY1,layer_get_id("Instances"),obj_urn);

}

pickupUrnOne.pickupNumber = 1;
pickupUrnTwo.pickupNumber = 2;
pickupUrnThree.pickupNumber = 3;

pickupGUI1 = instance_create_layer(485,25,layer_get_id("GUI_Layer"),obj_pickupGUI);
pickupGUI2 = instance_create_layer(460,25,layer_get_id("GUI_Layer"),obj_pickupGUI);
pickupGUI3 = instance_create_layer(435,25,layer_get_id("GUI_Layer"),obj_pickupGUI);

pickupGUI1.pickupNumber = 1;
pickupGUI2.pickupNumber = 2;
pickupGUI3.pickupNumber = 3;

arrowOne = instance_create_layer(224,228,layer_get_id("Instances"),obj_arrow);
arrowTwo = instance_create_layer(160,300,layer_get_id("Instances"),obj_arrow);
arrowThree = instance_create_layer(288,160,layer_get_id("Instances"),obj_arrow);
arrowOne.visible = false;
arrowTwo.visible = false;
arrowThree.visible = false;

rightWall = instance_create_layer(505,108,layer_get_id("Instances"),obj_wallCollisionObject);
rightWall.active = false;