module f_add_tb();
  reg x,y,z;
  wire sum,carry;
  integer i;
  f_add dut(x,y,z,sum,carry);
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars(1);
    end
  initial
    begin
      {x,y,z} = 3'b000;
    end
  initial
    begin
      for(i=0; i<8; i=i+1)
        begin
          {x,y,z} = i;
          #10;
        end
    end
  initial
      $monitor("input A = %b, B = %b, CIN = %b, SUM = %b, CARRY = %b",x,y,z,sum,carry);
      initial
        #400$finish;
endmodule
        
        