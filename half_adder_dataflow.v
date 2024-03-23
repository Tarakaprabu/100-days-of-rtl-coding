// write a verilog code for half adder using data flow abstraction
module h_add(a,b,sum,carry);
  input a,b;
  output sum,carry;
  assign sum =a^b;
  assign carry = a&b;
endmodule