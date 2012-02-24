library verilog;
use verilog.vl_types.all;
entity clocks_0_avalon_clocks_slave_arbitrator is
    port(
        clk             : in     vl_logic;
        clocks_0_avalon_clocks_slave_readdata: in     vl_logic_vector(7 downto 0);
        cpu_0_data_master_address_to_slave: in     vl_logic_vector(24 downto 0);
        cpu_0_data_master_dbs_address: in     vl_logic_vector(1 downto 0);
        cpu_0_data_master_read: in     vl_logic;
        cpu_0_data_master_write: in     vl_logic;
        reset_n         : in     vl_logic;
        clocks_0_avalon_clocks_slave_address: out    vl_logic;
        clocks_0_avalon_clocks_slave_readdata_from_sa: out    vl_logic_vector(7 downto 0);
        cpu_0_data_master_granted_clocks_0_avalon_clocks_slave: out    vl_logic;
        cpu_0_data_master_qualified_request_clocks_0_avalon_clocks_slave: out    vl_logic;
        cpu_0_data_master_read_data_valid_clocks_0_avalon_clocks_slave: out    vl_logic;
        cpu_0_data_master_requests_clocks_0_avalon_clocks_slave: out    vl_logic;
        d1_clocks_0_avalon_clocks_slave_end_xfer: out    vl_logic;
        registered_cpu_0_data_master_read_data_valid_clocks_0_avalon_clocks_slave: out    vl_logic
    );
end clocks_0_avalon_clocks_slave_arbitrator;
