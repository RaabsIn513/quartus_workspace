library verilog;
use verilog.vl_types.all;
entity PC_MD is
    port(
        out_data        : out    vl_logic_vector(17 downto 0);
        in_data         : in     vl_logic_vector(17 downto 0);
        in_data_mem     : in     vl_logic_vector(17 downto 0);
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        inc_pc          : in     vl_logic;
        read_pc_en      : in     vl_logic;
        write_pc_en     : in     vl_logic;
        read_md_en      : in     vl_logic;
        write_md_en     : in     vl_logic;
        write_mem_md    : in     vl_logic
    );
end PC_MD;
