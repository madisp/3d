wall_width = 1.5;
// inner volume sie
depth = 70;
width = 20;
height = 20;

hole1_size = 1.75;
hole2_size = 1.5;

cover_depth = 3 + wall_width;
relay_off_x = 11 + wall_width;
relay_cut = 17;

difference() {
    cube([depth + wall_width * 2, width + wall_width * 2, height + wall_width * 2]);

    translate([wall_width, wall_width, wall_width])
        cube([depth,width,height + wall_width * 2]);
    translate([-wall_width, width/2 + wall_width, wall_width + 7])
        rotate([90, 0, 90])
            cylinder(h=wall_width * 3,r=hole1_size,$fn=100);
    translate([depth, wall_width + width/2, wall_width + 7])
        rotate([90, 0, 90])
            cylinder(h=wall_width * 3,r=hole2_size,$fn=100);
}
translate([0, width + wall_width * 2 + 5]) {
    union() {
        cube([depth + wall_width * 2, width + wall_width * 2, wall_width]);
        difference() {
            translate([wall_width, wall_width, 0.5])
                cube([depth, width, cover_depth + 0.5]);

            translate([relay_off_x, 0, 0])
                cube([relay_cut, wall_width * 3, cover_depth + 2]);

            translate([relay_off_x, width - wall_width, 0])
                cube([relay_cut, wall_width * 3, cover_depth + 2]);
    
            translate([wall_width * 2, wall_width * 2, wall_width / 2])
                cube([depth - wall_width * 2, width - wall_width * 2, cover_depth + 1]);
        }
    }
}

