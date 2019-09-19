/// @description Insert description here
// You can write your code in this editor
draw_set_colour(c_blue);
with (obj_Collision_Parent){
    draw_line(bbox_left, bbox_top, bbox_left, bbox_bottom);
    draw_line(bbox_left, bbox_top, bbox_right, bbox_top);
    draw_line(bbox_right, bbox_top, bbox_right, bbox_bottom);
    draw_line(bbox_left, bbox_bottom, bbox_right, bbox_bottom);
    image_blend = c_white;
	if sprite_index {
		draw_self();
	}

	draw_collision_mask();
	draw_name();
	if (object_index == obj_Bug){
		var pre_color = draw_get_color();

		var text = "Right click on the graph to show bug";
		var offsetx = 140;
		draw_set_color(c_white);
		draw_text(x + offsetx, y, text);

		draw_set_color(pre_color)
	}
}
draw_set_colour(c_white);

var _array = collision_line_first(x, y, mouse_x, mouse_y, obj_Collision_Parent, true, true);
if _array[0] != -1 {
    draw_line(x, y, _array[1], _array[2]);
    _array[0].image_blend = c_red;
	with _array[0] {
		if sprite_index {
			draw_self();
		}
	}
	draw_circle(_array[1], _array[2], 3, false);
}
else {
    draw_line(x, y, mouse_x, mouse_y);
}
draw_circle(x, y, 3, false);