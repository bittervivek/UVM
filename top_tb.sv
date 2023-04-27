Top.sv – static component // contains design and test component as per last slide
// in the testbench top module, the DUT will be connect to the interface object

	`include “uvm_micros.svh”
	import uvm_pkg::*;
	module top();
	
	our_interface intf(); // intantiate our interface
	//instantiate design
	jkff dut(intf.input_1,
		intf.input_2,
		intf.output_3); 
	//clk generation and supplied to DUT
	initial begin
		intf.clk = 0;
		forever #5 intf.clk = ~intf.clk;
	end
	
	//use set method in top module to set the interface in db
	initial begin
	 uvm_config_db #(virtual our_interface)::set(null, “*”, “intf”, intf);
	end
	//test component – dynamic component
	initial begin
// run_test method is actually a task defined in the uvm_globals.svh which is imported by this statement import uvm_pkg::*.
	run_test(“our_test”);
	end

	//build phase
	//connect phase
	endmodule
