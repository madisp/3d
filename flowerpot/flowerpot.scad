translate([0,0,5]) {
    difference() {
        union() {
            cylinder(h=90, d1=85, d2=115, $fn=200);
            translate([0,0,-5]) {
                translate([25,0,0]) cylinder(h=10, d1=5, d2=30, $fn=100);
                translate([-25,0,0]) cylinder(h=10, d1=5, d2=30, $fn=100);
                translate([0,25,0]) cylinder(h=10, d1=5, d2=30, $fn=100);
                translate([0,-25,0]) cylinder(h=10, d1=5, d2=30, $fn=100);
            }
        }
        translate([0,0,3]) {
            cylinder(h=90, d1=84, d2=114, $fn=200);
        }
    }
}