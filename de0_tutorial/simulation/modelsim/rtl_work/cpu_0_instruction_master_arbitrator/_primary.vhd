library verilog;
use verilog.vl_types.all;
entity cpu_0_instruction_master_arbitrator is
    port(
        clk             : in     vl_logic;
        cpu_0_instruction_master_address: in     vl_logic_vector(24 downto 0);
        cpu_0_instruction_master_granted_cpu_0_jtag_debug_module: in     vl_logic;
        cpu_0_instruction_master_granted_onchip_memory2_0_s1: in     vl_logic;
        cpu_0_instruction_master_granted_sdram_0_s1: in     vl_logic;
        cpu_0_instruction_master_qualified_request_cpu_0_jtag_debug_module: in     vl_logic;
        cpu_0_instruction_master_qualified_request_onchip_memory2_0_s1: in     vl_logic;
        cpu_0_instruction_master_qualified_request_sdram_0_s1: in     vl_logic;
        cpu_0_instruction_master_read: in     vl_logic;
        cpu_0_instruction_master_read_data_valid_cpu_0_jtag_debug_module: in     vl_logic;
        cpu_0_instruction_master_read_data_valid_onchip_memory2_0_s1: in     vl_logic;
        cpu_0_instruction_master_read_data_valid_sdram_0_s1: in     vl_logic;
        cpu_0_instruction_master_read_data_valid_sdram_0_s1_shift_register: in     vl_logic;
        cpu_0_instruction_master_requests_cpu_0_jtag_debug_module: in     vl_logic;
        cpu_0_instruction_master_requests_onchip_memory2_0_s1: in     vl_logic;
        cpu_0_instruction_master_requests_sdram_0_s1: in     vl_logic;
        cpu_0_jtag_debug_module_readdata_from_sa: in     vl_logic_vector(31 downto 0);
        d1_cpu_0_jtag_debug_module_end_xfer: in     vl_logic;
        d1_onchip_memory2_0_s1_end_xfer: in     vl_logic;
        d1_sdram_0_s1_end_xfer: in     vl_logic;
        onchip_memory2_0_s1_readdata_from_sa: in     vl_logic_vector(31 downto 0);
        reset_n         : in     vl_logic;
        sdram_0_s1_readdata_from_sa: in     vl_logic_vector(15 downto 0);
        sdram_0_s1_waitrequest_from_sa: in     vl_logic;
        cpu_0_instruction_master_address_to_slave: out    vl_logic_vector(24 downto 0);
        cpu_0_instruction_master_dbs_address: out    vl_logic_vector(1 downto 0);
        cpu_0_instruction_master_readdata: out    vl_logic_vector(31 downto 0);
        cpu_0_instruction_master_waitrequest: out    vl_logic
    );
end cpu_0_instruction_master_arbitrator;
