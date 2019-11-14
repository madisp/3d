difference() {
    cube(size = [50, 60, 41]);
    translate([25, -1, 22]) cube(size = [26, 63, 23]);
    translate([2, 2, 2]) cube(size = [46, 56, 40]);
    
    translate([2, 2, 0]) {
        translate([47,17,12]) rotate([0,90,0]) cylinder(h=5, r=5.7, center = true, $fn=100);
        translate([47,39,12]) rotate([0,90,0]) cylinder(h=5, r=5.7, center = true, $fn=100);
        
        translate([-1,14,30]) rotate([0,90,0]) cylinder(h=5, r=5.7, center = true, $fn=100);
        translate([-1,42,30]) rotate([0,90,0]) cylinder(h=5, r=5.7, center = true, $fn=100);
    }
}