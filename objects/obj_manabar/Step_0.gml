image_xscale = (currentMP/maxMP) * (xscale)
image_yscale = (yscale)/3
if(currentMP < maxMP && alarm[0]<=0)
{
	alarm[0] = seconds(mpRegenTickRate)
}
if(currentMP>maxMP) currentMP = maxMP

if(currentMP < 0) currentMP = 0