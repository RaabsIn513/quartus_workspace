library verilog;
use verilog.vl_types.all;
entity counter_3bit is
    port(
        LED0            : out    vl_logic;
        LED1            : out    vl_logic;
        LED2            : out    vl_logic;
        pin_name2       : in     vl_logic;
        cnt_clk_in      : in     vl_logic
    );
end counter_3bit;
