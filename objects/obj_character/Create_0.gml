/// @description Insert description here
// You can write your code in this editor
event_inherited();

idleSprite = spr_mariachiManIdle;
attackingSprite = spr_mariachiManPunch;
runningSprite = spr_mariachiManWalk;
sprintingSprite = spr_mariachiManWalk;
hitSprite = spr_mariachiManHit;
chargeSprite = spr_mariachiManCharge;
strumSprite = spr_mariachiManStrum;
gamepad_set_axis_deadzone(0, 0.7);

attackAnimationArray = [7, 7, 7, 7, 5, 3, 3];
basicAttackDamageStart = 4;
chargeAnimationArray = [20,20,20,20];
strumAnimationArray = [7,7,7,7,7,7,7,7,7,7];
strumAttackDamageStart = 1;
strumAttackSecondDamage = 4;
strumAttackThirdDamage = 7;

charged = false;
isStrumming = false;

deathDisplayLength2 = 120;


