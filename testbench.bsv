// testbench

import nco::*;
	import Initial_Settings ::*;
	import Vector ::*;
	import Real ::*;
	import FixedPoint ::*;
module testbench(Empty);

rule show;
FixedPoint#(2,32) temp=15;
Bit#(64) samples = 10;
let x = mkNco(temp,samples,temp,temp,temp);
	$display("%2.3f",x.lastPhase);
	$finish(0);
endrule
endmodule
