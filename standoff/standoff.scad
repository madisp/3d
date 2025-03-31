difference() {
  hull() {
    cylinder(6, 11, 11, $fn=100);
    translate([72.8, 0, 0]) cylinder(6, 11, 11, $fn=100);
  }
  
  union() {
    translate([0, 0, 4.01]) cylinder(3, 2, 5, $fn=100);
    translate([0, 0, -1]) cylinder(6, 2, 2, $fn=100);
  }
  
  translate([72.8, 0, 0]) union() {
    translate([0, 0, 4.01]) cylinder(3, 2, 5, $fn=100);
    translate([0, 0, -1]) cylinder(6, 2, 2, $fn=100);
  }
}
