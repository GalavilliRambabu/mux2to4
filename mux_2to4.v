///5. Write a verilog design testbench for a 4:1 mux using 2:1 mux
module mux_2to4(a,b,sel,y);
input a,b,sel;
output y;
assign y=~sel&a|sel&b;
endmodule
module mux_4(in,s,y_out);
input [3:0]in;
input [1:0]s;
output y_out;
wire w1,w2;
mux_2 mux1(.a(in[0]),.b(in[1]),.sel(s[1]),.y(w1));
mux_2 mux2(.a(in[2]),.b(in[3]),.sel(s[1]),.y(w2));
mux_2 mux3(.a(w1),.b(w2),.sel(s[0]),.y(y_out));
endmodule