library verilog;
use verilog.vl_types.all;
entity simpleRAM is
    port(
        address         : in     vl_logic_vector(2 downto 0);
        data            : inout  vl_logic_vector(7 downto 0);
        rw              : in     vl_logic;
        clock           : in     vl_logic;
        reset           : in     vl_logic
    );
end simpleRAM;
