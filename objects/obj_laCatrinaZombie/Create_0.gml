/// @description Insert description here
// You can write your code in this editor


// Inherit the parent event
event_inherited();


followLag = 60;
HP = 18;

isOnScreen = false;

attackDelay = 300;
runningAway = false;

idleSprite = spr_laCatrinaIdle;
runningSprite = spr_laCatrinaWalk;
attackingSprite = spr_laCatrinaAttack;
sprintingSprite = spr_zombieMariachi;
hitSprite = spr_laCatrinaHit;
deadSprite = spr_laCatrinaDead;

walkAnimationArray = [6,6,6,6,6,6,6,6,6];
attackAnimationArray = [7,8,9,6,7];