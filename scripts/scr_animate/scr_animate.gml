function scr_animate(){
	
	if(beginAnimation)
	{
		frameCounter = 0; //Counts how many frames have displayed per animation frame
		frameIndex = 0; //Counts which animation frame we're on
	}
	
	defaultArray = [1];
	maxFramesPerImage = defaultArray[0];
 
 if(idle)
 {
	 sprite_index = idleSprite;
 }
 else if(running)
 {
	 sprite_index = runningSprite;
	 if(frameIndex > sprite_get_number(sprite_index) - 1)
		frameIndex = 0;	 
	 maxFramesPerImage = walkAnimationArray[frameIndex];
 }
  else if(sprinting)
 {
	 sprite_index = sprintingSprite;
	 if(frameIndex > sprite_get_number(sprite_index) - 1)
		frameIndex = 0;	 
	 maxFramesPerImage = walkAnimationArray[frameIndex];
 }
if(isHit)
 {
	 sprite_index = hitSprite;
	 image_xscale = hitOrigin;
	 
	 if (hitSprite = spr_zombieHit) and !audio_is_playing(snd_zombie)
	 {
		 audio_play_sound(snd_zombie ,5, false);
	 }
	 
	 if (hitSprite = spr_laCatrinaHit) and !audio_is_playing(snd_zombie)
	 {
		 audio_play_sound(snd_zombie ,5, false);
	 }
	 
 }
 else if(isAttacking || isThrowAttacking)
 {
	 sprite_index = attackingSprite;
	 if(frameIndex >= sprite_get_number(sprite_index) - 1)
	 {
		isAttacking = false;
		isThrowAttacking = false;
	 }
	 maxFramesPerImage = attackAnimationArray[frameIndex];
 }
 else if(isChargeAttacking && !isStrumming)
 {
	 if(strum && charged)
	 {
	 isStrumming = true;
	 isChargeAttacking = true;
	 sprite_index = strumSprite;
	 frameIndex = 0;
	 }
	 else
	 {
	 sprite_index = chargeSprite;
	 }
	 if(frameIndex >= sprite_get_number(sprite_index) - 1 && (sprite_index != strumSprite))
	 {
		frameIndex = 3;
		frameCounter = 0;
		charged = true;
	 }
	 maxFramesPerImage = chargeAnimationArray[frameIndex];
 }
 else if(isStrumming)
 {
	 sprite_index = strumSprite;
	 
	 if(frameIndex == 1 && frameCounter == 1)
	 {		 
	 audio_play_sound(snd_guitarExplosion, 5, false, 5.0);
	 }
	 
	 if(frameIndex >= sprite_get_number(sprite_index) - 1)
	 {
		isAttacking = false;
		isThrowAttacking = false;
		isStrumming = false;
		isChargeAttacking = false;
		charged = false;
	 }
	 maxFramesPerImage = strumAnimationArray[frameIndex];
 }
 
 

if(frameCounter >= maxFramesPerImage)
{
	frameCounter = 0;
	
	if(frameIndex < sprite_get_number(sprite_index) - 1)
	{
		frameIndex++
	}
	else
	{
		frameIndex = 0;
	}	
}
image_index = frameIndex;
 
 if(isAttacking && frameIndex == basicAttackDamageStart)
 {
	if(frameCounter == 0)
	{
	 	attack = instance_create_depth(x,y,depth,basicAttackObject);
		hasAttackObject = true;
		if(image_xscale = 1)
		{
		attack.x = x + attack.xOffset;
		attack.y = y + attack.yOffset;
		}
		else
		{
			attack.x = x - attack.sprite_width - attack.xOffset;
			attack.y = y + attack.yOffset; 
		}					
		attack.Owner = self;
	}
 }
 
  if(isThrowAttacking && frameIndex == basicAttackDamageStart)
 {
	if(frameCounter == 0)
	{
		if(object_is_ancestor(self.object_index, obj_enemy))
		{
	 	throwAttack = instance_create_depth(x,y,depth,obj_tequilaBottleThrownEnemy);
		}
		else
		{
		throwAttack = instance_create_depth(x,y,depth,obj_tequilaBottleThrown);
		global.holdingTequila = false;
		throwAttack.xVel = 4.5;
		}
		hasAttackObject = true;
		if(image_xscale = 1)
		{
		throwAttack.x = x + throwAttack.xOffset;
		throwAttack.y = y + throwAttack.yOffset;		
		}
		else
		{
			throwAttack.x = x - throwAttack.xOffset;
			throwAttack.y = y + throwAttack.yOffset; 
		}					
		throwAttack.horizontal_dir = image_xscale;
		throwAttack.Owner = self;
		isThrowAttacking = false;
	}
 } 
 
  if(isStrumming &&   (frameIndex == strumAttackDamageStart 
  ||frameIndex == strumAttackSecondDamage ||frameIndex == strumAttackThirdDamage) )
 {
	if(frameCounter == 0)
	{
	 	attack = instance_create_depth(x,y,depth,obj_chargedAttack);
		hasAttackObject = true;			
		attack.Owner = self;
	}
 }
 
 frameCounter++;
}