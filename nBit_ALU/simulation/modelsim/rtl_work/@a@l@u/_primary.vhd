library verilog;
use verilog.vl_types.all;
entity ALU is
    port(
        A               : in     vl_logic_vector(17 downto 0);
        B               : in     vl_logic_vector(17 downto 0);
        ALU_out         : out    vl_logic_vector(17 downto 0);
        ovf             : out    vl_logic;
        isZero          : out    vl_logic;
        clk             : in     vl_logic
    );
end ALU;
