library verilog;
use verilog.vl_types.all;
entity TOP is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        inpr_input      : in     vl_logic_vector(17 downto 0)
    );
end TOP;
