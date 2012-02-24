library verilog;
use verilog.vl_types.all;
entity ControlBlock is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        opcode          : in     vl_logic_vector(2 downto 0);
        pc_write        : out    vl_logic;
        pc_read         : out    vl_logic;
        inc_pc          : out    vl_logic;
        ir_read         : out    vl_logic;
        ir_write        : out    vl_logic;
        ma_read         : out    vl_logic;
        ma_write        : out    vl_logic;
        md_read         : out    vl_logic;
        md_write        : out    vl_logic;
        ac_read         : out    vl_logic;
        ac_write        : out    vl_logic;
        mem_read        : out    vl_logic;
        mem_write       : out    vl_logic;
        alu_enable      : out    vl_logic;
        stack_read      : out    vl_logic;
        stack_write     : out    vl_logic;
        inpr_read       : out    vl_logic;
        outr_write      : out    vl_logic;
        aluop           : out    vl_logic_vector(2 downto 0);
        md_write_mem    : out    vl_logic
    );
end ControlBlock;
