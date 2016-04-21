$fn=16;

module c_beam_half(len){
  difference(){
    linear_extrude(height = len, center = true, convexity = 10)
      import (file = "../DXF/c-beam.dxf", layer = "0");
    linear_extrude(height = 1.1*len, center = true, convexity = 10)
      import (file = "../DXF/c-beam.dxf", layer = "1");
  }
}

module c_beam(len){
  union(){
    c_beam_half(len);
    mirror([1,0,0])
      c_beam_half(len);
  }
}

translate([450,0,40])
rotate([90,90,0])
c_beam(len=1000);

translate([-450,0,40])
rotate([90,-90,0])
c_beam(len=1000);