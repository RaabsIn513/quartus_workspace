  //Example instantiation for system 'nios_system'
  nios_system nios_system_inst
    (
      .clk_0                         (clk_0),
      .clocks_0_SDRAM_CLK_out        (clocks_0_SDRAM_CLK_out),
      .clocks_0_sys_clk_out          (clocks_0_sys_clk_out),
      .in_port_to_the_Switches       (in_port_to_the_Switches),
      .out_port_from_the_greenLEDS   (out_port_from_the_greenLEDS),
      .reset_n                       (reset_n),
      .zs_addr_from_the_sdram_0      (zs_addr_from_the_sdram_0),
      .zs_ba_from_the_sdram_0        (zs_ba_from_the_sdram_0),
      .zs_cas_n_from_the_sdram_0     (zs_cas_n_from_the_sdram_0),
      .zs_cke_from_the_sdram_0       (zs_cke_from_the_sdram_0),
      .zs_cs_n_from_the_sdram_0      (zs_cs_n_from_the_sdram_0),
      .zs_dq_to_and_from_the_sdram_0 (zs_dq_to_and_from_the_sdram_0),
      .zs_dqm_from_the_sdram_0       (zs_dqm_from_the_sdram_0),
      .zs_ras_n_from_the_sdram_0     (zs_ras_n_from_the_sdram_0),
      .zs_we_n_from_the_sdram_0      (zs_we_n_from_the_sdram_0)
    );

