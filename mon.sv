//monitor component

Class our_monitor extends uvm_ monitor; // it is needed to declare port sepratly

	`uvm_component_utils(our_ monitor);
	our_packet pkt;
	uvm_analysis_port  #(our_sequence_item) mon_port;
	function new(string name = “our_ monitor” , uvm_component parent = null);
		super.new(name, parent);
	endfunction

	//main logic
	
// build phase
Function void build_phase(uvm_phase phase);
	//build other components
	pkt = our_packet::type_id::create(“our_packet”);
	mon_port = new(“monitor port”, this);
Endfunction

//connect phase
Function void connect_phase(uvm_phase phase);
	//necessary connection
Endfunction

//run phase – it contain time consuming statement
Task run_phase(uvm_phase phase)
	forever begin // get data from interface and send it to interface
		always @(posedge intf.clk);
		pkt.input_1 <= intf.input_1;
		pkt.input_2 <= intf.input_2;
	end
Endtask 
Endclass: our_agent
