library verilog;
use verilog.vl_types.all;
entity proc is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        LEDs            : out    vl_logic_vector(9 downto 0)
    );
end proc;
