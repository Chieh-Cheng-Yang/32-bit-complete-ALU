`define REGISTER_SIZE  32
`define MAX_REGISTER  32
`define ADDR_SIZE  5




module CompALU (
    input [31:0] CompALU_instr,
    output wire [31:0] CompALU_data,
    output wire CompALU_zero,
    output wire CompALU_carry
);

    wire [`REGISTER_SIZE-1:0] Src_1, Src_2;


    RF Register_File(
        .Addr_1(CompALU_instr[25:21]),
        .Addr_2(CompALU_instr[20:16]),
        .Src_1(Src_1),
        .Src_2(Src_2)
    );

    ALU ALU_inst(
        .Src_1(Src_1),
        .Src_2(Src_2),
        .shamt(CompALU_instr[10:6]),
        .funct(CompALU_instr[5:0]),
        .ALUResult(CompALU_data),
        .Carry(CompALU_carry),
        .Zero(CompALU_zero)
    );



endmodule
