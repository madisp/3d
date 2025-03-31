// 3mm x 35mm

union() {
/*
    translate([-10,-10,0]) {
        polyhedron(
            points=[
                [-20,-10,  0],  //0
                [ 40,-10,  0],  //1
                [ 40, 59,  0],  //2
                [-20, 59,  0],  //3
                [  0,  0, 28],  //4
                [ 20,  0, 28],  //5
                [ 20, 49, 28],  //6
                [  0, 49, 28] //7
            ],
            faces=[
                [0,1,2,3],  // bottom
                [4,5,1,0],  // front
                [7,6,5,4],  // top
                [5,6,2,1],  // right
                [6,7,3,2],  // back
                [7,4,0,3]
            ]
        );
    }
*/
    hull() {
        translate([0, 3.5, 0]) cylinder(h=28, r1=15, r2=6, $fn=100);
        translate([0, 26, 0]) cylinder(h=28, r1=15, r2=6, $fn=100);
    }

    hull() {
        translate([0, 3.5, 1]) cylinder(h=28, r=3.5, $fn=100);
        translate([0, 26, 1]) cylinder(h=28, r=3.5, $fn=100);
    }
}
//tr
//  cylinder(
//}