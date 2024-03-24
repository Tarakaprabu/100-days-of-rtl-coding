module mux4_1_tb();
  reg a,b,c,d;
  reg s1,s2;
  wire out;
  integer i;
  mux_4_1 dut(a,b,c,d,s1,s2,out);
  initial
    begin
      $dumfile("dump.vcd");
      $dumpvars(1);
    end
  initial
    begin
      a=2'd0;
      b=2'd1;
      c=2'd2;
      d=2'd3;
      {s1,s2}=2'b00;
    end
  initial
    begin
      for(i=0;i<4;i=i+1)
        begin
          {s1,s2}=i;
          #10;
        end
      end
      initial
        
        $monitor( "a = %b, b=%b, c=%b, d=%b,s1=%b, s2=%b,out=%b",a,b,c,d,s1,s2,out);
      initial
        #350 $finish;
      
endmodule
     