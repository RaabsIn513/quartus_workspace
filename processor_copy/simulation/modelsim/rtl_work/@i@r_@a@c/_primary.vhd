library verilog;
use verilog.vl_types.all;
entity IR_AC is
    port(
        ouD             : out    vl_logic_vector(17 downto 0);
        inD             : in     vl_logic_vector(17 downto 0);
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        re_en_inpr      : in     vl_logic;
        wr_en_outr      : in     vl_logic;
        re_en_ac        : in     vl_logic;
        wr_en_ac        : in     vl_logic;
        re_en_ir        : in     vl_logic;
        wr_en_ir        : in     vl_logic;
        opcode          : out    vl_logic_vector(2 downto 0);
        flg_i           : out    vl_logic;
        flg_o           : out    vl_logic;
        in_intp         : in     vl_logic_vector(17 downto 0)
    );
end IR_AC;
