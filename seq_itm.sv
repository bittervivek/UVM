//sequence_item class or packet class or data class
//contains information of variable that driver need to execute pin level transaction
Class our_packet extends uvm_sequence_item
	`uvm_object_utils(our_packet)
	//request
	rand bit [7:0] input_1;
	rand bit [7:0] input_2;
	//response
	bit [7:0] output_3;

	function new( string name  = “our-packet”);
		super.new(name);
	endfunction
endclass
