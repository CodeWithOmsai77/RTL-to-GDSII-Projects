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

 wire net4;
 wire net5;
 wire net1;
 wire net2;
 wire _0_;
 wire _1_;
 wire _2_;
 wire _3_;
 wire net3;

 DFFR_X1 \Q$_DFF_PP0_  (.D(net5),
    .RN(_0_),
    .CK(clk),
    .Q(net4),
    .QN(_3_));
 INV_X1 _4_ (.A(net3),
    .ZN(_0_));
 INV_X1 _5_ (.A(net2),
    .ZN(_1_));
 INV_X1 _6_ (.A(net4),
    .ZN(_2_));
 OAI21_X2 _7_ (.A(_1_),
    .B1(_2_),
    .B2(net1),
    .ZN(net5));
 BUF_X1 input1 (.A(R),
    .Z(net1));
 BUF_X1 input2 (.A(S),
    .Z(net2));
 BUF_X1 input3 (.A(rst),
    .Z(net3));
 BUF_X1 output4 (.A(net4),
    .Z(Q));
 BUF_X1 output5 (.A(net5),
    .Z(Qn));
endmodule
