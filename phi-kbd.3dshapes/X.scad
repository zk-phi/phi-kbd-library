$fn = 10;

module kadomaru(r) {
//  offset(r = -r) offset(r = r) children();
    children();
}

// scissors
color([1, 1, 1, 0.3]) {
  scissor_thickness = 0.6;
  scissor_pos = 3;
  scissor_x = 13 - scissor_pos;
  scissor_y = 2 + 0.5 + scissor_thickness;
  scissor_length = sqrt(pow(scissor_x, 2) + pow(scissor_y, 2));
  scissor_angle = atan(scissor_y / scissor_x);
  difference () {
    union () {
      translate([- scissor_pos / 2, 0, scissor_y / 2 + 1.5])
        rotate([0, scissor_angle, 0])
          linear_extrude(scissor_thickness)
            difference() {
              square([scissor_length, 12], center = true);
              translate([1.5, 0]) square([10, 10], center = true);
            }
      translate([scissor_pos / 2, 0, scissor_y / 2 + 1.5])
        rotate([0, -scissor_angle, 0])
          linear_extrude(scissor_thickness)
            difference() {
              square([scissor_length, 12], center = true);
              translate([-3.5, 0]) square([10, 10], center = true);
            }
    }
    translate([0, 0, 4.5]) linear_extrude(2) square([14, 14], center = true);
  }
}

// housing (1)
difference () {
  union () {
    color([0.3, 0.3, 0.3]) linear_extrude(2) kadomaru(2) square([14, 14], center = true);
    color([0.3, 0.3, 0.3]) translate([0, 0, 2]) linear_extrude(0.5) kadomaru(2) square([14, 15], center = true);
  }
  color([0.3, 0.3, 0.3]) translate([0, 0, 1]) linear_extrude(1.501) square([12, 12], center = true);
  color([0.3, 0.3, 0.3]) translate([0, 0, 2]) linear_extrude(0.501) square([14.01, 10.2], center = true);
  color([0.3, 0.3, 0.3]) translate([2, 0, 1]) linear_extrude(1.501) square([12.01, 10.2], center = true);
  // led hole
  color([0.3, 0.3, 0.3]) translate([4.7, 0, -0.01]) linear_extrude(1.502) square([3.6, 5], center = true);
}

// housing (2)
difference() {
  union() {
    translate([-0.9, 0, 1]) color([0.3, 0.3, 0.3]) linear_extrude(1) square([7.5, 10], center = true);
    translate([-0.9, 0, 2]) color([0.8, 0.8, 0.8]) linear_extrude(0.5) square([7.5, 10], center = true);
  }
  translate([-20, - 2 / 2, 0]) cube([20, 2, 20]);
}

// stem
difference() {
  // 0.9 ... same as the center pin position
  color([0.5, 0.5, 1]) translate([0.9, 0, 2]) linear_extrude(2.5) square([2.5, 3.5], center = true);
  color([0.5, 0.5, 1]) translate([0.9, 0, 4.5 - 0.2]) linear_extrude(0.201) square([3, 2.5], center = true);
}

// pins
// 0.9 = 4 / 2 - 1.1
translate([0.9, 0, -0.8]) color([0.3, 0.3, 0.3]) linear_extrude(0.8) kadomaru(2) square([4, 5], center = true);
translate([-2.9, -3.4, -1.3]) color([0.5, 0.5, 0.5]) linear_extrude(1.3) square([0.9, 0.2], center = true);
translate([2, -3.4, -1.3]) color([0.5, 0.5, 0.5]) linear_extrude(1.3) square([0.2, 0.9], center = true);
translate([5.5, 5.5, -0.8]) color([0.3, 0.3, 0.3]) linear_extrude(0.8) circle(d = 1.2, center = true);
translate([-5.5, -5.5, -0.8]) color([0.3, 0.3, 0.3]) linear_extrude(0.8) circle(d = 1.2, center = true);