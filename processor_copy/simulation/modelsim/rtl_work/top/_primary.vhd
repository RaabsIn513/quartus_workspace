library verilog;
use verilog.vl_types.all;
entity top is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        LEDout          : out    vl_logic_vector(15 downto 0)
    );
end top;
