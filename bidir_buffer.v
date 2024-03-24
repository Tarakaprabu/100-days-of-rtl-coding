module bidir_buffer(a,b,ctrl);
  inout a,b;
  input ctrl;
  assign a= (ctrl)?b:1'bz;
    assign b = (ctrl)?a:1'bz;
endmodule