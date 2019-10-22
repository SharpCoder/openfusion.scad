/**
	Maths
**/
function rad(degree) = (degree / 180) * 3.14;
function deg(rad) = (rad * 180) / 3.14;

/**
	Modules
**/
module circular_mirror(x=0, y=0, d, steps) {
    aps = 360 / steps;
    for (step=[0:steps]) {
        current_angle = step * aps;
        unit_x = cos(current_angle);
        unit_y = sin(current_angle);
        translate([x, y, 0]) {
            translate([unit_x * d, unit_y * d, 0]) {
                rotate(current_angle) children();
            }    
        }
    }
}

// This is a hexagon, but radius is the distance 
// from the center point to the middle of a side. 
// (rather than to a pointy end) which mimics fusion.
module hexagon(r) {
	rotate(90) circle($fn=6, r=r * 1.125);
}

// Mirror in 4 directions
module quadruple_mirror() {
    children();
    mirror([-1, 0, 0]) children();
    mirror([0, -1, 0]) children();
    mirror([-1, 0, 0]) mirror([0, -1, 0]) children();
}

// Splat children elements equidistance "count" times along 
// a particular vector (x, y, and/or z) over some distance (d)
module splat(d, count, x=false, y=false, z=false) {
    step_distance=d / (count - 1);
    for (step=[0:count - 1]) {
        move = step * step_distance;        
        translate([x ? move : 0, y ? move : 0, z ? move : 0])
        children();
    }
}
