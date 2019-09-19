var pre_color = draw_get_color();
var offsetx = 96;
for (var _x = bbox_left; _x <= bbox_right; _x++) {
	for (var _y = bbox_top; _y <= bbox_bottom; _y++) {
		if (collision_point(_x, _y, id, true, false)) {
			draw_set_color(c_green);
			draw_point(_x + offsetx , _y);
		}
	}
}
draw_set_color(pre_color)