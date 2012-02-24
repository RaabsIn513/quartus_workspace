library verilog;
use verilog.vl_types.all;
entity Switches_s1_arbitrator is
    port(
        Switches_s1_readdata: in     vl_logic_vector(31 downto 0);
        clk             : in     vl_logic;
        cpu_0_data_master_address_to_slave: in     vl_logic_vector(24 downto 0);
        cpu_0_data_master_read: in     vl_logic;
        cpu_0_data_master_write: in     vl_logic;
        reset_n         : in     vl_logic;
        Switches_s1_address: out    vl_logic_vector(1 downto 0);
        Switches_s1_readdata_from_sa: out    vl_logic_vector(31 downto 0);
        Switches_s1_reset_n: out    vl_logic;
        cpu_0_data_master_granted_Switches_s1: out    vl_logic;
        cpu_0_data_master_qualified_request_Switches_s1: out    vl_logic;
        cpu_0_data_master_read_data_valid_Switches_s1: out    vl_logic;
        cpu_0_data_master_requests_Switches_s1: out    vl_logic;
        d1_Switches_s1_end_xfer: out    vl_logic
    );
end Switches_s1_arbitrator;
