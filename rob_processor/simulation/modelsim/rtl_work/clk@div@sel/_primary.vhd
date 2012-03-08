library verilog;
use verilog.vl_types.all;
entity clkDivSel is
    port(
        clkIn           : in     vl_logic;
        clkOut          : out    vl_logic;
        freq            : in     vl_logic_vector(25 downto 0)
    );
end clkDivSel;
