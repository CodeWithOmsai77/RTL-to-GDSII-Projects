module SR_FF (
    input logic clk, rst, S, R,
    output logic Q, Qn
    );
    always_ff @ (posedge clk or posedge rst) begin
        if (rst) begin
            Q <= 1'b0;
        end
            
        else begin
            Q <= Qn;
        end
    end
    
    always_comb begin
            
        if ( S == 1'b0 && R == 1'b0 ) begin 
            Qn = Q; // Hold
        end

        else if ( S == 1'b0 && R == 1'b1 ) begin
            Qn = 1'b0; // reset
        end
        
        else if ( S == 1'b1 && R == 1'b0 ) begin
            Qn = 1'b1; // set
        end
        
        else begin
            Qn = 1'bX; // Invalid
        end
    end         
endmodule
