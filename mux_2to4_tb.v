//Testbench
module mux_2to4_tb();
reg [3:0]a_tb;
 reg [1:0]s_tb;
wire y_tb;
integer i;
mux_2to4 DUT(a_tb,s_tb,y_tb);
initial
   begin
    for(i=0;i<64;i=i+1)
       begin
        {a_tb,s_tb}=i;
        #10;

       end
    end

 initial
 $monitor("Input=%b,Select=%b,Output=%b",a_tb,s_tb,y_tb);

 initial
 #1000 $finish;
endmodule