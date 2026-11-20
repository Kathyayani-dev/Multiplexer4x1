# code for mux4x1_tb.v
...
    module mux4x1_tb();
        reg a,b,c,d,s0,s1;
        wire y;
        mux4x1 DUT(a,b,c,d,s0,s1,y);
        integer i,j;
        initial
        begin
                for(i=0;i<4;i=i+1)
                begin
                        {s1,s0}=i;
                        for
                                (j=0;j<16;j=j+1)
                    begin
                            {d,c,b,a}=j;
                            #10;
                    end
                end
        end

        initial
          $monitor("s1=%b,s0=%b,a=%b,b=%b,c=%b,d=%b,y=%b",s1,s0,a,b,c,d,y);
    endmodule
...
