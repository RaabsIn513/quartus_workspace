library verilog;
use verilog.vl_types.all;
entity rdv_fifo_for_cpu_0_data_master_to_sdram_0_s1_module is
    port(
        clear_fifo      : in     vl_logic;
        clk             : in     vl_logic;
        data_in         : in     vl_logic;
        read            : in     vl_logic;
        reset_n         : in     vl_logic;
        sync_reset      : in     vl_logic;
        write           : in     vl_logic;
        data_out        : out    vl_logic;
        empty           : out    vl_logic;
        fifo_contains_ones_n: out    vl_logic;
        full            : out    vl_logic
    );
end rdv_fifo_for_cpu_0_data_master_to_sdram_0_s1_module;
