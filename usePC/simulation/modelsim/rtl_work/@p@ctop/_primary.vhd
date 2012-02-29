library verilog;
use verilog.vl_types.all;
entity PCtop is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        rPC             : in     vl_logic;
        wPC             : in     vl_logic;
        inPC            : in     vl_logic_vector(17 downto 0);
        outPC           : out    vl_logic_vector(17 downto 0)
    );
end PCtop;
