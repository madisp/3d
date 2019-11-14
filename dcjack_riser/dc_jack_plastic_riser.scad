// walls
difference() {
    translate([11, 34, 1]) cylinder(r=18, h=4, $fn=100);
    translate([11, 34, 0]) cylinder(r=15, h=12, $fn=100);
}

// baseplate
difference() {
    translate([11, 34, 0]) cylinder(r=18, h=1, $fn=100);
    // hole for DC in
    translate([11, 34, -1]) cylinder(r=6.8, h=30, $fn=100);
    // M2 hole for screw
    translate([-1, 34, -1]) cylinder(r=1.1, h=30, $fn=100);
    translate([23, 34, -1]) cylinder(r=1.1, h=30, $fn=100);
}
