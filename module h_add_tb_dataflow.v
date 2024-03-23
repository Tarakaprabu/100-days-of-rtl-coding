module h_add_tb();
  reg x,y;
  wire s,c;
  integer i;
  h_add dut(x,y,s,c);
  initial begin
    $dumpfile("dump.vcd"); 
    $dumpvars(1);
  end
  initial
    begin
      x = 1'b0;
      y = 1'b0;
    end
  initial 
    begin
      for(i=0; i<4; i =i+1)
        begin
          x = i;
          y = i;
          #10;
        end
      
    end
  initial
    begin
      $monitor("input A = %b, B = %b, sum = %b, carry = %b", x,y,s,c);
      #100$finish;
    end
endmodule