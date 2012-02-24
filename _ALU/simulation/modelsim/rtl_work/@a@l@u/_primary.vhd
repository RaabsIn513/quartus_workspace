library verilog;
use verilog.vl_types.all;
entity ALU is
    port(
        datA            : in     vl_logic_vector(17 downto 0);
        datB            : in     vl_logic_vector(17 downto 0);
        ctrl            : in     vl_logic_vector(3 downto 0);
        clk             : in     vl_logic;
        result          : out    vl_logic_vector(18 downto 0);
        ovf             : out    vl_logic;
        AgtB            : out    vl_logic;
        N               : out    vl_logic;
        Z               : out    vl_logic
    );
end ALU;
