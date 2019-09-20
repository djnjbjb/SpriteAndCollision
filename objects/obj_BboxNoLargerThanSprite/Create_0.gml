/// @description Insert description here
// You can write your code in this editor
spr = sprite_add("Ellipse.png", 1, false, false, 32, 32);
sprite_collision_mask(spr, false, 2, 32, 32, 9999, 9999, bboxkind_ellipse, 0);
sprite_index = spr

i = 0;
with object_index {
	image_angle = other.i * 60;
	other.i++;
}