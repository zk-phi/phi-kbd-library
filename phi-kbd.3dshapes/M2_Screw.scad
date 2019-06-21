$fn = 50;

color([.7, .7, .7]) union () {
  difference () {
    cylinder(d = 3.5, h = 1.3);
    translate([- 3.5 / 2, - 1 / 2, 1.3 - 0.9]) cube([3.5, 0.8, 0.9]);
  }
  
  translate([0, 0, -4]) cylinder(d = 2, h = 4);
}