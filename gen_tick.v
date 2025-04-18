//=========================================================================
// Name & Email must be EXACTLY as in Gradescope roster!
// Name: Sangha Jeon
// Email: sjeon065@ucr.edu
// 
// Assignment name:
// Lab section: 
// TA: 
// 
// I hereby certify that I have not received assistance on this assignment,
// or used code, from ANY outside source other than the instruction team
// (apart from what was provided in the starter file).
//
//=========================================================================

module gen_tick # ( parameter SRC_FREQ = 5000, parameter TICK_FREQ = 1) (
    input src_clk,
    input enable,
    output tick
);

// Declare registers and wires here
reg toggle = 0;
integer cnt = 0;
integer tick_cnt = SRC_FREQ / (2 * TICK_FREQ);

always @(posedge src_clk) begin
    // put your code for the multiplier here
    // 1 hz = 50 seconds
    // 2hz  = 25 seconds
    if (enable == 1) begin
        cnt <= cnt +1;

        if (cnt >= tick_cnt-1) begin
            cnt <= 0;
            toggle <= ~toggle;
        end
    end
    // cnt = tick_cnt, then reset cnt and keep going

end

// Change this assign statement to the actual tick value
assign tick = toggle;

endmodule
