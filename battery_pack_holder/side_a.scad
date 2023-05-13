// main dimensions
plate_width = 120;
plate_height = 140;
wall_diameter = 5;
wall_height = 30;
floor_height = 4;

// main chunk
main_w = plate_width + 2 * wall_diameter;
main_h = plate_height + 2 * wall_diameter;
main_d = wall_height;

difference() {
    translate([0, 0, -floor_height]) {
        cube([main_w, main_h, main_d]);
    }
    
    // cut out main hole
    translate([wall_diameter, wall_diameter]) {
        cube([plate_width, plate_height, 100]);
    }
    
    // cut out 4 screw holes
    translate([main_w/2 - (55/2), 28]) {
        cylinder(100, 2.5, 2.5, center = true, $fn = 100);
            cylinder(5.5, 2.5, 7.5, center = true, $fn = 100);
        translate([0, 56]) {
            cylinder(100, 2.5, 2.5, center = true, $fn = 100);
            cylinder(5.5, 2.5, 7.5, center = true, $fn = 100);
        }
        translate([55, 0, 0]) {
            cylinder(100, 2.5, 2.5, center = true, $fn = 100);
            cylinder(5.5, 2.5, 7.5, center = true, $fn = 100);
            translate([0, 56]) {
                cylinder(100, 2.5, 2.5, center = true, $fn = 100);
                cylinder(5.5, 2.5, 7.5, center = true, $fn = 100);
            }
        }
    }
    
    // side slats
    translate([main_w/2 - 45.5, 70]) {
        cube([3, 20, 100], center = true);
    }
    translate([main_w/2 + 45.5, 70]) {
        cube([3, 20, 100], center = true);
    }
    
    // cut out rectangular hole
    translate([main_w/2 + 1.5, 28]) {
        cube([33, 12, 100], center = true);
    }
}