// verilog code for 4:1 multiplexer using 2:1 multiplexer
module mux2_1(in0,in1,sel,y);
  input in0,in1,sel;
  output y;
  assign y =(sel)?in1:in0;
endmodule


module mux_4_1(a,b,c,d,s1,s2,y);
  input a,b,c,d;
  input s1,s2;
  wire w1,w2;
  output y;
  mux2_1 mux1(a,b,s1,w1);
  mux2_1 mux2(c,d,s1,w2);
  mux2_1 mux3(w1,w2,s2,y);
endmodule