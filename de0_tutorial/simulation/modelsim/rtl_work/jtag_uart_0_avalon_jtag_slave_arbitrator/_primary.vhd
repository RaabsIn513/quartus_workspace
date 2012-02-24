library verilog;
use verilog.vl_types.all;
entity jtag_uart_0_avalon_jtag_slave_arbitrator is
    port(
        clk             : in     vl_logic;
        cpu_0_data_master_address_to_slave: in     vl_logic_vector(24 downto 0);
        cpu_0_data_master_read: in     vl_logic;
        cpu_0_data_master_waitrequest: in     vl_logic;
        cpu_0_data_master_write: in     vl_logic;
        cpu_0_data_master_writedata: in     vl_logic_vector(31 downto 0);
        jtag_uart_0_avalon_jtag_slave_dataavailable: in     vl_logic;
        jtag_uart_0_avalon_jtag_slave_irq: in     vl_logic;
        jtag_uart_0_avalon_jtag_slave_readdata: in     vl_logic_vector(31 downto 0);
        jtag_uart_0_avalon_jtag_slave_readyfordata: in     vl_logic;
        jtag_uart_0_avalon_jtag_slave_waitrequest: in     vl_logic;
        reset_n         : in     vl_logic;
        cpu_0_data_master_granted_jtag_uart_0_avalon_jtag_slave: out    vl_logic;
        cpu_0_data_master_qualified_request_jtag_uart_0_avalon_jtag_slave: out    vl_logic;
        cpu_0_data_master_read_data_valid_jtag_uart_0_avalon_jtag_slave: out    vl_logic;
        cpu_0_data_master_requests_jtag_uart_0_avalon_jtag_slave: out    vl_logic;
        d1_jtag_uart_0_avalon_jtag_slave_end_xfer: out    vl_logic;
        jtag_uart_0_avalon_jtag_slave_address: out    vl_logic;
        jtag_uart_0_avalon_jtag_slave_chipselect: out    vl_logic;
        jtag_uart_0_avalon_jtag_slave_dataavailable_from_sa: out    vl_logic;
        jtag_uart_0_avalon_jtag_slave_irq_from_sa: out    vl_logic;
        jtag_uart_0_avalon_jtag_slave_read_n: out    vl_logic;
        jtag_uart_0_avalon_jtag_slave_readdata_from_sa: out    vl_logic_vector(31 downto 0);
        jtag_uart_0_avalon_jtag_slave_readyfordata_from_sa: out    vl_logic;
        jtag_uart_0_avalon_jtag_slave_reset_n: out    vl_logic;
        jtag_uart_0_avalon_jtag_slave_waitrequest_from_sa: out    vl_logic;
        jtag_uart_0_avalon_jtag_slave_write_n: out    vl_logic;
        jtag_uart_0_avalon_jtag_slave_writedata: out    vl_logic_vector(31 downto 0)
    );
end jtag_uart_0_avalon_jtag_slave_arbitrator;
