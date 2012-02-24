library verilog;
use verilog.vl_types.all;
entity clocks_0 is
    generic(
        SYS_CLK_MULT    : integer := 1;
        SYS_CLK_DIV     : integer := 1
    );
    port(
        CLOCK_50        : in     vl_logic;
        reset           : in     vl_logic;
        address         : in     vl_logic;
        sys_clk         : out    vl_logic;
        SDRAM_CLK       : out    vl_logic;
        readdata        : out    vl_logic_vector(7 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of SYS_CLK_MULT : constant is 1;
    attribute mti_svvh_generic_type of SYS_CLK_DIV : constant is 1;
end clocks_0;
