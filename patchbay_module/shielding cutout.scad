difference() {
    cube(size = [105, 60, 2], center = false);
    
    translate([10, 30, 0]) {
        translate([0, -14, 0]) cylinder(h=20, r=5.5, center=true);
        translate([0, 14, 0]) cylinder(h=20, r=5.5, center=true);
    }
    
    translate([95, 30, 0]) {
        translate([0, -16, 0]) cylinder(h=20, r=5.5, center=true);
        translate([0, 16, 0]) cylinder(h=20, r=5.5, center=true);
    }
}