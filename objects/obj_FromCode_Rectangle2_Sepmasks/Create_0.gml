/// @description Insert description here
// You can write your code in this editor
spr = sprite_add("Precise2.png", 3, false, false, 32, 32);
sprite_set_speed(spr, 1, spritespeed_framespersecond)
sprite_collision_mask(spr, true, 0, 0, 0, 0, 0, bboxkind_rectangular, 0);
sprite_index = spr

i = 0;
with object_index {
	image_angle = other.i * 60;
	other.i++;
}