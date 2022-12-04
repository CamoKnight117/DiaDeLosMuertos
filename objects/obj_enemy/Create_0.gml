/// @description Insert description here
// You can write your code in this editor
event_inherited();

awake = false;

following = false;
followLag = 60; //Approximately how long an enemy takes to start following you
followCounter = 0;
followDistance = 500;

inputLagCounter = 0;
inputLag = 20;

prevLeft = 0;
prevRight = 0;
prevUp = 0;
prevDown = 0;

attackCountdown = 0;
basicAttackObject = obj_basicZombieAttack;
attackDelay = 100; //Approximately how long an enemy takes to follow up attack
basicAttackFrameCounts = [7, 7, 7, 7];
basicAttackDamageStart = 4;

idleSprite = spr_zombieMariachi;
runningSprite = spr_zombieWalk;
attackingSprite = spr_ZombieAttack;
sprintingSprite = spr_zombieMariachi;
hitSprite = spr_zombieHit;



HP = 30;

//Movement speeds for scr_movement
horRunSpeed = 1.0;
verRunSpeed = .50;
walkAnimationFrameCounts = [10,10,10,10,10,10,10,10,10,10];

isEnemy = true;


