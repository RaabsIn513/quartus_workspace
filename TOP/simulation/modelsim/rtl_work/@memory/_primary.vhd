library verilog;
use verilog.vl_types.all;
entity Memory is
    port(
        out_dat_add     : out    vl_logic_vector(17 downto 0);
        in_data         : in     vl_logic_vector(17 downto 0);
        in_address      : in     vl_logic_vector(12 downto 0);
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        read_en         : in     vl_logic;
        write_en        : in     vl_logic
    );
end Memory;
