$fn = 100;

module kadomaru(r) {
  offset(r = r) offset(r = -r) children();
}

// ----

color([0, 0, 1]) translate([0, 0, 5.3]) {
    difference() {
        cylinder(h = 3.3, d = 6.5);
        translate([0, 0, -0.01]) cylinder(h = 3.32, d = 6);
    }
    linear_extrude(3.3) {
        square([4, 1.3], center = true);
        square([1.3, 4], center = true);
    }
}

translate([0, 0, 3.0]) color([1, 1, 1, 0.3]) {
    height = 3.1 - 0.8 - 1;
    translate([0, 0, 1]) for (slice = [0 : 99]) {
        fraction = slice / 100;
        translate([0, 0, height * fraction])
          linear_extrude(height / 100.0)
            kadomaru(1) square(fraction * 13 + (1 - fraction) * 13.95, center = true);
    }
    linear_extrude(1) kadomaru(1) square(13.95, center = true);
}

color([0.3, 0.3, 0.3]) {
    translate([0, 0, 2.2]) linear_extrude(0.8) kadomaru(1) square(15, center = true);
    linear_extrude(2.2) kadomaru(1) square(13.95, center = true);
}

color([0.3, 0.3, 0.3]) translate([0, 0, -3.3]) cylinder(h = 3.3, d = 4.8);

color([0.7, 0.7, 0.7]) translate([0, 0, -3]) linear_extrude(3) {
    translate([-5, -5.15]) square([0.8, 0.2], center = true);
    translate([0, 5.9]) square([0.8, 0.2], center = true);
    translate([5, 3.8]) square([0.8, 0.2], center = true);
}

