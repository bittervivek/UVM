//test component – dynamic // contains env along with packet and sequences
//in the uvm test side, to give the driver- the ability to drive the DUT signals, as well as the monitor to sample the DUT signals, we will get the handle of this interface object (which connected to DUT in top module) from the uvm_db_config.

Class our_test extends uvm_test;
`uvm_component_utils(our_test);
//constructor 
Fuction new ( string name = “our_test”, uvm_component parent = null);
	super.new(name, parent);
Endfunction
//instantiate env classes, sequence and interface
Our_interface intf; // is it needed?
our_env env;
Our_sequence seq; // declare
Uvm_config_db #(virtual our_interface)::get(null, “*”, “intf”, intf);
//constructor for env
Function new (string name = “”, uvm_component parent);
	super.new(name,parent);
endfunction
//main logic // build phase
Function void build_phase(uvm_phase phase);
	//build other components //build env class
	env = our_env::type_id::create(“env”,, this); // create is a factory method – static method to create object
Endfunction

//connect phase
Function void connect_phase(uvm_phase phase);
	//necessary connection
Endfunction

//run phase – it contain time consuming statement
Task run_phase(uvm_phase phase)
	//run test- uvm_top.run_test();
endtask
Endclass

