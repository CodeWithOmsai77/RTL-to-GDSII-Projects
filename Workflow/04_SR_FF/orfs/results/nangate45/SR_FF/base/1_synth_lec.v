module SR_FF (Q,
    Qn,
    R,
    S,
    clk,
    rst);
 output Q;
 output Qn;
 input R;
 input S;
 input clk;
 input rst;

 wire _0_;
 wire _1_;
 wire _2_;
 wire _3_;

 DFFR_X1 \Q$_DFF_PP0_  (.D(Qn),
    .RN(_0_),
    .CK(clk),
    .Q(Q),
    .QN(_3_));
 INV_X1 _4_ (.A(rst),
    .ZN(_0_));
 INV_X1 _5_ (.A(S),
    .ZN(_1_));
 INV_X1 _6_ (.A(Q),
    .ZN(_2_));
 OAI21_X2 _7_ (.A(_1_),
    .B1(_2_),
    .B2(R),
    .ZN(Qn));
endmodule
