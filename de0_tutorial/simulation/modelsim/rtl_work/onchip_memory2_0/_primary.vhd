library verilog;
use verilog.vl_types.all;
entity onchip_memory2_0 is
    generic(
        INIT_FILE       : string  := "../onchip_memory2_0.hex"
    );
    port(
        address         : in     vl_logic_vector(9 downto 0);
        byteenable      : in     vl_logic_vector(3 downto 0);
        chipselect      : in     vl_logic;
        clk             : in     vl_logic;
        clken           : in     vl_logic;
        reset           : in     vl_logic;
        write           : in     vl_logic;
        writedata       : in     vl_logic_vector(31 downto 0);
        readdata        : out    vl_logic_vector(31 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of INIT_FILE : constant is 1;
end onchip_memory2_0;
