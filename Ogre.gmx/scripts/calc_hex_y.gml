/// calc_hex_y(hex_col_id, hex_row_id)

/*
    Calculate y position of the hex with id CCRR from Ogre map
    CC := col id {01..15}
    RR := row id {01..22}
    Hex 0101 is assumed to be located at the origin (0,0) of the grid.
    NOTE: Hex 0101 is actually not a valid hex on the Ogre map.
*/

// arguments
var hex_col_id = argument0;
var hex_row_id = argument1;

var hex_width = sprite_get_width(spr_hex);
var hex_side = hex_width / 2;
var hex_height = sqrt(3) * hex_side;

var hex_y = (hex_row_id - 1) * hex_height;
if (hex_col_id % 2 == 0) {  // even columns
    hex_y += 0.5 * hex_height;
}
return hex_y;
