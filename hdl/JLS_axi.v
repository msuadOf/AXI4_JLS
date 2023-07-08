module JLS_AXI #(
    parameter    INPUT_WIDTH  = 12,
    parameter    OUTPUT_WIDTH = 12
) (
    input      clk,
    input      RST,
    input  [INPUT_WIDTH - 1 : 0]    data_i,
    output [OUTPUT_WIDTH - 1 : 0]   data_o
);
    
endmodule  //JLS_AXI
