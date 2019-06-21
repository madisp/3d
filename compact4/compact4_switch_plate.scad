difference() {
    // outer shell
    hull() {
        translate([11, 11, 0]) cylinder(r=11, h=3, $fn=100);
        translate([11, 34, 0]) cylinder(r=11, h=3, $fn=100);
    }
}

// notch
difference() {
    translate([14, 47, 0]) cylinder(r=4, h=3, $fn=100);
    translate([14, 47, -1]) cylinder(r=3, h=30, $fn=100);
    translate([9,49,-1]) cube(size=[10,10,30]);
    translate([14,41,-1]) cube(size=[10,10,30]);
}

translate([10,17.5,1]) cube(size=[2,10,10]);