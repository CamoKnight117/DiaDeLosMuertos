/// @description Insert description here
// You can write your code in this editor

walkAreaWidth = 512;
walkAreaHeight = 192;

global.walkBorderLeft = 0;
global.walkBorderRight = 512;
global.walkBorderBottom = 384;
global.walkBorderTop = 192;

global.pickupOne = false;
global.pickupTwo = false;
global.pickupThree = false;

pickupOne = instance_create_layer(200,50,layer_get_id("Instances"),obj_pickupItem);
pickupTwo = instance_create_layer(100,50,layer_get_id("Instances"),obj_pickupItem);
pickupThree = instance_create_layer(150,50,layer_get_id("Instances"),obj_pickupItem);

pickupOne.pickupNumber = 1;
pickupTwo.pickupNumber = 2;
pickupThree.pickupNumber = 3;

pickupOne.depth = -1*pickupOne.y * -1;
pickupTwo.depth = -1*pickupTwo.y * -1;
pickupThree.depth = -1*pickupThree.y * -1;

pickupGUI1 = instance_create_layer(200,75,layer_get_id("GUILayer"),obj_pickupGUI);
pickupGUI2 = instance_create_layer(100,75,layer_get_id("GUILayer"),obj_pickupGUI);
pickupGUI3 = instance_create_layer(150,75,layer_get_id("GUILayer"),obj_pickupGUI);

pickupGUI1.pickupNumber = 1;
pickupGUI2.pickupNumber = 2;
pickupGUI3.pickupNumber = 3;