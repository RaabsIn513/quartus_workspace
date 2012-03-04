library verilog;
use verilog.vl_types.all;
entity ControlBlock is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        rMAR            : out    vl_logic;
        wMAR            : out    vl_logic;
        rMem            : out    vl_logic;
        wMem            : out    vl_logic;
        rMDR            : out    vl_logic;
        wMDRmem         : out    vl_logic;
        wMDRbus         : out    vl_logic;
        rPC             : out    vl_logic;
        wPC             : out    vl_logic;
        incPC           : out    vl_logic;
        rIR             : out    vl_logic;
        wIR             : out    vl_logic;
        rAC             : out    vl_logic;
        wAC             : out    vl_logic;
        cALU            : out    vl_logic_vector(2 downto 0);
        eALU            : out    vl_logic;
        getInst         : in     vl_logic_vector(17 downto 0);
        lcdLineSel      : out    vl_logic;
        lcdLine         : out    vl_logic;
        lcdRst          : out    vl_logic;
        lcdW            : out    vl_logic
    );
end ControlBlock;
