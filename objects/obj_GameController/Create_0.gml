/// @description Insert description here
// You can write your code in this editor

zombieCreationCounter = 0;
zombieCreationThreshold = 180;

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

zombieXLowBound = -100;
zombieXHighBound = 612;
zombieYLowBound = 434;
zombieYHighBound = 180;



randomX1 = random_range(xLowBound,xHighBound);
randomY1 = random_range(yLowBound,yHighBound);
randomX2 = random_range(xLowBound,xHighBound);
randomY2 = random_range(yLowBound,yHighBound);
randomX3 = random_range(xLowBound,xHighBound);
randomY3 = random_range(yLowBound,yHighBound);

pickupUrnOne = instance_create_layer(randomX1,randomY1,layer_get_id("Instances"),obj_urn);
pickupUrnTwo = instance_create_layer(randomX2,randomY2,layer_get_id("Instances"),obj_urn);
pickupUrnThree = instance_create_layer(randomX3,randomY3,layer_get_id("Instances"),obj_urn);

var emptyUrnsNum = 10;
for(i = 0; i < emptyUrnsNum; i++)
{
	
	randomX1 = random_range(xLowBound,xHighBound);
	randomY1 = random_range(yLowBound,yHighBound);

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