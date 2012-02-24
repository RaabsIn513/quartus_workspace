library verilog;
use verilog.vl_types.all;
entity MAR is
    port(
        re_en_MAR       : in     vl_logic;
        wr_en_MAR       : in     vl_logic;
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        in_MAR          : in     vl_logic_vector(12 downto 0);
        ou_MAR          : out    vl_logic_vector(12 downto 0)
    );
end MAR;
