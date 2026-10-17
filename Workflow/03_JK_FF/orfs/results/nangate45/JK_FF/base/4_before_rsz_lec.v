module JK_FF (J,
    K,
    Q,
    Qn,
    clk,
    rst);
 input J;
 input K;
 output Q;
 output Qn;
 input clk;
 input rst;

 wire net1;
 wire net2;
 wire net4;
 wire net5;
 wire _0_;
 wire _1_;
 wire _2_;
 wire _3_;
 wire _4_;
 wire net3;

 DFFR_X1 \Q$_DFF_PP0_  (.D(net5),
    .RN(_1_),
    .CK(clk),
    .Q(net4),
    .QN(_0_));
 INV_X1 _5_ (.A(net3),
    .ZN(_1_));
 INV_X2 _6_ (.A(net2),
    .ZN(_4_));
 AOI21_X1 _7_ (.A(net1),
    .B1(_4_),
    .B2(net4),
    .ZN(_2_));
 INV_X1 _8_ (.A(_0_),
    .ZN(_3_));
 AOI21_X1 _9_ (.A(_2_),
    .B1(_3_),
    .B2(net2),
    .ZN(net5));
 BUF_X1 input1 (.A(J),
    .Z(net1));
 BUF_X1 input2 (.A(K),
    .Z(net2));
 BUF_X1 input3 (.A(rst),
    .Z(net3));
 BUF_X1 output4 (.A(net4),
    .Z(Q));
 BUF_X1 output5 (.A(net5),
    .Z(Qn));
endmodule
