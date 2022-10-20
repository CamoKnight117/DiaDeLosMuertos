if(((depth - other.depth) < depthDifToDamage) && Owner != other)
{
	other.isHit = true;
	other.stunCounter = stunLength;
}



