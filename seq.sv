//sequence class
//randomize the packet class and send it to driver using sequencer

Class our_sequence extends uvm_sequence
	`uvm_object_utils(our_sequence)
	
	function new (string name = “our_sequence”);
		super.new(name);

	endfunction
	//like component classes have run phase 
	//object classes have body task
	task body();
	endtask
Endclass

//sequence class will take packet class and randomnise to create interesting scenerio
