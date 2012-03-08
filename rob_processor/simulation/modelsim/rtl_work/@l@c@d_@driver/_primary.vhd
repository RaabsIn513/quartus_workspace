library verilog;
use verilog.vl_types.all;
entity LCD_Driver is
    port(
        lcdWrite        : in     vl_logic;
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        dataIn          : in     vl_logic_vector(17 downto 0);
        dataOut         : out    vl_logic_vector(7 downto 0);
        RS              : out    vl_logic;
        RW              : out    vl_logic;
        enableOut       : out    vl_logic;
        line            : in     vl_logic;
        setLine         : in     vl_logic
    );
end LCD_Driver;
