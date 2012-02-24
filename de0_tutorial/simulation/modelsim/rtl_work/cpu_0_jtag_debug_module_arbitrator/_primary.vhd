library verilog;
use verilog.vl_types.all;
entity cpu_0_jtag_debug_module_arbitrator is
    port(
        clk             : in     vl_logic;
        cpu_0_data_master_address_to_slave: in     vl_logic_vector(24 downto 0);
        cpu_0_data_master_byteenable: in     vl_logic_vector(3 downto 0);
        cpu_0_data_master_debugaccess: in     vl_logic;
        cpu_0_data_master_read: in     vl_logic;
        cpu_0_data_master_waitrequest: in     vl_logic;
        cpu_0_data_master_write: in     vl_logic;
        cpu_0_data_master_writedata: in     vl_logic_vector(31 downto 0);
        cpu_0_instruction_master_address_to_slave: in     vl_logic_vector(24 downto 0);
        cpu_0_instruction_master_read: in     vl_logic;
        cpu_0_jtag_debug_module_readdata: in     vl_logic_vector(31 downto 0);
        cpu_0_jtag_debug_module_resetrequest: in     vl_logic;
        reset_n         : in     vl_logic;
        cpu_0_data_master_granted_cpu_0_jtag_debug_module: out    vl_logic;
        cpu_0_data_master_qualified_request_cpu_0_jtag_debug_module: out    vl_logic;
        cpu_0_data_master_read_data_valid_cpu_0_jtag_debug_module: out    vl_logic;
        cpu_0_data_master_requests_cpu_0_jtag_debug_module: out    vl_logic;
        cpu_0_instruction_master_granted_cpu_0_jtag_debug_module: out    vl_logic;
        cpu_0_instruction_master_qualified_request_cpu_0_jtag_debug_module: out    vl_logic;
        cpu_0_instruction_master_read_data_valid_cpu_0_jtag_debug_module: out    vl_logic;
        cpu_0_instruction_master_requests_cpu_0_jtag_debug_module: out    vl_logic;
        cpu_0_jtag_debug_module_address: out    vl_logic_vector(8 downto 0);
        cpu_0_jtag_debug_module_begintransfer: out    vl_logic;
        cpu_0_jtag_debug_module_byteenable: out    vl_logic_vector(3 downto 0);
        cpu_0_jtag_debug_module_chipselect: out    vl_logic;
        cpu_0_jtag_debug_module_debugaccess: out    vl_logic;
        cpu_0_jtag_debug_module_readdata_from_sa: out    vl_logic_vector(31 downto 0);
        cpu_0_jtag_debug_module_reset_n: out    vl_logic;
        cpu_0_jtag_debug_module_resetrequest_from_sa: out    vl_logic;
        cpu_0_jtag_debug_module_write: out    vl_logic;
        cpu_0_jtag_debug_module_writedata: out    vl_logic_vector(31 downto 0);
        d1_cpu_0_jtag_debug_module_end_xfer: out    vl_logic
    );
end cpu_0_jtag_debug_module_arbitrator;
