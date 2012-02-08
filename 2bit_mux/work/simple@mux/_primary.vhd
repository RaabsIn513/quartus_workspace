library verilog;
use verilog.vl_types.all;
entity simpleMux is
    port(
        A               : in     vl_logic;
        B               : in     vl_logic;
        mux_control     : in     vl_logic;
        mux_out         : out    vl_logic
    );
end simpleMux;
