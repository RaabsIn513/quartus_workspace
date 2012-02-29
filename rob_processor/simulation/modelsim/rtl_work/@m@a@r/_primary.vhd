library verilog;
use verilog.vl_types.all;
entity MAR is
    port(
        re_MAR          : in     vl_logic;
        wr_MAR          : in     vl_logic;
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        MARin           : in     vl_logic_vector(12 downto 0);
        MARout          : out    vl_logic_vector(12 downto 0)
    );
end MAR;
