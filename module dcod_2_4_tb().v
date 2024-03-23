module dcod_2_4_tb();
  reg x,y;
  wire [3:0] out;
  integer i;
  decod_2_4 dut(x,y,out);
  initial
    begin
      $dumfile("dump.vcd");
      $dumpvars(1);
    end
  initial 
    begin
      {x,y} = 2'b00;
    end
  initial
    begin
      for(i=0; i<4; i=i+1)
        begin
          {x,y} = i;
          #10;
        end
    end
  initial
    $monitor("A = %b,  B=%b; out = %b", x,y,out);
  initial #100$finish;
endmodule