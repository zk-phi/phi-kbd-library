$fn = 100;

module rcube (size, r = 0, center = false) {
    linear_extrude(size[2]) {
        offset(r = r)
          offset(r = - r)
            square([size[0], size[1]], center = center);
    }
}

difference () {
  rcube([9, 3.6, 3.5], r = 0.2, center = true);
  translate([0, 0, 3.5 - 0.5]) rcube([3.4, 1.7, 0.5], center = true);
}

translate([- 1.5 / 2, 0, 3.5 - 0.5]) rcube([1.5, 1.5, 2 + 0.5], r = 0.2, center = true);

for (i = [-1, 0, 1]) {
    translate([i * 2.5, 3.6 / 2 - 0.3 / 2, -2.5]) rcube([0.6, 0.3, 2.5], center = true);
    translate([i * 2.5, - 3.6 / 2 + 0.3 / 2, -2.5]) rcube([0.6, 0.3, 2.5], center = true);
}