library verilog;
use verilog.vl_types.all;
entity clkDiv1Hz is
    port(
        clkIn           : in     vl_logic;
        clkOut          : out    vl_logic
    );
end clkDiv1Hz;
