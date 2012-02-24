library verilog;
use verilog.vl_types.all;
entity onchip_memory2_0_s1_arbitrator is
    port(
        clk             : in     vl_logic;
        cpu_0_data_master_address_to_slave: in     vl_logic_vector(24 downto 0);
        cpu_0_data_master_byteenable: in     vl_logic_vector(3 downto 0);
        cpu_0_data_master_read: in     vl_logic;
        cpu_0_data_master_waitrequest: in     vl_logic;
        cpu_0_data_master_write: in     vl_logic;
        cpu_0_data_master_writedata: in     vl_logic_vector(31 downto 0);
        cpu_0_instruction_master_address_to_slave: in     vl_logic_vector(24 downto 0);
        cpu_0_instruction_master_read: in     vl_logic;
        onchip_memory2_0_s1_readdata: in     vl_logic_vector(31 downto 0);
        reset_n         : in     vl_logic;
        cpu_0_data_master_granted_onchip_memory2_0_s1: out    vl_logic;
        cpu_0_data_master_qualified_request_onchip_memory2_0_s1: out    vl_logic;
        cpu_0_data_master_read_data_valid_onchip_memory2_0_s1: out    vl_logic;
        cpu_0_data_master_requests_onchip_memory2_0_s1: out    vl_logic;
        cpu_0_instruction_master_granted_onchip_memory2_0_s1: out    vl_logic;
        cpu_0_instruction_master_qualified_request_onchip_memory2_0_s1: out    vl_logic;
        cpu_0_instruction_master_read_data_valid_onchip_memory2_0_s1: out    vl_logic;
        cpu_0_instruction_master_requests_onchip_memory2_0_s1: out    vl_logic;
        d1_onchip_memory2_0_s1_end_xfer: out    vl_logic;
        onchip_memory2_0_s1_address: out    vl_logic_vector(9 downto 0);
        onchip_memory2_0_s1_byteenable: out    vl_logic_vector(3 downto 0);
        onchip_memory2_0_s1_chipselect: out    vl_logic;
        onchip_memory2_0_s1_clken: out    vl_logic;
        onchip_memory2_0_s1_readdata_from_sa: out    vl_logic_vector(31 downto 0);
        onchip_memory2_0_s1_reset: out    vl_logic;
        onchip_memory2_0_s1_write: out    vl_logic;
        onchip_memory2_0_s1_writedata: out    vl_logic_vector(31 downto 0);
        registered_cpu_0_data_master_read_data_valid_onchip_memory2_0_s1: out    vl_logic
    );
end onchip_memory2_0_s1_arbitrator;
