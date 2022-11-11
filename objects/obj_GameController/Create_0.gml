/// @description Insert description here
// You can write your code in this editor


global.walkBorderLeft = 0;
global.walkBorderRight = 512;
global.walkBorderBottom = 334;
global.walkBorderTop = 142;

global.pickupOne = false;
global.pickupTwo = false;
global.pickupThree = false;

pickupOne = instance_create_layer(200,200,layer_get_id("Instances"),obj_pickupItem);
pickupTwo = instance_create_layer(100,200,layer_get_id("Instances"),obj_pickupItem);
pickupThree = instance_create_layer(150,200,layer_get_id("Instances"),obj_pickupItem);

pickupOne.pickupNumber = 1;
pickupTwo.pickupNumber = 2;
pickupThree.pickupNumber = 3;

pickupOne.depth = pickupOne.y * -1;
pickupTwo.depth = pickupTwo.y * -1;
pickupThree.depth = pickupThree.y * -1;

pickupGUI1 = instance_create_layer(485,25,layer_get_id("GUI_Layer"),obj_pickupGUI);
pickupGUI2 = instance_create_layer(460,25,layer_get_id("GUI_Layer"),obj_pickupGUI);
pickupGUI3 = instance_create_layer(435,25,layer_get_id("GUI_Layer"),obj_pickupGUI);

pickupGUI1.pickupNumber = 1;
pickupGUI2.pickupNumber = 2;
pickupGUI3.pickupNumber = 3;