// main dimensions
plate_width = 120;
plate_height = 140;
wall_diameter = 5;
wall_height = 35;
floor_height = 4;

smooth_radius = 3;

// main chunk
main_w = plate_width + 2 * wall_diameter;
main_h = plate_height + 2 * wall_diameter;
main_d = wall_height;

difference() {
    hull() {
        translate([0, 0, -floor_height + smooth_radius*2]) {
            cyl_h = main_d - smooth_radius*2;
            translate([smooth_radius, smooth_radius]) cylinder(cyl_h, r = smooth_radius, $fn = 25);
            translate([main_w-smooth_radius, smooth_radius]) cylinder(cyl_h, r = smooth_radius, $fn = 25);
            translate([smooth_radius, main_h-smooth_radius]) cylinder(cyl_h, r = smooth_radius, $fn = 25);
            translate([main_w-smooth_radius, main_h-smooth_radius]) cylinder(cyl_h, r = smooth_radius, $fn = 25);
        }
        translate([0, 0, -floor_height + smooth_radius]) {
            translate([smooth_radius, smooth_radius]) sphere(r = smooth_radius, $fn = 25);
            translate([main_w-smooth_radius, smooth_radius]) sphere(r = smooth_radius, $fn = 25);
            translate([smooth_radius, main_h-smooth_radius]) sphere(r = smooth_radius, $fn = 25);
            translate([main_w-smooth_radius, main_h-smooth_radius]) sphere(r = smooth_radius, $fn = 25);
        }
    }
    
    // cut out main hole
    translate([wall_diameter, wall_diameter]) {
        cube([plate_width, plate_height, 100]);
    }
}