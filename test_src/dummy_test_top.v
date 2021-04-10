module dummy_test_top ();

reg clk = 0;
reg rst = 0;

always #1 clk <= ~clk;

// INSERT CODE HERE

initial begin
    $dumpfile("dummy_test.vcd");
    $dumpvars(0,dummy_test_top);

    #5000 $finish;
end

endmodule

