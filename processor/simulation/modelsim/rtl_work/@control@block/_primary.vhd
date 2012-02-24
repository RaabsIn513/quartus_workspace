library verilog;
use verilog.vl_types.all;
entity ControlBlock is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        opcode          : in     vl_logic_vector(2 downto 0);
        wr_pc           : out    vl_logic;
        re_pc           : out    vl_logic;
        pc_inc          : out    vl_logic;
        re_ir           : out    vl_logic;
        wr_ir           : out    vl_logic;
        re_ma           : out    vl_logic;
        wr_ma           : out    vl_logic;
        re_md           : out    vl_logic;
        wr_md           : out    vl_logic;
        re_ac           : out    vl_logic;
        wr_ac           : out    vl_logic;
        re_mem          : out    vl_logic;
        wr_mem          : out    vl_logic;
        en_alu          : out    vl_logic;
        re_stck         : out    vl_logic;
        wr_stck         : out    vl_logic;
        re_inpr         : out    vl_logic;
        wr_ouR          : out    vl_logic;
        aluop           : out    vl_logic_vector(2 downto 0);
        wr_md_mem       : out    vl_logic;
        flg_i           : in     vl_logic;
        flg_o           : in     vl_logic;
        en_glbe         : in     vl_logic;
        en_i            : in     vl_logic;
        en_o            : in     vl_logic
    );
end ControlBlock;
