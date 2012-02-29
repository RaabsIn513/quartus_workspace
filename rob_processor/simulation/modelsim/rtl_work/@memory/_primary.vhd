library verilog;
use verilog.vl_types.all;
entity Memory is
    port(
        DataOut         : out    vl_logic_vector(17 downto 0);
        DataIn          : in     vl_logic_vector(17 downto 0);
        address         : in     vl_logic_vector(12 downto 0);
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        re_en           : in     vl_logic;
        wr_en           : in     vl_logic
    );
end Memory;
