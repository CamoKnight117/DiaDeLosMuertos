/// @description Insert description here
// You can write your code in this editor

followLag = 60;

isOnScreen = false;

// Inherit the parent event
event_inherited();

attackDelay = 200;
runningAway = false;

idleSprite = spr_laCatrinaIdle;
runningSprite = spr_laCatrinaWalk;
attackingSprite = spr_laCatrinaAttack;
sprintingSprite = spr_zombieMariachi;
hitSprite = spr_laCatrinaHit;

walkAnimationFrameCounts = [6,6,6,6,6,6,6,6,6];
basicAttackFrameCounts = [7,8,9,6,7];