
`define REGISTER_SIZE  32
`define MAX_REGISTER  32
`define ADDR_SIZE  5

module RF(
    input wire [`ADDR_SIZE-1:0] Addr_1, Addr_2,
    output wire [`REGISTER_SIZE-1:0] Src_1, Src_2
);
	reg [`REGISTER_SIZE-1:0] R[0:`MAX_REGISTER-1];

    assign Src_1 = R[Addr_1];
    assign Src_2 = R[Addr_2];


endmodule
