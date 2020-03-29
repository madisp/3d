difference() {
    cube([100,8.8*14,4]);
    
    for (i = [0:13]) {
        translate([50+65/2,i*8.8 + 4.4,-1]) {
            cylinder(10, d=3.2, $fn=100);
        }
        translate([50-65/2,i*8.8 + 4.4,-1]) {
            cylinder(10, d=3.2, $fn=100);
        }
        translate([50-65/2,i*8.8 + 4.4,1]) {
            cylinder(h=3.2, d1=0, d2=6.4, $fn=100);
        }
        translate([50+65/2,i*8.8 + 4.4,1]) {
            cylinder(h=3.2, d1=0, d2=6.4, $fn=100);
        }
        
        hull() {
            translate([50-15/2,i*8.8 + 4.4,-1]) {
                cylinder(10, d=2.2, $fn=100);
            }
            translate([50+15/2,i*8.8 + 4.4,-1]) {
                cylinder(10, d=2.2, $fn=100);
            }
        }
    }
}