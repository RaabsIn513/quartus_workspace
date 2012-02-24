library verilog;
use verilog.vl_types.all;
entity Stack is
    port(
        ou_stckD        : out    vl_logic_vector(17 downto 0);
        in_stckD        : in     vl_logic_vector(17 downto 0);
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        re_en_stckD     : in     vl_logic;
        wr_en_stckD     : in     vl_logic
    );
end Stack;
