r = 0.2;
$fn = 15;
color([1, 1, 1]) {
  linear_extrude(0.95) offset(r = r) offset(r = -r) square(3.3, center = true);
  linear_extrude(0.10) offset(r = r) offset(r = -r) square(3.5, center = true);
}
