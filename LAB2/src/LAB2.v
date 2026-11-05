module lab02 (
    input  wire i_sw1,   // Switch 1 input
    input  wire i_sw2,   // Switch 2 input
 
    output wire o_led1   // LED D1 output
);
 
    //=========================================================================
    // Combinational Logic: AND gate
    // LED chi sang khi i_sw1 = 1 VA i_sw2 = 1
    //=========================================================================
 
    assign o_led1 = i_sw1 & i_sw2;
 
endmodule