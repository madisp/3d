screw_pts = [
  [10.65, 6.95],
  [8.39, 71.82],
  [49.18, 158.93],
  [116.49, 121.96],
  [198.50, 179.68],
  [187.38, 74.44],
  [194.51, 6.9],
  [142.60, 6.88]
];

translate([218,0,2]) rotate([0,180,0]) difference() {
    scale([0.24,0.24])
      translate([-166.5,-83])
        linear_extrude(height = 2)
          import("/Volumes/src/3d/pickguard/Untitled.svg", $fn=100);
  for (hole = screw_pts) translate([hole[0], hole[1], 1]) cylinder(2, 1.5, 3.5, $fn=100);
}