library verilog;
use verilog.vl_types.all;
entity AC is
    port(
        re_AC           : in     vl_logic;
        wr_AC           : in     vl_logic;
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        ACin            : in     vl_logic_vector(17 downto 0);
        ACout           : out    vl_logic_vector(17 downto 0)
    );
end AC;
