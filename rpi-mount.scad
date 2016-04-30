difference() {
  union() {
    //center rect
    translate([3,3,0]) cube([56-3*2,85-3*2,3]);

    //corner roundnesses
    translate([3,3,0]) cylinder(r=3,h=3,$fn=30);
    translate([56-3,3,0]) cylinder(r=3,h=3,$fn=30);
    translate([3,85-3,0]) cylinder(r=3,h=3,$fn=30);
    translate([56-3,85-3,0]) cylinder(r=3,h=3,$fn=30);

    //sides
    translate([0,3,0]) cube([3,85-3*2,3]);
    translate([56-3,3,0]) cube([3,85-3*2,3]);
    translate([3,0,0]) cube([56-3*2,3,3]);
    translate([3,85-3,0]) cube([56-3*2,3,3]);

    //posts/supports
    translate([3.5,3.5,3])
      union() {
        for (x = [0,49]) {
          for (y= [0,58,85-3.5*2]) {
            translate([x,y,0]) cylinder(r=3.1, h=5, $fn=30);
          }
        }
      }
  }

  union() {
    for (yoffsetdelta = [0, 23]) {
      translate([56/2-2,yoffsetdelta+7,-0.05]) union() {
        cube([4,8,3.1]);
        translate([2,8+3.4,0]) cylinder(r=4,h=3.1, $fn=30);
      }
    }
  }
}
