library verilog;
use verilog.vl_types.all;
entity PC is
    port(
        re_PC           : in     vl_logic;
        wr_PC           : in     vl_logic;
        PCinc           : in     vl_logic;
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        PCin            : in     vl_logic_vector(17 downto 0);
        PCout           : out    vl_logic_vector(17 downto 0)
    );
end PC;
