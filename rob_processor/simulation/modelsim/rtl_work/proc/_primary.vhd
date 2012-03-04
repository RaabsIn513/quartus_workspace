library verilog;
use verilog.vl_types.all;
entity proc is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        LCD             : out    vl_logic_vector(7 downto 0);
        lcdRS           : out    vl_logic;
        lcdRW           : out    vl_logic;
        lcdEn           : out    vl_logic;
        LED             : out    vl_logic
    );
end proc;
