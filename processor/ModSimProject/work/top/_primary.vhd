library verilog;
use verilog.vl_types.all;
entity top is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        glob_ie         : in     vl_logic;
        en_i            : in     vl_logic;
        en_o            : in     vl_logic;
        in_intp         : in     vl_logic_vector(17 downto 0)
    );
end top;
