difference() {
    translate([-8, 0]) cube([103, 90, 3]);
    
    translate([-4, 15]) cylinder(h = 10, r = 2, center = true, $fn=100);
    translate([91, 15]) cylinder(h = 10, r = 2, center = true, $fn=100);
    
    translate([-9, -1, -1]) cube([9, 12, 6]);
    translate([-9, 19, -1]) cube([9, 80, 6]);

    translate([87, -1, -1]) cube([9, 12, 6]);
    translate([87, 19, -1]) cube([9, 80, 6]);
   
    translate([-1, 80, -1]) {
        cube([6, 12, 6]);
        translate([16, 0]) cube([10, 12, 6]);
        translate([36, 0]) cube([10, 12, 6]);
        translate([56, 0]) cube([10, 12, 6]);
        translate([76, 0]) cube([20, 12, 6]);
        
        translate([0, 0, 2.5]) cube([80, 12, 3]);
    }
    
    translate([78, 8]) {
        for (x = [0 : 5]) {
            for (y = [0 : 8]) {
                translate([0.5 + -14 * x, 8 * y]) cylinder(h = 10, r = 4, center = true, $fn=6);
            }
        }
      
      
        for (x = [0 : 4]) {
            for (y = [0 : 7]) {
                translate([-6.5 + x * -14, 4 + y*8]) cylinder(h = 10, r = 4, center = true, $fn=6);
            }
        }
    }
}
