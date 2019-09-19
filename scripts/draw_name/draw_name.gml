var pre_color = draw_get_color();

var name = object_get_name(object_index);
var offsetx = 140;
var offsety = -40;
draw_set_color(c_white);
draw_text(x + offsetx, y + offsety, name);

draw_set_color(pre_color)