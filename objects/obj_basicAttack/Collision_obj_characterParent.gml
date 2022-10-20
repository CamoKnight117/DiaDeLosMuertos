if(image_index == DMGFrame && ((depth - other.depth) < depthDifToDamage) && Owner != other)
{
	other.isHit = true;
	other.stunCounter = stunLength;
}



