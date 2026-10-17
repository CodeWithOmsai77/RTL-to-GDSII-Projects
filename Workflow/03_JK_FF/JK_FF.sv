module JK_FF (
    input logic clk, rst, J, K,
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
            
        if ( J == 1'b0 && K == 1'b0 ) begin 
            Qn = Q; // Hold
        end

        else if ( J == 1'b0 && K == 1'b1 ) begin
            Qn = 1'b0; // reset
        end
        
        else if ( J == 1'b1 && K == 1'b0 ) begin
            Qn = 1'b1; // set
        end
        
        else begin
            Qn = ~Q; // Toggle
        end
    end         
endmodule
