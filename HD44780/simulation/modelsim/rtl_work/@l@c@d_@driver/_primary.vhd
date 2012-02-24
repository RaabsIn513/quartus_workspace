library verilog;
use verilog.vl_types.all;
entity LCD_Driver is
    port(
        dataIn          : in     vl_logic_vector(7 downto 0);
        dataOut         : out    vl_logic_vector(7 downto 0);
        clk             : in     vl_logic;
        en              : out    vl_logic;
        RW              : out    vl_logic;
        RS              : out    vl_logic;
        rst             : in     vl_logic;
        BLON            : out    vl_logic;
        LEDs            : out    vl_logic_vector(7 downto 0)
    );
end LCD_Driver;
