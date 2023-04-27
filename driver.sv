//driver component
Parameterize same as sequencer
Class our_ driver extends uvm_ driver #(our_packet); // do not need to declare port seperatly

	`uvm_component_utils(our_ driver);

	our_interface intf; //instantiate interface
	out_packet pkt; //instantiate packet
	function new(string name = “our_ driver” , uvm_component parent = null);
	super.new(name, parent);
	endfunction
	//main logic  //get interface
Uvm_config_db #(virtual our_interface)::get(null, “*”, “intf”, intf);
// build phase
Function void build_phase(uvm_phase phase);
	//build other components //create object using type_id method
	pkt = our_packet::type_id_create(“our_packet”);
Endfunction
//connect phase
Function void connect_phase(uvm_phase phase);
	//necessary connection
	drv.seq_item_port.connect(seqr.seq_item_export);
Endfunction
//run phase – it contain time consuming statement
Task run_phase(uvm_phase phase) //forever begin loop
	forever begin
		seq_item_port.get_next_item(pkt); // get next packet from driver port and send it to the onterface
		always @(posedge intf.clk) begin
		intf.input_1 <= pkt.input_1;
		intf.input_2 <= pkt.input_2;
		seq_item_port.item_done();
		
	end
	endtask
Endclass: our_agent
