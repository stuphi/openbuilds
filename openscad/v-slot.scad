$fn=16;


module v_slot(sec, len){
  difference(){
    linear_extrude(height = len, center = true, convexity = 10)
      import (file = "../DXF/v-slot.dxf", layer = str(sec, "-outside"));
    linear_extrude(height = 1.1*len, center = true, convexity = 10)
      import (file = "../DXF/v-slot.dxf", layer = str(sec, "-inside"));
  }
}


v_slot(sec=2020, len=250);

translate([0,40,0])
v_slot(sec=2040, len=250);

translate([0,80,0])
v_slot(sec=2060, len=250);

translate([0,120,0])
v_slot(sec=2080, len=250);

translate([0,160,0])
v_slot(sec=4040, len=250);

translate([0,210,0])
v_slot(sec="c-beam", len=250);
