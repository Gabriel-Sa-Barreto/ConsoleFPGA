module frequencyDivisor;

reg clk,reset;
wire clk_out;
 
frequency_divisor #(.WIDTH(3), .N(2))
FD1(
.clk(clk),
.reset(reset),
.out_clk(clk_out)
);

initial clk= 1'b0;

always #20  clk=~clk; 
        
initial
    begin
        reset=1'b1;
        #20
        reset=1'b0;
        #500 
        $finish;
    end
 
initial $monitor("clk=%b,reset=%b,clk_out=%b",clk,reset,clk_out);
endmodule