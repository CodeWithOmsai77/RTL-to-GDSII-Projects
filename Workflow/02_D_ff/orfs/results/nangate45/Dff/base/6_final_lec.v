module Dff (D,
    Q,
    clk,
    rst);
 input D;
 output Q;
 input clk;
 input rst;

 wire net1;
 wire net3;
 wire _0_;
 wire _1_;
 wire net2;

 DFFR_X1 \Q$_DFF_PP0_  (.D(net1),
    .RN(_0_),
    .CK(clk),
    .Q(net3),
    .QN(_1_));
 INV_X1 _2_ (.A(net2),
    .ZN(_0_));
 BUF_X1 input1 (.A(D),
    .Z(net1));
 BUF_X1 input2 (.A(rst),
    .Z(net2));
 BUF_X1 output3 (.A(net3),
    .Z(Q));
endmodule
