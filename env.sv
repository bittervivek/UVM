//environment

Class our_env extends uvm_env;

	`uvm_component_utils(our_env);
	//instantiate classed
	our_agent agnt;
	function new(string name = “our_env” , uvm_component parent = null);
	super.new(name, parent);
	endfunction
	
// build phase
Function void build_phase(uvm_phase phase);
	//build other components
	//build agent class
Agnt = our_agent::type_id::create(“our_agent”, this); // create agent
Endfunction

//connect phase
Function void connect_phase(uvm_phase phase);
	//necessary connection
Endfunction

//run phase – it contain time consuming statement
Task run_phase(uvm_phase phase)
	
endtask

Endclass: our_env
