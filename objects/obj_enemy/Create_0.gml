/// @description Insert description here
// You can write your code in this editor
event_inherited();

awake = false;

following = false;
followLag = 45; //Approximately how long an enemy takes to start following you
followCounter = 0;

attackCountdown = 0;
attackDelay = 100; //Approximately how long an enemy takes to follow up attack

animationFPS = 6;
frameCounter = 0;
frameIndex = 0;
idleSprite = spr_zombieMariachi;
runningSprite = spr_zombieMariachi;
sprintingSprite = spr_zombieMariachi;
hitSprite = spr_mariachiManHit;


