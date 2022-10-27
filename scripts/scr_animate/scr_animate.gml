function scr_animate(){
	
	if(beginAnimation)
	{
		frameCounter = 0;
		frameIndex = 0;
	}
 
 maxFrameCounter = 60/animationFPS;
 
 if(idle)
 {
	 sprite_index = idleSprite;
 }
 else if(running)
 {
	 sprite_index = runningSprite;
 }
  else if(sprinting)
 {
	 sprite_index = sprintingSprite;
 }

if(isHit)
 {
	 sprite_index = hitSprite;
	 image_xscale = hitOrigin;
 }
 else if(isAttacking)
 {
	 sprite_index = attackingSprite;
 }
 
 
 
if(frameCounter >= maxFrameCounter)
{
	frameCounter = 0;
	
	if(frameIndex <= sprite_get_number(sprite_index) - 1)
	{
		frameIndex++
		attackingCounter++;
	}
	else
	{
		frameIndex = 0;
	}
	
}
image_index = frameIndex;

 frameCounter++;
}