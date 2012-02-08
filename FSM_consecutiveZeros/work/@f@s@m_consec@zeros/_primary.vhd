library verilog;
use verilog.vl_types.all;
entity FSM_consecZeros is
    generic(
        q0              : vl_logic_vector(1 downto 0) := (Hi0, Hi0);
        q1              : vl_logic_vector(1 downto 0) := (Hi0, Hi1);
        qf              : vl_logic_vector(1 downto 0) := (Hi1, Hi0)
    );
    port(
        inBit           : in     vl_logic;
        outBit          : out    vl_logic;
        clock           : in     vl_logic;
        reset           : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of q0 : constant is 2;
    attribute mti_svvh_generic_type of q1 : constant is 2;
    attribute mti_svvh_generic_type of qf : constant is 2;
end FSM_consecZeros;
