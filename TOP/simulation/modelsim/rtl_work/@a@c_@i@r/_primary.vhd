library verilog;
use verilog.vl_types.all;
entity AC_IR is
    port(
        out_data        : out    vl_logic_vector(17 downto 0);
        in_data         : in     vl_logic_vector(17 downto 0);
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        read_inpr_en    : in     vl_logic;
        write_outr_en   : in     vl_logic;
        read_ac_en      : in     vl_logic;
        write_ac_en     : in     vl_logic;
        read_ir_en      : in     vl_logic;
        write_ir_en     : in     vl_logic;
        opcode          : out    vl_logic_vector(2 downto 0);
        I_flag          : out    vl_logic;
        O_flag          : out    vl_logic;
        inpr_input      : in     vl_logic_vector(17 downto 0)
    );
end AC_IR;
