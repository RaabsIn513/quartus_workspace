library verilog;
use verilog.vl_types.all;
entity ALU is
    port(
        in1             : in     vl_logic_vector(17 downto 0);
        in2             : in     vl_logic_vector(17 downto 0);
        sel             : in     vl_logic_vector(2 downto 0);
        \out\           : out    vl_logic_vector(17 downto 0);
        enable          : in     vl_logic
    );
end ALU;
