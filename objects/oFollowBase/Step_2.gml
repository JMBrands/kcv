/// @description Insert description here
// You can write your code in this editor
offsetscale=1;
if (!sign(owner.hsp)==0) offsetscale = sign(owner.hsp);


x=owner.x+(offset_x*offsetscale);
y=owner.y+offset_y;

if sign(owner.hsp) == 1 || sign(owner.hsp) == -1 {
	image_xscale = sign(owner.hsp);
}



