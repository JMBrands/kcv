/// @description Insert description here
// You can write your code in this editor

if (first) {
	nets = [inst_83FB014];
	first = false;
}
if (!cooldown) {
	while (array_length(nets)>0) {
		instance_destroy(nets[0])
		array_delete(nets,0,1)
	}
}


