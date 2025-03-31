difference() {
  cube([28, 80, 7]);
  
  translate([8, 11, -0.5]) {
    cylinder(h = 8, r = 3.25, $fn = 100);
  }
  
  
  translate([8, 11, 2.5]) {
    cylinder(h = 8, r = 6, $fn = 100);
  }
  
  translate([8, 44, -0.5]) {
    cylinder(h = 8, r = 3.25, $fn = 100);
  }
  
  translate([8, 66, -0.5]) {
    cylinder(h = 8, r = 3.25, $fn = 100);
  }
}