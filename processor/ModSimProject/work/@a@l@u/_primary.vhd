library verilog;
use verilog.vl_types.all;
entity ALU is
    port(
        ina             : in     vl_logic_vector(17 downto 0);
        inb             : in     vl_logic_vector(17 downto 0);
        sig             : in     vl_logic_vector(2 downto 0);
        \out\           : out    vl_logic_vector(17 downto 0);
        en              : in     vl_logic
    );
end ALU;
