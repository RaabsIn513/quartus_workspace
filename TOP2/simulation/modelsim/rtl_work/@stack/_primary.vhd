library verilog;
use verilog.vl_types.all;
entity Stack is
    port(
        out_stack_data  : out    vl_logic_vector(17 downto 0);
        in_stack_data   : in     vl_logic_vector(17 downto 0);
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        read_stack_en   : in     vl_logic;
        write_stack_en  : in     vl_logic
    );
end Stack;
