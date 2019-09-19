/// @function               collision_line_first(x1, y1, x2, y2, obj, prec, notme)
/// @param  {real}  x1      The X coordinate to start the line check from
/// @param  {real}  y1      The Y coordinate to start the line check from
/// @param  {real}  x2      The X coordinate to end the line check at
/// @param  {real}  y2      The Y coordinate to end the line check at
/// @param  {id}    obj     The object index to check for a collision with
/// @param  {bool}  prec    Whether to use precise collision checking or not
/// @param  {bool}  notme   Whether to exclude the calling instance from the check or not

/// @description                This script works the same as the collision_line function/action   
///                         only it will return the ID of the first instance found to be in 
///                         collision as well as the X/Y position of the actual collision point.
///                         This information is returned as an array where:
///
///                             [0] = Instance ID of the found instance, or -1 if none are found
///                             [1] = The x position of the collision
///                             [2] = The y position of the collision
///

// Declare arguments
var x1 = argument0;
var y1 = argument1;
var x2 = argument2;
var y2 = argument3;
var obj = argument4;
var prec = argument5;
var notme = argument6;

// Declare internals
var dx = 0;
var dy = 0;
var return_array = array_create(3, -1);

// Get the first hit
var first_instance = collision_line(x1, y1, x2, y2, obj, prec, notme);

// If hit find the exact hit
if instance_exists(first_instance)
    {
    // Get x and y segment lengths
    dx = x2 - x1;
    dy = y2 - y1;
    // Perform check while distances are greater or equal to 1
    while (abs(dx) >= 1 or abs(dy) >= 1)
        {
        // Divide the modifier distance by 2 every iteration
        dx /= 2;
        dy /= 2;
        // Check the new collision line modified by pulling back the end of the hit line by half the distance each loop.
        var new_instance = collision_line(x1, y1, x2 - dx, y2 - dy, obj, prec, notme);
        // If we still hit the instance we didn't move back far enough to get outside of it.
        if (new_instance != noone)
            {
            //set the found instance to what we hit, and pull back the line end by the current modifier
            first_instance = new_instance;
            x2 -= dx;
            y2 -= dy;
            }
        }
    }
else first_instance = -1;

// Set return array
return_array[0] = first_instance;
return_array[1] = x2 - dx;
return_array[2] = y2 - (dy * 2);

return return_array;