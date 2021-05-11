// main dimensions
cell_count = 17;
cell_width = 100;
plate_height = 4;
pitch = 9.1;

// finetuning
hole_size = 3.2;
hole_separation = 65;
notch_width = 2.2;
notch_height = 15;

difference() {
    cube([cell_width, pitch*cell_count, plate_height]);
    
    for (i = [0:(cell_count-1)]) {
        translate([cell_width/2, (i+0.5) * pitch]) {
            // holes
            translate([hole_separation/2, 0, 0]) {
                translate([0,0,-1]) cylinder(plate_height+2, d=hole_size, $fn=100);
                translate([0,0,plate_height-hole_size+0.1]) {
                    cylinder(h=hole_size, d1=0, d2=2*hole_size, $fn=100);
                }
            }
            translate([-hole_separation/2, 0, 0]) {
                translate([0,0,-1]) cylinder(plate_height+2, d=hole_size, $fn=100);
                translate([0,0,plate_height-hole_size+0.1]) {
                    cylinder(h=hole_size, d1=0, d2=2*hole_size, $fn=100);
                }
            }
            
            // notch
            hull() {
                translate([-notch_height/2, 0,-1]) {
                    cylinder(plate_height+2, d=notch_width, $fn=100);
                }
                translate([notch_height/2, 0,-1]) {
                    cylinder(plate_height+2, d=notch_width, $fn=100);
                }
            }
        }
    }
}