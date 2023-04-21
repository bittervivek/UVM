`include "interfc.sv"
`include "agnt.sv"
`include "drv.sv"
`include "env.sv"
`include "mon.sv"
`include "scbd.sv"
`include "seq.sv"
`include "seq_item.sv"
`include "test.sv"
`include "trans.sv"

module top_tb();
	dff_if vif();
	
	dff_rtl DUT (
				.clk(vif.clk),
				.rst(vif.rst),
				.din(vif.din),
				.dout(vif.dout)
				);
	
	initial
	begin: B1
	
	 vif.clk = '0;
	 uvm_config_db #(virtual dff_if)::set(null,"","virtual_intf",vif);
	 
	 run_test("test_one");
	end:  B1
	
	always #10 vif.clk = ~vif.clk;
	
endmodule: top_tb