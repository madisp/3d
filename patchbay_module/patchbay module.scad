difference() {
    cube(size = [50, 80, 41]);
    translate([25, -1, 22]) cube(size = [26, 83, 23]);
    translate([2, 2, 2]) cube(size = [46, 76, 40]);
    
    // holes for jacks
//    translate([2, 2, 0]) {
//        translate([47,17,12]) rotate([0,90,0]) cylinder(h=5, r=5.7, center = true, $fn=100);
//        translate([47,39,12]) rotate([0,90,0]) cylinder(h=5, r=5.7, center = true, $fn=100);
//        
//        translate([-1,14,30]) rotate([0,90,0]) cylinder(h=5, r=5.7, center = true, $fn=100);
//        translate([-1,42,30]) rotate([0,90,0]) cylinder(h=5, r=5.7, center = true, $fn=100);
//    }
    
    // alternative, midi socket holes
    translate([2, 2, 0]) {
        translate([47,19,12]) rotate([0,90,0]) cylinder(h=5, r=7.55, center = true, $fn=100);
        translate([47,8,12]) rotate([0,90,0]) cylinder(h=5, r=1.55, center = true, $fn=100);
        translate([47,30,12]) rotate([0,90,0]) cylinder(h=5, r=1.55, center = true, $fn=100);

        translate([47,57,12]) rotate([0,90,0]) cylinder(h=5, r=7.55, center = true, $fn=100);
        translate([47,46,12]) rotate([0,90,0]) cylinder(h=5, r=1.55, center = true, $fn=100);
        translate([47,68,12]) rotate([0,90,0]) cylinder(h=5, r=1.55, center = true, $fn=100);
        
        translate([-1,19,30]) rotate([0,90,0]) cylinder(h=5, r=7.55, center = true, $fn=100);
        translate([-1,8,30]) rotate([0,90,0]) cylinder(h=5, r=1.55, center = true, $fn=100);
        translate([-1,30,30]) rotate([0,90,0]) cylinder(h=5, r=1.55, center = true, $fn=100);
        
        translate([-1,57,30]) rotate([0,90,0]) cylinder(h=5, r=7.55, center = true, $fn=100);
        translate([-1,46,30]) rotate([0,90,0]) cylinder(h=5, r=1.55, center = true, $fn=100);
        translate([-1,68,30]) rotate([0,90,0]) cylinder(h=5, r=1.55, center = true, $fn=100);
    }
}