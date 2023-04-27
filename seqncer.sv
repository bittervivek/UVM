//sequencer component
//parameterize for packets to generate the stimulus
Class our_sequencer extends uvm_sequencer #(our_packet);

	`uvm_component_utils(our_ sequencer);

	function new(string name = “our_ sequencer” , uvm_component parent = null);
		super.new(name, parent);
	endfunction
	//main logic // build phase
Function void build_phase(uvm_phase phase);
	//build other components
Endfunction
//connect phase
Function void connect_phase(uvm_phase phase);
	//necessary connection
Endfunction
//run phase – it contain time consuming statement
Task run_phase(uvm_phase phase)
endtask
Endclass: our_sequencer
