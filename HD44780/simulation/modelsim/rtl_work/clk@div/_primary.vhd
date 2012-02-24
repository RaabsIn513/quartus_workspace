library verilog;
use verilog.vl_types.all;
entity clkDiv is
    port(
        clkIn           : in     vl_logic;
        clkOut          : out    vl_logic
    );
end clkDiv;
