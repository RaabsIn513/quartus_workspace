library verilog;
use verilog.vl_types.all;
entity PushButton_Debouncer is
    port(
        clk             : in     vl_logic;
        PB              : in     vl_logic;
        PB_state        : out    vl_logic;
        PB_up           : out    vl_logic;
        PB_down         : out    vl_logic
    );
end PushButton_Debouncer;
