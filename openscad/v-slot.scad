$fn=16;


module v_slot(sec, len){
  difference(){
    linear_extrude(height = len, center = true, convexity = 10)
      import (file = "../DXF/v-slot.dxf", layer = str(sec, "-outside"));
    linear_extrude(height = 1.1*len, center = true, convexity = 10)
      import (file = "../DXF/v-slot.dxf", layer = str(sec, "-inside"));
  }
}

translate([200,0,0])
v_slot(sec=2080, len=250);

translate([100,0,0])
v_slot(sec=2040, len=250);

translate([50,0,0])
v_slot(sec=4040, len=250);
v_slot(sec=2020, len=250);

translate([450,0,40])
rotate([90,90,0])
v_slot(sec="c-beam", len=1000);

translate([-450,0,40])
rotate([90,-90,0])
v_slot(sec="c-beam", len=1000);