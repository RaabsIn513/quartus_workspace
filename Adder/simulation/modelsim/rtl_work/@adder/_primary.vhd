library verilog;
use verilog.vl_types.all;
entity Adder is
    port(
        dataa           : in     vl_logic_vector(7 downto 0);
        datab           : in     vl_logic_vector(7 downto 0);
        clk             : in     vl_logic;
        result          : out    vl_logic_vector(8 downto 0)
    );
end Adder;
