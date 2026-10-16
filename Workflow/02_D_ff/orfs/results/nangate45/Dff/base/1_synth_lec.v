module Dff (D,
    Q,
    clk,
    rst);
 input D;
 output Q;
 input clk;
 input rst;

 wire _0_;
 wire _1_;

 DFFR_X1 \Q$_DFF_PP0_  (.D(D),
    .RN(_0_),
    .CK(clk),
    .Q(Q),
    .QN(_1_));
 INV_X1 _2_ (.A(rst),
    .ZN(_0_));
endmodule
