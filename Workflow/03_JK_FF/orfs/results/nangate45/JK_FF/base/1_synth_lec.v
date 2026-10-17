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

 wire _0_;
 wire _1_;
 wire _2_;
 wire _3_;
 wire _4_;

 DFFR_X1 \Q$_DFF_PP0_  (.D(Qn),
    .RN(_1_),
    .CK(clk),
    .Q(Q),
    .QN(_0_));
 INV_X1 _5_ (.A(rst),
    .ZN(_1_));
 INV_X2 _6_ (.A(K),
    .ZN(_4_));
 AOI21_X1 _7_ (.A(J),
    .B1(_4_),
    .B2(Q),
    .ZN(_2_));
 INV_X1 _8_ (.A(_0_),
    .ZN(_3_));
 AOI21_X1 _9_ (.A(_2_),
    .B1(_3_),
    .B2(K),
    .ZN(Qn));
endmodule
