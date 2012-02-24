library verilog;
use verilog.vl_types.all;
entity de0_tutorial is
    port(
        SW              : in     vl_logic_vector(7 downto 0);
        KEY             : in     vl_logic_vector(0 downto 0);
        CLOCK_50        : in     vl_logic;
        LEDG            : out    vl_logic_vector(7 downto 0)
    );
end de0_tutorial;
