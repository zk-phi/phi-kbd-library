// TVBP06-BN043CW-B

$fn = 100;

module rcube (size, r = 0) {
    linear_extrude(size[2]) {
        offset(r = r)
          offset(r = - r)
            square([size[0], size[1]]);
    }
}

module pin () {
  translate([0.3, 1, -3.5])
    rotate([90, 270, 0])
      linear_extrude(1.0) polygon([
        /*
          <-1.9-><-1.6-><-1->
                /\            ^0.45
          _____/  \__________ v
          <0.6>    <0.3>+----\---------+
                        |              |

          thickness = 0.3
    */
    [0, 0], [0.6, 0], [1.9, 0.45], [1.9 + (1.6 - 0.3), 0], [4.5, 0],
    [4.5, 0.3], [1.9 + (1.6 - 0.3), 0.3], [1.9, 0.45 + 0.3], [0.6, 0.3], [0, 0.3]
]);
}


color([0, 0, 0]) rcube([6.0, 3.5, 3], r = 0.3);
translate([-0.05, -0.05, 3]) rcube([6.01, 3.51, 0.3], r = 0.3);
color([1, 1, 1]) translate([(6.0 - 2.95) / 2, (3.5 - 1.45) / 2, 3.3]) rcube([2.95, 1.45, 1], r = 0.2);
for (x = [0.3, 6.0 - 0.3 - 0.8]) {
  color([0, 0, 0]) translate([x, (3.5 - 2.3) / 2, 3.3]) rcube([0.8, 2.3, 0.2], r = 0.2);
}
translate([- 0.3, (3.5 - 1) / 2, 0]) pin();
translate([6.0 + 0.3, (3.5 - 1) / 2, 0]) mirror([1, 0, 0]) pin();
