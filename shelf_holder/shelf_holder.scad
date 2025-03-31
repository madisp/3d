difference() {
    union() {
        cylinder(3, 12.5, 12.5, $fn=100);
        translate([0,0,1]) cylinder(15, 4.75, 4.75, $fn=100);
    }
    rotate([0,90,0]) {
        translate([-10,0,-2]) cylinder(22, 2.5, 2.5, $fn=100);
    }
    translate([5,-20,-1]) {
        cube([10, 40, 10]);
    }
}