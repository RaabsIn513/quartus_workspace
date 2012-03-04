library verilog;
use verilog.vl_types.all;
entity LCD_top is
    port(
        clk             : in     vl_logic;
        switches        : in     vl_logic_vector(17 downto 0);
        rstBt           : in     vl_logic;
        lineToggleBt    : in     vl_logic;
        LCD             : out    vl_logic_vector(7 downto 0);
        LEDs            : out    vl_logic_vector(9 downto 0);
        en              : out    vl_logic;
        RS              : out    vl_logic;
        RW              : out    vl_logic
    );
end LCD_top;
