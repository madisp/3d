// whoops
scale([-1,1,1]) {
    // walls
    difference() {
        hull() {
            translate([11, 11, 1]) cylinder(r=11, h=10, $fn=100);
            translate([11, 34, 1]) cylinder(r=11, h=10, $fn=100);
        }
        hull() {
            translate([11, 11, 0]) cylinder(r=9, h=12, $fn=100);
            translate([11, 34, 0]) cylinder(r=9, h=12, $fn=100);
        }
    }

    // notch
    difference() {
        translate([14, 47, 1]) cylinder(r=4, h=10, $fn=100);
        translate([14, 47, 0]) cylinder(r=3, h=30, $fn=100);
        translate([9,49,0]) cube(size=[10,10,30]);
        translate([14,41,0]) cube(size=[10,10,30]);
    }

    // baseplate
    difference() {
        hull() {
            translate([11, 11, 0]) cylinder(r=16, h=1, $fn=100);
            translate([11, 34, 0]) cylinder(r=16, h=1, $fn=100);
        }
        
        // hole for DC in
        translate([11, 34, -1]) cylinder(r=6.8, h=30, $fn=100);
        
        // hole for tumbler
        translate([11, 22, -1]) cylinder(r=3.0, h=30, $fn=100);
    }
}
