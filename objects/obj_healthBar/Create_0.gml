/// @description Insert description here
// You can write your code in this editor
leftCap = instance_create_layer(x,y,layer_get_id("GUI_Layer"),obj_healthBarLeftCap);
rightCap = instance_create_layer(x,y,layer_get_id("GUI_Layer"),obj_healthBarRightCap);
leftCap.depth = depth-1;
rightCap.depth = depth-1;




