//agent component  //  driver has port already only need to connect
Class our_agent extends uvm_agents;
	`uvm_component_utils(our_agent);
	//instantiate class
	our_sequencer seqr;
	our driver drv;
	our_monitor mon;

	function new(string name = “our_agent” , uvm_component parent = null);
		super.new(name, parent);
	endfunction

	//main logic // build phase
Function void build_phase(uvm_phase phase);
	//build other components /build sequencer, driver and monitor classes
	Seqr = our_sequencer::type_id::create(“seqr”,this);
	drv = our_driver::type_id::create(“drv”,this);
	mon = our_monitor::type_id::create(“mon”,this);
Endfunction
//these are the component that we are writing code for, need to see how to write to code for object class, which are sequence class and packet class (see first slide)
//connect phase
Function void connect_phase(uvm_phase phase);
	//necessary connection
	drv.seq_item_port.connect(seqr.seq_item_export); //seq_item_port/export built in base class
Endfunction

//run phase – it contain time consuming statement
Task run_phase(uvm_phase phase)
endtask
Endclass: our_agent
