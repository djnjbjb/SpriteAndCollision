/// @description Insert description here
// You can write your code in this editor
spr = sprite_add("Diamond.png", 1, false, false, 32, 32);
sprite_collision_mask(spr, false, 0, 0, 0, 0, 0, bboxkind_diamond, 0);
sprite_index = spr

i = 0;
with object_index {
	image_angle = other.i * 60;
	other.i++;
}