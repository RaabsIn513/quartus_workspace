library verilog;
use verilog.vl_types.all;
entity useClkDiv is
    port(
        clk50           : in     vl_logic;
        LED             : out    vl_logic
    );
end useClkDiv;
