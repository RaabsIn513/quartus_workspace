library verilog;
use verilog.vl_types.all;
entity nios_system is
    port(
        clk_0           : in     vl_logic;
        clocks_0_SDRAM_CLK_out: out    vl_logic;
        clocks_0_sys_clk_out: out    vl_logic;
        reset_n         : in     vl_logic;
        in_port_to_the_Switches: in     vl_logic_vector(7 downto 0);
        out_port_from_the_greenLEDS: out    vl_logic_vector(7 downto 0);
        zs_addr_from_the_sdram_0: out    vl_logic_vector(11 downto 0);
        zs_ba_from_the_sdram_0: out    vl_logic_vector(1 downto 0);
        zs_cas_n_from_the_sdram_0: out    vl_logic;
        zs_cke_from_the_sdram_0: out    vl_logic;
        zs_cs_n_from_the_sdram_0: out    vl_logic;
        zs_dq_to_and_from_the_sdram_0: inout  vl_logic_vector(15 downto 0);
        zs_dqm_from_the_sdram_0: out    vl_logic_vector(1 downto 0);
        zs_ras_n_from_the_sdram_0: out    vl_logic;
        zs_we_n_from_the_sdram_0: out    vl_logic
    );
end nios_system;
