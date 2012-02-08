library verilog;
use verilog.vl_types.all;
entity SimpleCounter is
    port(
        clock           : in     vl_logic;
        reset           : in     vl_logic;
        count           : out    vl_logic_vector(2 downto 0)
    );
end SimpleCounter;
