if(((depth - other.depth) < depthDifToDamage) 
&& Owner != other && animationCounter = DMGFrame 
&& Owner.object_index != other.object_index 
&& Owner.isHit == false)
{
	other.isHit = true;
	other.stunCounter = stunLength;
	other.HP -= damage;
	other.knockbackVelocity = knockbackPower;
	if(Owner.x < other.x)
	{
		other.hitOrigin = -1;
	}
	else
	{
		other.hitOrigin = 1;
	}
	
}



