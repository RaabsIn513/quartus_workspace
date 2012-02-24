library verilog;
use verilog.vl_types.all;
entity MAR is
    port(
        MAR_read_en     : in     vl_logic;
        MAR_write_en    : in     vl_logic;
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        MAR_in          : in     vl_logic_vector(12 downto 0);
        MAR_out         : out    vl_logic_vector(12 downto 0)
    );
end MAR;
