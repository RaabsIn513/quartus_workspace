library verilog;
use verilog.vl_types.all;
entity MDR is
    port(
        re_MDR          : in     vl_logic;
        wr_MDR_Mem      : in     vl_logic;
        wr_MDR_Bus      : in     vl_logic;
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        MDRinMem        : in     vl_logic_vector(17 downto 0);
        MDRinBus        : in     vl_logic_vector(17 downto 0);
        MDRout          : out    vl_logic_vector(17 downto 0)
    );
end MDR;
