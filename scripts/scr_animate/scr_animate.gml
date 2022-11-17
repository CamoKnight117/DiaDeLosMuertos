function scr_animate(attackAnimationArray, walkAnimationArray){
	
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
 }
 else if(isAttacking)
 {
	 sprite_index = attackingSprite;
	 if(frameIndex > sprite_get_number(sprite_index) - 1)
	 {
		frameIndex = 0;
		isAttacking = false;
	 }
	 maxFramesPerImage = attackAnimationArray[frameIndex];
 }
 
 
 
if(frameCounter >= maxFramesPerImage)
{
	frameCounter = 0;
	
	if(frameIndex <= sprite_get_number(sprite_index) - 1)
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
 
 
 frameCounter++;
}