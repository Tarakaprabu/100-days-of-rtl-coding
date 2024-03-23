//write a verilog code for full adder using halfadders
module h_add(a,b,sum,carry);
  input a,b;
  output sum,carry;
  assign sum =a^b;
  assign carry = a&b;
endmodule


module f_add(a,b,cin,sum,c);
  input a,b,cin;
  output sum, c;
  wire w1, w2, w3;
  h_add h1(a,b,w1,w2);
  h_add h2(w1,cin,sum,w3);
  or or1(c, w2,w3);
endmodule