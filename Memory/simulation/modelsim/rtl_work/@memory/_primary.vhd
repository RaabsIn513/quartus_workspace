library verilog;
use verilog.vl_types.all;
entity Memory is
    port(
        ouD_add         : out    vl_logic_vector(17 downto 0);
        inD             : in     vl_logic_vector(17 downto 0);
        in_adrs         : in     vl_logic_vector(12 downto 0);
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        re_en           : in     vl_logic;
        wr_en           : in     vl_logic
    );
end Memory;
