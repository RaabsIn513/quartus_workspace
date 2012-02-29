library verilog;
use verilog.vl_types.all;
entity IR is
    port(
        re_IR           : in     vl_logic;
        wr_IR           : in     vl_logic;
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        IRin            : in     vl_logic_vector(17 downto 0);
        IRout           : out    vl_logic_vector(17 downto 0)
    );
end IR;
