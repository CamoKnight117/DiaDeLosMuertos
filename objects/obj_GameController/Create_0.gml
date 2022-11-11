/// @description Insert description here
// You can write your code in this editor


global.walkBorderLeft = 0;
global.walkBorderRight = 512;
global.walkBorderBottom = 334;
global.walkBorderTop = 142;

global.pickupOne = false;
global.pickupTwo = false;
global.pickupThree = false;

randomX1 = random_range(15,485);
randomY1 = random_range(152,319);
randomX2 = random_range(15,485);
randomY2 = random_range(152,319);
randomX3 = random_range(15,485);
randomY3 = random_range(152,319);

pickupOne = instance_create_layer(randomX1,randomY1,layer_get_id("Instances"),obj_pickupItem);
pickupTwo = instance_create_layer(randomX2,randomY2,layer_get_id("Instances"),obj_pickupItem);
pickupThree = instance_create_layer(randomX3,randomY3,layer_get_id("Instances"),obj_pickupItem);

pickupOne.pickupNumber = 1;
pickupTwo.pickupNumber = 2;
pickupThree.pickupNumber = 3;

pickupGUI1 = instance_create_layer(485,25,layer_get_id("GUI_Layer"),obj_pickupGUI);
pickupGUI2 = instance_create_layer(460,25,layer_get_id("GUI_Layer"),obj_pickupGUI);
pickupGUI3 = instance_create_layer(435,25,layer_get_id("GUI_Layer"),obj_pickupGUI);

pickupGUI1.pickupNumber = 1;
pickupGUI2.pickupNumber = 2;
pickupGUI3.pickupNumber = 3;