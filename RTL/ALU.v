`define REGISTER_SIZE  32
`define MAX_REGISTER  32
`define ADDR_SIZE  5

module ALU(
    input wire [`REGISTER_SIZE-1:0] Src_1, Src_2,
    input wire [4:0] shamt,
    input wire [5:0] funct,
    output reg [`REGISTER_SIZE-1:0] ALUResult,
    output reg Carry,
    output wire Zero
);

    localparam ADDU = 6'b001001;
    localparam SUBU = 6'b001010;
    localparam NOR =  6'b010011;
    localparam SLL =  6'b100001;

    assign Zero = (ALUResult == 0);

    always @(*) begin
        ALUResult = 32'b0;
        Carry  = 1'b0;
        case (funct)
            ADDU: {Carry, ALUResult} = Src_1 + Src_2; // ADDU
            SUBU: ALUResult = Src_1 - Src_2; // SUBU
            NOR: ALUResult = ~(Src_1 | Src_2); // NOR
            SLL: ALUResult = Src_1 << shamt; // SLL
        endcase
    end

endmodule