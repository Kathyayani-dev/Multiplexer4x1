# code for mux4x1.v
...
   module mux4x1(a,b,c,d,s0,s1,y);
        input a,b,c,d,s0,s1;
        output y;
        wire y0,y1;
        mux2x1 m1(.a(a),.b(b),.sel(s0),.y(y0));
        mux2x1 m2(.a(c),.b(d),.sel(s0),.y(y1));
        mux2x1 m3(.a(y0),.b(y1),.sel(s1),.y(y));
  endmodule
...
