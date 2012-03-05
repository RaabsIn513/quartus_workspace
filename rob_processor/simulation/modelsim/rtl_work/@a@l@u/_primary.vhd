library verilog;
use verilog.vl_types.all;
entity ALU is
    port(
        datA            : in     vl_logic_vector(17 downto 0);
        datB            : in     vl_logic_vector(17 downto 0);
        ctrl            : in     vl_logic_vector(2 downto 0);
        enable          : in     vl_logic;
        alu_out         : out    vl_logic_vector(17 downto 0);
        ovf             : out    vl_logic;
        AgtB            : out    vl_logic;
        N               : out    vl_logic;
        Z               : out    vl_logic
    );
end ALU;
