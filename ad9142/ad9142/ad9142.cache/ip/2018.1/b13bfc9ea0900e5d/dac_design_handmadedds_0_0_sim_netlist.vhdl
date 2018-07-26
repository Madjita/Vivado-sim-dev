-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
-- Date        : Thu Jul 12 16:33:51 2018
-- Host        : all running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ dac_design_handmadedds_0_0_sim_netlist.vhdl
-- Design      : dac_design_handmadedds_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_LookUpTableGen is
  port (
    \LUToutRegister_reg_reg[0]_0\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \LUToutRegister_reg_reg[1][0]_i_2\ : in STD_LOGIC;
    clk : in STD_LOGIC;
    ADDRARDADDR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_LookUpTableGen;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_LookUpTableGen is
  signal \LUToutRegister_reg_reg[0]_0__0_n_34\ : STD_LOGIC;
  signal \LUToutRegister_reg_reg[0]_0__0_n_35\ : STD_LOGIC;
  signal \LUToutRegister_reg_reg[0]_1_n_34\ : STD_LOGIC;
  signal \LUToutRegister_reg_reg[0]_1_n_35\ : STD_LOGIC;
  signal \LUToutRegister_reg_reg[0]_2_n_34\ : STD_LOGIC;
  signal \LUToutRegister_reg_reg[0]_2_n_35\ : STD_LOGIC;
  signal \LUToutRegister_reg_reg[0]_3_n_34\ : STD_LOGIC;
  signal \LUToutRegister_reg_reg[0]_3_n_35\ : STD_LOGIC;
  signal \LUToutRegister_reg_reg[0]_4_n_34\ : STD_LOGIC;
  signal \LUToutRegister_reg_reg[0]_4_n_35\ : STD_LOGIC;
  signal \LUToutRegister_reg_reg[0]_5_n_34\ : STD_LOGIC;
  signal \LUToutRegister_reg_reg[0]_5_n_35\ : STD_LOGIC;
  signal \LUToutRegister_reg_reg[0]_6_n_34\ : STD_LOGIC;
  signal \LUToutRegister_reg_reg[0]_6_n_35\ : STD_LOGIC;
  signal \LUToutRegister_reg_reg[0]_7_n_34\ : STD_LOGIC;
  signal \LUToutRegister_reg_reg[0]_7_n_35\ : STD_LOGIC;
  signal \NLW_LUToutRegister_reg_reg[0]_0__0_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_LUToutRegister_reg_reg[0]_0__0_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_LUToutRegister_reg_reg[0]_0__0_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_LUToutRegister_reg_reg[0]_0__0_INJECTDBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_LUToutRegister_reg_reg[0]_0__0_INJECTSBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_LUToutRegister_reg_reg[0]_0__0_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_LUToutRegister_reg_reg[0]_0__0_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 2 );
  signal \NLW_LUToutRegister_reg_reg[0]_0__0_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_LUToutRegister_reg_reg[0]_0__0_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_LUToutRegister_reg_reg[0]_0__0_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_LUToutRegister_reg_reg[0]_0__0_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_LUToutRegister_reg_reg[0]_0__0_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \NLW_LUToutRegister_reg_reg[0]_1_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_LUToutRegister_reg_reg[0]_1_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_LUToutRegister_reg_reg[0]_1_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_LUToutRegister_reg_reg[0]_1_INJECTDBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_LUToutRegister_reg_reg[0]_1_INJECTSBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_LUToutRegister_reg_reg[0]_1_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_LUToutRegister_reg_reg[0]_1_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 2 );
  signal \NLW_LUToutRegister_reg_reg[0]_1_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_LUToutRegister_reg_reg[0]_1_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_LUToutRegister_reg_reg[0]_1_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_LUToutRegister_reg_reg[0]_1_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_LUToutRegister_reg_reg[0]_1_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \NLW_LUToutRegister_reg_reg[0]_2_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_LUToutRegister_reg_reg[0]_2_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_LUToutRegister_reg_reg[0]_2_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_LUToutRegister_reg_reg[0]_2_INJECTDBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_LUToutRegister_reg_reg[0]_2_INJECTSBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_LUToutRegister_reg_reg[0]_2_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_LUToutRegister_reg_reg[0]_2_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 2 );
  signal \NLW_LUToutRegister_reg_reg[0]_2_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_LUToutRegister_reg_reg[0]_2_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_LUToutRegister_reg_reg[0]_2_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_LUToutRegister_reg_reg[0]_2_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_LUToutRegister_reg_reg[0]_2_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \NLW_LUToutRegister_reg_reg[0]_3_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_LUToutRegister_reg_reg[0]_3_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_LUToutRegister_reg_reg[0]_3_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_LUToutRegister_reg_reg[0]_3_INJECTDBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_LUToutRegister_reg_reg[0]_3_INJECTSBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_LUToutRegister_reg_reg[0]_3_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_LUToutRegister_reg_reg[0]_3_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 2 );
  signal \NLW_LUToutRegister_reg_reg[0]_3_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_LUToutRegister_reg_reg[0]_3_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_LUToutRegister_reg_reg[0]_3_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_LUToutRegister_reg_reg[0]_3_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_LUToutRegister_reg_reg[0]_3_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \NLW_LUToutRegister_reg_reg[0]_4_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_LUToutRegister_reg_reg[0]_4_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_LUToutRegister_reg_reg[0]_4_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_LUToutRegister_reg_reg[0]_4_INJECTDBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_LUToutRegister_reg_reg[0]_4_INJECTSBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_LUToutRegister_reg_reg[0]_4_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_LUToutRegister_reg_reg[0]_4_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 2 );
  signal \NLW_LUToutRegister_reg_reg[0]_4_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_LUToutRegister_reg_reg[0]_4_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_LUToutRegister_reg_reg[0]_4_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_LUToutRegister_reg_reg[0]_4_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_LUToutRegister_reg_reg[0]_4_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \NLW_LUToutRegister_reg_reg[0]_5_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_LUToutRegister_reg_reg[0]_5_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_LUToutRegister_reg_reg[0]_5_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_LUToutRegister_reg_reg[0]_5_INJECTDBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_LUToutRegister_reg_reg[0]_5_INJECTSBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_LUToutRegister_reg_reg[0]_5_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_LUToutRegister_reg_reg[0]_5_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 2 );
  signal \NLW_LUToutRegister_reg_reg[0]_5_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_LUToutRegister_reg_reg[0]_5_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_LUToutRegister_reg_reg[0]_5_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_LUToutRegister_reg_reg[0]_5_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_LUToutRegister_reg_reg[0]_5_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \NLW_LUToutRegister_reg_reg[0]_6_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_LUToutRegister_reg_reg[0]_6_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_LUToutRegister_reg_reg[0]_6_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_LUToutRegister_reg_reg[0]_6_INJECTDBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_LUToutRegister_reg_reg[0]_6_INJECTSBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_LUToutRegister_reg_reg[0]_6_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_LUToutRegister_reg_reg[0]_6_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 2 );
  signal \NLW_LUToutRegister_reg_reg[0]_6_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_LUToutRegister_reg_reg[0]_6_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_LUToutRegister_reg_reg[0]_6_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_LUToutRegister_reg_reg[0]_6_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_LUToutRegister_reg_reg[0]_6_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \NLW_LUToutRegister_reg_reg[0]_7_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_LUToutRegister_reg_reg[0]_7_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_LUToutRegister_reg_reg[0]_7_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_LUToutRegister_reg_reg[0]_7_INJECTDBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_LUToutRegister_reg_reg[0]_7_INJECTSBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_LUToutRegister_reg_reg[0]_7_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_LUToutRegister_reg_reg[0]_7_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 2 );
  signal \NLW_LUToutRegister_reg_reg[0]_7_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_LUToutRegister_reg_reg[0]_7_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_LUToutRegister_reg_reg[0]_7_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_LUToutRegister_reg_reg[0]_7_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_LUToutRegister_reg_reg[0]_7_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \LUToutRegister_reg[1][0]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \LUToutRegister_reg[1][10]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \LUToutRegister_reg[1][11]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \LUToutRegister_reg[1][12]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \LUToutRegister_reg[1][13]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \LUToutRegister_reg[1][14]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \LUToutRegister_reg[1][15]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \LUToutRegister_reg[1][1]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \LUToutRegister_reg[1][2]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \LUToutRegister_reg[1][3]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \LUToutRegister_reg[1][4]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \LUToutRegister_reg[1][5]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \LUToutRegister_reg[1][6]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \LUToutRegister_reg[1][7]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \LUToutRegister_reg[1][8]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \LUToutRegister_reg[1][9]_i_1\ : label is "soft_lutpair3";
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of \LUToutRegister_reg_reg[0]_0__0\ : label is "p0_d2";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of \LUToutRegister_reg_reg[0]_0__0\ : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of \LUToutRegister_reg_reg[0]_0__0\ : label is 262144;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of \LUToutRegister_reg_reg[0]_0__0\ : label is "U0/u_handmadedds/u_NCO_HDL_Optimized/u_Wave_inst/u_CosineWave_inst/LUToutRegister_reg";
  attribute bram_addr_begin : integer;
  attribute bram_addr_begin of \LUToutRegister_reg_reg[0]_0__0\ : label is 0;
  attribute bram_addr_end : integer;
  attribute bram_addr_end of \LUToutRegister_reg_reg[0]_0__0\ : label is 16383;
  attribute bram_slice_begin : integer;
  attribute bram_slice_begin of \LUToutRegister_reg_reg[0]_0__0\ : label is 0;
  attribute bram_slice_end : integer;
  attribute bram_slice_end of \LUToutRegister_reg_reg[0]_0__0\ : label is 1;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of \LUToutRegister_reg_reg[0]_1\ : label is "p0_d2";
  attribute METHODOLOGY_DRC_VIOS of \LUToutRegister_reg_reg[0]_1\ : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of \LUToutRegister_reg_reg[0]_1\ : label is 262144;
  attribute RTL_RAM_NAME of \LUToutRegister_reg_reg[0]_1\ : label is "U0/u_handmadedds/u_NCO_HDL_Optimized/u_Wave_inst/u_CosineWave_inst/LUToutRegister_reg";
  attribute bram_addr_begin of \LUToutRegister_reg_reg[0]_1\ : label is 0;
  attribute bram_addr_end of \LUToutRegister_reg_reg[0]_1\ : label is 16383;
  attribute bram_slice_begin of \LUToutRegister_reg_reg[0]_1\ : label is 2;
  attribute bram_slice_end of \LUToutRegister_reg_reg[0]_1\ : label is 3;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of \LUToutRegister_reg_reg[0]_2\ : label is "p0_d2";
  attribute METHODOLOGY_DRC_VIOS of \LUToutRegister_reg_reg[0]_2\ : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of \LUToutRegister_reg_reg[0]_2\ : label is 262144;
  attribute RTL_RAM_NAME of \LUToutRegister_reg_reg[0]_2\ : label is "U0/u_handmadedds/u_NCO_HDL_Optimized/u_Wave_inst/u_CosineWave_inst/LUToutRegister_reg";
  attribute bram_addr_begin of \LUToutRegister_reg_reg[0]_2\ : label is 0;
  attribute bram_addr_end of \LUToutRegister_reg_reg[0]_2\ : label is 16383;
  attribute bram_slice_begin of \LUToutRegister_reg_reg[0]_2\ : label is 4;
  attribute bram_slice_end of \LUToutRegister_reg_reg[0]_2\ : label is 5;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of \LUToutRegister_reg_reg[0]_3\ : label is "p0_d2";
  attribute METHODOLOGY_DRC_VIOS of \LUToutRegister_reg_reg[0]_3\ : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of \LUToutRegister_reg_reg[0]_3\ : label is 262144;
  attribute RTL_RAM_NAME of \LUToutRegister_reg_reg[0]_3\ : label is "U0/u_handmadedds/u_NCO_HDL_Optimized/u_Wave_inst/u_CosineWave_inst/LUToutRegister_reg";
  attribute bram_addr_begin of \LUToutRegister_reg_reg[0]_3\ : label is 0;
  attribute bram_addr_end of \LUToutRegister_reg_reg[0]_3\ : label is 16383;
  attribute bram_slice_begin of \LUToutRegister_reg_reg[0]_3\ : label is 6;
  attribute bram_slice_end of \LUToutRegister_reg_reg[0]_3\ : label is 7;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of \LUToutRegister_reg_reg[0]_4\ : label is "p0_d2";
  attribute METHODOLOGY_DRC_VIOS of \LUToutRegister_reg_reg[0]_4\ : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of \LUToutRegister_reg_reg[0]_4\ : label is 262144;
  attribute RTL_RAM_NAME of \LUToutRegister_reg_reg[0]_4\ : label is "U0/u_handmadedds/u_NCO_HDL_Optimized/u_Wave_inst/u_CosineWave_inst/LUToutRegister_reg";
  attribute bram_addr_begin of \LUToutRegister_reg_reg[0]_4\ : label is 0;
  attribute bram_addr_end of \LUToutRegister_reg_reg[0]_4\ : label is 16383;
  attribute bram_slice_begin of \LUToutRegister_reg_reg[0]_4\ : label is 8;
  attribute bram_slice_end of \LUToutRegister_reg_reg[0]_4\ : label is 9;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of \LUToutRegister_reg_reg[0]_5\ : label is "p0_d2";
  attribute METHODOLOGY_DRC_VIOS of \LUToutRegister_reg_reg[0]_5\ : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of \LUToutRegister_reg_reg[0]_5\ : label is 262144;
  attribute RTL_RAM_NAME of \LUToutRegister_reg_reg[0]_5\ : label is "U0/u_handmadedds/u_NCO_HDL_Optimized/u_Wave_inst/u_CosineWave_inst/LUToutRegister_reg";
  attribute bram_addr_begin of \LUToutRegister_reg_reg[0]_5\ : label is 0;
  attribute bram_addr_end of \LUToutRegister_reg_reg[0]_5\ : label is 16383;
  attribute bram_slice_begin of \LUToutRegister_reg_reg[0]_5\ : label is 10;
  attribute bram_slice_end of \LUToutRegister_reg_reg[0]_5\ : label is 11;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of \LUToutRegister_reg_reg[0]_6\ : label is "p0_d2";
  attribute METHODOLOGY_DRC_VIOS of \LUToutRegister_reg_reg[0]_6\ : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of \LUToutRegister_reg_reg[0]_6\ : label is 262144;
  attribute RTL_RAM_NAME of \LUToutRegister_reg_reg[0]_6\ : label is "U0/u_handmadedds/u_NCO_HDL_Optimized/u_Wave_inst/u_CosineWave_inst/LUToutRegister_reg";
  attribute bram_addr_begin of \LUToutRegister_reg_reg[0]_6\ : label is 0;
  attribute bram_addr_end of \LUToutRegister_reg_reg[0]_6\ : label is 16383;
  attribute bram_slice_begin of \LUToutRegister_reg_reg[0]_6\ : label is 12;
  attribute bram_slice_end of \LUToutRegister_reg_reg[0]_6\ : label is 13;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of \LUToutRegister_reg_reg[0]_7\ : label is "p0_d2";
  attribute METHODOLOGY_DRC_VIOS of \LUToutRegister_reg_reg[0]_7\ : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of \LUToutRegister_reg_reg[0]_7\ : label is 262144;
  attribute RTL_RAM_NAME of \LUToutRegister_reg_reg[0]_7\ : label is "U0/u_handmadedds/u_NCO_HDL_Optimized/u_Wave_inst/u_CosineWave_inst/LUToutRegister_reg";
  attribute bram_addr_begin of \LUToutRegister_reg_reg[0]_7\ : label is 0;
  attribute bram_addr_end of \LUToutRegister_reg_reg[0]_7\ : label is 16383;
  attribute bram_slice_begin of \LUToutRegister_reg_reg[0]_7\ : label is 14;
  attribute bram_slice_end of \LUToutRegister_reg_reg[0]_7\ : label is 15;
begin
\LUToutRegister_reg[1][0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \LUToutRegister_reg_reg[0]_0__0_n_35\,
      I1 => \LUToutRegister_reg_reg[1][0]_i_2\,
      O => \LUToutRegister_reg_reg[0]_0\(0)
    );
\LUToutRegister_reg[1][10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \LUToutRegister_reg_reg[0]_5_n_35\,
      I1 => \LUToutRegister_reg_reg[1][0]_i_2\,
      O => \LUToutRegister_reg_reg[0]_0\(10)
    );
\LUToutRegister_reg[1][11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \LUToutRegister_reg_reg[0]_5_n_34\,
      I1 => \LUToutRegister_reg_reg[1][0]_i_2\,
      O => \LUToutRegister_reg_reg[0]_0\(11)
    );
\LUToutRegister_reg[1][12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \LUToutRegister_reg_reg[0]_6_n_35\,
      I1 => \LUToutRegister_reg_reg[1][0]_i_2\,
      O => \LUToutRegister_reg_reg[0]_0\(12)
    );
\LUToutRegister_reg[1][13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \LUToutRegister_reg_reg[0]_6_n_34\,
      I1 => \LUToutRegister_reg_reg[1][0]_i_2\,
      O => \LUToutRegister_reg_reg[0]_0\(13)
    );
\LUToutRegister_reg[1][14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \LUToutRegister_reg_reg[0]_7_n_35\,
      I1 => \LUToutRegister_reg_reg[1][0]_i_2\,
      O => \LUToutRegister_reg_reg[0]_0\(14)
    );
\LUToutRegister_reg[1][15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \LUToutRegister_reg_reg[0]_7_n_34\,
      I1 => \LUToutRegister_reg_reg[1][0]_i_2\,
      O => \LUToutRegister_reg_reg[0]_0\(15)
    );
\LUToutRegister_reg[1][1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \LUToutRegister_reg_reg[0]_0__0_n_34\,
      I1 => \LUToutRegister_reg_reg[1][0]_i_2\,
      O => \LUToutRegister_reg_reg[0]_0\(1)
    );
\LUToutRegister_reg[1][2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \LUToutRegister_reg_reg[0]_1_n_35\,
      I1 => \LUToutRegister_reg_reg[1][0]_i_2\,
      O => \LUToutRegister_reg_reg[0]_0\(2)
    );
\LUToutRegister_reg[1][3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \LUToutRegister_reg_reg[0]_1_n_34\,
      I1 => \LUToutRegister_reg_reg[1][0]_i_2\,
      O => \LUToutRegister_reg_reg[0]_0\(3)
    );
\LUToutRegister_reg[1][4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \LUToutRegister_reg_reg[0]_2_n_35\,
      I1 => \LUToutRegister_reg_reg[1][0]_i_2\,
      O => \LUToutRegister_reg_reg[0]_0\(4)
    );
\LUToutRegister_reg[1][5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \LUToutRegister_reg_reg[0]_2_n_34\,
      I1 => \LUToutRegister_reg_reg[1][0]_i_2\,
      O => \LUToutRegister_reg_reg[0]_0\(5)
    );
\LUToutRegister_reg[1][6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \LUToutRegister_reg_reg[0]_3_n_35\,
      I1 => \LUToutRegister_reg_reg[1][0]_i_2\,
      O => \LUToutRegister_reg_reg[0]_0\(6)
    );
\LUToutRegister_reg[1][7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \LUToutRegister_reg_reg[0]_3_n_34\,
      I1 => \LUToutRegister_reg_reg[1][0]_i_2\,
      O => \LUToutRegister_reg_reg[0]_0\(7)
    );
\LUToutRegister_reg[1][8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \LUToutRegister_reg_reg[0]_4_n_35\,
      I1 => \LUToutRegister_reg_reg[1][0]_i_2\,
      O => \LUToutRegister_reg_reg[0]_0\(8)
    );
\LUToutRegister_reg[1][9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \LUToutRegister_reg_reg[0]_4_n_34\,
      I1 => \LUToutRegister_reg_reg[1][0]_i_2\,
      O => \LUToutRegister_reg_reg[0]_0\(9)
    );
\LUToutRegister_reg_reg[0]_0__0\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"C6B1B06C6B1B06C6B1B06C6B1B06C6B1B06C6F1B16C6F1B16C6F1B16C6F1B16C",
      INIT_01 => X"6C1B1AC6C1B1BC6C5B1BC6C5B1BC6C5B1BC6C5B1BC6C5B1BC6C6B1B06C6B1B06",
      INIT_02 => X"C6B1B06C6B1B06C6B1B16C6F1B16C6F1B16C6F1B16C6C1B1AC6C1B1AC6C1B1AC",
      INIT_03 => X"6B1B06C6F1B16C6F1B16C6F1B1AC6C1B1AC6C1B1BC6C5B1BC6C5B1BC6C5B1B06",
      INIT_04 => X"B1BC6C5B1B06C6B1B06C6F1B16C6F1B1AC6C1B1AC6C1B1BC6C5B1BC6C6B1B06C",
      INIT_05 => X"C6C5B1B06C6B1B16C6F1B1AC6C1B1BC6C5B1B06C6B1B16C6F1B16C6C1B1AC6C1",
      INIT_06 => X"1B16C6C1B1BC6C5B1B06C6F1B16C6C1B1BC6C5B1B06C6B1B16C6F1B1AC6C1B1B",
      INIT_07 => X"6B1B16C6C1B1BC6C6B1B06C6F1B1AC6C5B1B06C6B1B16C6C1B1BC6C5B1B06C6F",
      INIT_08 => X"6B1B16C6C1B1BC6C6B1B16C6C1B1BC6C6B1B16C6C1B1BC6C6B1B16C6C1B1BC6C",
      INIT_09 => X"1B06C6F1B1BC6C6B1B1AC6C5B1B06C6C1B1BC6C6B1B1AC6C5B1B06C6F1B1AC6C",
      INIT_0A => X"C5B1B16C6C5B1B16C6C5B1B06C6C1B1B06C6F1B1BC6C6B1B1AC6C6B1B16C6C5B",
      INIT_0B => X"6C5B1B16C6C5B1B16C6C6B1B1AC6C6B1B1AC6C6B1B1AC6C6B1B1AC6C6B1B1AC6",
      INIT_0C => X"B1B1AC6C6F1B1BC6C6C1B1B16C6C5B1B1AC6C6B1B1BC6C6F1B1B06C6C1B1B06C",
      INIT_0D => X"C6C1B1B16C6C6B1B1B06C6C5B1B1AC6C6F1B1B06C6C5B1B1AC6C6F1B1B06C6C5",
      INIT_0E => X"C5B1B1B06C6C6B1B1B06C6C6B1B1B06C6C6B1B1B06C6C5B1B1BC6C6C5B1B1AC6",
      INIT_0F => X"BC6C6C6B1B1B1AC6C6C5B1B1B06C6C6B1B1B16C6C6C1B1B1AC6C6C5B1B1BC6C6",
      INIT_10 => X"06C6C6C5B1B1B16C6C6C5B1B1B16C6C6C5B1B1B16C6C6C5B1B1B06C6C6C1B1B1",
      INIT_11 => X"1B1B1B1AC6C6C6C1B1B1B1AC6C6C6F1B1B1B16C6C6C6B1B1B1BC6C6C6C1B1B1B",
      INIT_12 => X"1B1B1B16C6C6C6C5B1B1B1B16C6C6C6C1B1B1B1B06C6C6C6F1B1B1B16C6C6C6C",
      INIT_13 => X"C6C6F1B1B1B1B1BC6C6C6C6C6B1B1B1B1B06C6C6C6C6B1B1B1B1BC6C6C6C6C1B",
      INIT_14 => X"1B1B1B1B1B1BC6C6C6C6C6C6B1B1B1B1B1B16C6C6C6C6C6F1B1B1B1B1BC6C6C6",
      INIT_15 => X"6C5B1B1B1B1B1B1B1B16C6C6C6C6C6C6C6C1B1B1B1B1B1B1B06C6C6C6C6C6C6B",
      INIT_16 => X"06C6C6C6C6C6C6C6C6C6C6C6C6F1B1B1B1B1B1B1B1B1B1B06C6C6C6C6C6C6C6C",
      INIT_17 => X"6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C5B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B",
      INIT_18 => X"6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C",
      INIT_19 => X"1B1B1B1B1B1B1B1B1B1B1B1B1B2C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C",
      INIT_1A => X"6C6C6C6C6C6C61B1B1B1B1B1B1B1B1B1B6C6C6C6C6C6C6C6C6C6C6C6C71B1B1B",
      INIT_1B => X"1B186C6C6C6C6C6DB1B1B1B1B1B1B6C6C6C6C6C6C6C71B1B1B1B1B1B1B1C6C6C",
      INIT_1C => X"B1B186C6C6C6C61B1B1B1B186C6C6C6C6CB1B1B1B1B186C6C6C6C6C71B1B1B1B",
      INIT_1D => X"B1B6C6C6C6DB1B1B1B6C6C6C6CB1B1B1B1C6C6C6C61B1B1B1B2C6C6C6C6DB1B1",
      INIT_1E => X"1C6C6C61B1B1B6C6C6C71B1B1B6C6C6C71B1B1B6C6C6C61B1B1B1C6C6C6CB1B1",
      INIT_1F => X"6C6DB1B186C6C61B1B186C6C71B1B1C6C6C61B1B186C6C61B1B1B6C6C6CB1B1B",
      INIT_20 => X"DB1B1C6C6DB1B1C6C6DB1B186C6CB1B186C6C71B1B2C6C6DB1B186C6C71B1B2C",
      INIT_21 => X"1B6C6CB1B1C6C61B1B6C6CB1B1C6C61B1B2C6C71B186C6CB1B186C6DB1B1C6C6",
      INIT_22 => X"C6CB1B2C6CB1B2C6CB1B1C6C71B1C6C71B186C61B1B6C6DB1B2C6C71B1C6C61B",
      INIT_23 => X"CB1B6C61B186C71B1C6CB1B6C6DB1B6C61B186C71B1C6C71B1C6CB1B2C6CB1B2",
      INIT_24 => X"B186CB1B6C61B1C6DB186C71B2C6DB186C71B2C6DB186C71B2C6DB186C71B1C6",
      INIT_25 => X"B2C61B2C61B1C6DB1C6DB186CB186C71B6C61B2C6DB1C6CB186C71B6C61B2C6D",
      INIT_26 => X"1C6DB1C61B2C61B2C61B2C71B6C71B6C71B6C71B6C71B6C71B6C71B6C71B6C61",
      INIT_27 => X"186DB1C61B6C7186CB1C6DB2C61B6C7186CB1C6DB1C61B2C71B6C7186CB186DB",
      INIT_28 => X"7186DB2C7186DB2C7186CB1C61B6CB1C6DB2C7186CB1C61B6C7186DB2C61B6C7",
      INIT_29 => X"6CB1C6186DB2C71861B6CB1C61B6CB2C7186DB2C7186DB2C7186DB2C7186DB2C",
      INIT_2A => X"71861B6CB2C71C6186DB6CB1C71861B6CB2C71C61B6DB2C71861B6CB2C7186DB",
      INIT_2B => X"DB6DB2CB2C71C71C61861B6DB2CB2C71C71861B6DB6CB2C71C6186DB6DB2CB1C",
      INIT_2C => X"CB2CB2CB2CB2C71C71C71C71C6186186186DB6DB6DB2CB2CB2C71C71C6186186",
      INIT_2D => X"1CB2CB2CB2CB2CB2CB2DB6DB6DB6DB6DB6DB6DB6DB6DB6DB6DB6DB6DB6CB2CB2",
      INIT_2E => X"C71CB2CB2DB6DB6D861861C71C71CB2CB2CB6DB6DB6D861861861C71C71C71C7",
      INIT_2F => X"861C72CB2DB61861C72CB2DB6D861C71CB2CB6DB61861C71CB2CB2DB6D861861",
      INIT_30 => X"D861C72CB6D861CB2DB61871CB2DB61871CB2DB61861C72CB6D861C71CB2DB61",
      INIT_31 => X"B2D861CB2D861CB2D861C72DB61C72DB61872CB6D871CB2D861C72DB61871CB2",
      INIT_32 => X"61CB6D872CB61CB2D871CB61872DB61CB2D871CB6D872CB61872DB61C72DB61C",
      INIT_33 => X"72D872DB61CB61CB6D872D871CB61CB6D872D871CB61CB2D872CB61CB6D872DB",
      INIT_34 => X"CB61CB61CB61CB61CB61CB61CB61CB61872D872D872D872DB61CB61CB61CB2D8",
      INIT_35 => X"721CB61CB61CB62D872D872D872D8721CB61CB61CB61CB61CB61CB61CB61CB61",
      INIT_36 => X"62D872DCB61C872D8761CB61D872D8721CB61C872D872D8B61CB61C872D872D8",
      INIT_37 => X"761C872D8B61D8721CB72D8761C872D8B61C872D8B61C872D8B61C872D8761CB",
      INIT_38 => X"CB72DCB72DCB72D8B62D8B61D8761C8721CB72DCB62D8B61D8721CB72DCB62D8",
      INIT_39 => X"62DCB72DC8721C8761D8762D8B62D8B72DCB72DCB72DCB72DC8721C8721CB72D",
      INIT_3A => X"1D8B62DC8761D8B721C8762D8B721C8762D8B72DC8761D8B62DCB721C8761D8B",
      INIT_3B => X"DC8762DC8762DC8762DC8762DC8762DC8762D8B721D8B721D8B62DC8762DCB72",
      INIT_3C => X"1D88762DC8B721D88762DC8B721D8B762DC8762DD8B721D8B721D88762DC8762",
      INIT_3D => X"62DD887621D887721DC87721DC87721DC87721D887621D8B762DD8B722DC8772",
      INIT_3E => X"8B7621DC8B7621DC8B7621D887722DD887621DC8B762DD887621DC8B722DD8B7",
      INIT_3F => X"22DD88B7622DD88B7621DD8877221DC8B7622DD887722DD88B7621DC8B7621DC",
      INIT_40 => X"D88877622DDC8877622DDC8877221DD88B7722DDC8877621DD88B7622DD88B76",
      INIT_41 => X"8B776221DDC88B77622DDD888776221DDC88776221DD88877622DDD88B77221D",
      INIT_42 => X"77772221DDD888B776222DDDC8887772221DDC888777222DDDC88B776221DDC8",
      INIT_43 => X"777722221DDDD8888B77762221DDDC888877772221DDDC888B7772222DDDC888",
      INIT_44 => X"8777777222222DDDDDC8888877777622221DDDDC8888B7777622221DDDD8888B",
      INIT_45 => X"888888B77777777222222221DDDDDDD8888888B77777762222221DDDDDD88888",
      INIT_46 => X"DDDDDDDDDD88888888888888887777777777777222222222221DDDDDDDDDD888",
      INIT_47 => X"222222222222222222222222222222222222222222222222222DDDDDDDDDDDDD",
      INIT_48 => X"77778888888888888888DDDDDDDDDDDDDDDDDDDDDDE222222222222222222222",
      INIT_49 => X"DDDDDDD22222222777777777888888888DDDDDDDDDDE22222222222777777777",
      INIT_4A => X"2237777488888DDDDDE222223777774888889DDDDDE222222377777788888889",
      INIT_4B => X"8889DDDE222377778888DDDD22223777788889DDDD222237777488889DDDDE22",
      INIT_4C => X"D2223774889DDD2227774888DDDE2227774888DDDE22277748889DDD22227774",
      INIT_4D => X"77889DDE22774889DD222774889DDE22777888DDD222777888DDD222777888DD",
      INIT_4E => X"9DD2277489DD2237488DDE2377889DD2277488DDE2277488DDE2277488DDD223",
      INIT_4F => X"237489DE237489DE237489DE227788DD2277889DE237488DD2237489DD227748",
      INIT_50 => X"489D227489DE27789DE23788DE23748DD227789DE23748DD227788DD237489DE",
      INIT_51 => X"9D23789D22748DE27789D23748DE27789D22748DD23788DE27789DE27789D227",
      INIT_52 => X"23789D2348DE2748DE2748DE2789D23789D23789D23789DE2748DE2748DE2748",
      INIT_53 => X"348D2378DE2789D2748D2378DE2789D2748DE3789D2748DE3789D2348DE2749D",
      INIT_54 => X"78D2348D2749D2749E2789E2789E2789E2789E2789E2789E2789E2749D2749D2",
      INIT_55 => X"49E348D2789E348D2789E348D2749E378D2349D2789E378D2349D2789E278DE3",
      INIT_56 => X"8DE349E349E349E278D278D2749E349E378D278DE349E348D278DE349E278D27",
      INIT_57 => X"49E349278D278D278D278D278D278D278D278D278D278D278D278D278D278D27",
      INIT_58 => X"78D349E38D278E349E38D278D349E349278D279E349E349278D278D249E349E3",
      INIT_59 => X"249E38D349E78E349278E349279E34D279E349278E349278D349E38D249E34D2",
      INIT_5A => X"9279E78E38D349249E78E34D349279E38D349279E38D349279E38D349278E34D",
      INIT_5B => X"79E78E38E38E38E34D34D349249249E79E79E38E34D34D249249E79E38E34D34",
      INIT_5C => X"924934D34D34E38E38E38E39E79E79E79E79E79E79E79E79E79E79E79E79E79E",
      INIT_5D => X"24934E38E79E4934D38E39E7924934D34E38E79E4924934D34E38E39E79E7924",
      INIT_5E => X"39E4934E39E4938E7924D38E7924D38E39E4934E39E4924D38E79E4934E38E79",
      INIT_5F => X"3924E3924E3924D39E4D39E4938E7934E7924E39E4938E7934E39E4D38E7924E",
      INIT_60 => X"39E4E3934E4939E4D3924E7934E4938E4D39E4D3924E3924E3924E3924E3924E",
      INIT_61 => X"E4E3938E4E7939E4E7939E4E7939E4E7938E4E3934E4D3924E4939E4E3934E49",
      INIT_62 => X"9E4E4E393934E4E493939E4E4D3939E4E4D3938E4E493934E4E3939E4E493934",
      INIT_63 => X"E4E4E4E4939393934E4E4E49393939E4E4E49393938E4E4E793939E4E4E79393",
      INIT_64 => X"4E49393939393939393924E4E4E4E4E4E493939393939E4E4E4E4E4939393939",
      INIT_65 => X"4E4E4E4E4E4E4E4E4E4E439393939E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E",
      INIT_66 => X"4E4E4F9393939393A4E4E4E4E4E4E439393939393939393E4E4E4E4E4E4E4E4E",
      INIT_67 => X"390E4E4E539393A4E4E4E93939394E4E4E43939393A4E4E4E4F93939393A4E4E",
      INIT_68 => X"E4E439390E4E539394E4E539394E4E539394E4E439393E4E4E939390E4E4E939",
      INIT_69 => X"3A4E5390E4F9394E4393A4E4393A4E5393E4E4393A4E4393A4E4F9390E4E9393",
      INIT_6A => X"4F93E4F93E4F93E4E93A4E9394E5394E4393E4F93A4E5394E4393E4E9394E439",
      INIT_6B => X"4394E93E4F90E4394E93A4F93E4390E5394E53A4E93A4F93E4F93E4F93E4F93E",
      INIT_6C => X"4E93E53A4F94E93E43A4F90E53A4F90E53E4394E93E4394E93A4F90E53A4F90E",
      INIT_6D => X"E90E90E53E53E43A4394F94E90E93E53A4394F94E90E53E43A4F90E93E53A4F9",
      INIT_6E => X"43A43A43A43A43E53E53E53E53E53E53E53E53E53A43A43A43A43A4F94F94F90",
      INIT_6F => X"94F943A53E50E90F94FA43A53E50E90F94F943A43A53E53E90E90E94F94F94FA",
      INIT_70 => X"943A53E94FA53E90FA43E50E943A53E90F943A53E90F943A53E90F943A43E50E",
      INIT_71 => X"53E943E50FA50E943E90FA53E943A50F943E90FA53E94FA50E943A50E943A50E",
      INIT_72 => X"FA50FA50FA50FA50FA50FA50FA53E943E943E943A50FA50FA53E943E94FA50FA",
      INIT_73 => X"43FA50FA543E943E950FA50FA503E943E943E940FA50FA50FA50FA50FA50FA50",
      INIT_74 => X"543FA503E950FA943EA50FE940FA503E940FA503E940FA50FE943EA50FA543E9",
      INIT_75 => X"503EA543FA543FA940FA940FA940FA940FA943FA543FA543EA503E950FE940FA",
      INIT_76 => X"0FEA543FA9503FA540FEA503FA940FEA503FA940FE9503EA543FA940FE950FEA",
      INIT_77 => X"A540FEA9503FA9540FEA540FEA5403FA9503FA9503FA9503FA9503FA940FEA54",
      INIT_78 => X"FAA5403FEA5500FEA9500FEA9500FEA9500FEA9503FEA5503FAA540FEA9503FE",
      INIT_79 => X"FEA95403FFAA5500FFAA55403FEA95403FEA95403FAA5500FFAA5503FEA9540F",
      INIT_7A => X"AA55400FFEAA55400FFEAA55403FFAA95500FFEAA55003FEAA55003FEAA5500F",
      INIT_7B => X"000FFFEAA9554003FFEAA9554003FFEAA955000FFFAA955400FFEAA955003FFE",
      INIT_7C => X"A555540003FFFEAAA955540003FFFAAAA5554000FFFEAAA5554000FFFEAA9555",
      INIT_7D => X"AAAA555555000000FFFFFEAAAAA55555000003FFFFAAAAA555540000FFFFEAAA",
      INIT_7E => X"5555555555550000000000FFFFFFFFFEAAAAAAA9555555540000003FFFFFFEAA",
      INIT_7F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAAAAAAAAAAAAAA",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 2,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 2,
      WRITE_WIDTH_B => 0
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14) => ADDRARDADDR(0),
      ADDRARDADDR(13 downto 0) => B"00000000000000",
      ADDRBWRADDR(15 downto 0) => B"1111111111111111",
      CASCADEINA => '1',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_LUToutRegister_reg_reg[0]_0__0_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_LUToutRegister_reg_reg[0]_0__0_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clk,
      CLKBWRCLK => '0',
      DBITERR => \NLW_LUToutRegister_reg_reg[0]_0__0_DBITERR_UNCONNECTED\,
      DIADI(31 downto 0) => B"00000000000000000000000000000011",
      DIBDI(31 downto 0) => B"11111111111111111111111111111111",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"1111",
      DOADO(31 downto 2) => \NLW_LUToutRegister_reg_reg[0]_0__0_DOADO_UNCONNECTED\(31 downto 2),
      DOADO(1) => \LUToutRegister_reg_reg[0]_0__0_n_34\,
      DOADO(0) => \LUToutRegister_reg_reg[0]_0__0_n_35\,
      DOBDO(31 downto 0) => \NLW_LUToutRegister_reg_reg[0]_0__0_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 0) => \NLW_LUToutRegister_reg_reg[0]_0__0_DOPADOP_UNCONNECTED\(3 downto 0),
      DOPBDOP(3 downto 0) => \NLW_LUToutRegister_reg_reg[0]_0__0_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_LUToutRegister_reg_reg[0]_0__0_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => '1',
      ENBWREN => '0',
      INJECTDBITERR => \NLW_LUToutRegister_reg_reg[0]_0__0_INJECTDBITERR_UNCONNECTED\,
      INJECTSBITERR => \NLW_LUToutRegister_reg_reg[0]_0__0_INJECTSBITERR_UNCONNECTED\,
      RDADDRECC(8 downto 0) => \NLW_LUToutRegister_reg_reg[0]_0__0_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_LUToutRegister_reg_reg[0]_0__0_SBITERR_UNCONNECTED\,
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => B"00000000"
    );
\LUToutRegister_reg_reg[0]_1\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"F93E4390E4394E5394E93A4E93E4F93E4390E4394E5394E93A4E93E4F93E4390",
      INIT_01 => X"3A4E93A4F93E4F90E4390E5394E53A4E93A4F93E4F90E4390E5394E93A4E93E4",
      INIT_02 => X"0E4394E5394E93A4E93E4F93E4390E4394E5394E93A4F93E4F90E4390E5394E5",
      INIT_03 => X"4E93E4F93E4390E4394E5394E93A4F93E4F90E4390E5394E53A4E93A4F93E439",
      INIT_04 => X"4390E5394E93A4E93E4F93E4390E4394E53A4E93A4F93E4F90E4390E5394E93A",
      INIT_05 => X"53A4E93E4F93E4390E4394E53A4E93A4F93E4390E4394E5394E93A4F93E4F90E",
      INIT_06 => X"93E4F90E4390E5394E93A4E93E4F90E4390E5394E93A4E93E4F93E4390E5394E",
      INIT_07 => X"93E4390E5394E53A4E93E4F93E4390E5394E93A4E93E4F90E4390E5394E93A4E",
      INIT_08 => X"93E4390E5394E53A4E93E4F90E4390E5394E93A4F93E4F90E4394E53A4E93A4F",
      INIT_09 => X"93E4F93E4390E5394E93A4F93E4390E5394E53A4E93E4F90E4394E5394E93A4F",
      INIT_0A => X"5394E93A4F93E4390E5394E93A4F93E4390E4394E53A4E93E4F90E4394E53A4E",
      INIT_0B => X"4F93E4390E5394E93A4F93E4390E5394E93A4F93E4390E5394E93A4F93E4390E",
      INIT_0C => X"3E4390E5394E93A4F90E4394E53A4E93E4F90E4394E53A4E93E4390E5394E93A",
      INIT_0D => X"F90E4394E53A4E93E4390E5394E93A4F93E4394E53A4E93E4F90E4394E93A4F9",
      INIT_0E => X"A4E93E4390E5394E93E4F90E4394E93A4F93E4394E53A4E93E4F90E5394E93A4",
      INIT_0F => X"4F90E5394E93E4F90E5394E93E4F90E4394E93A4F90E4394E53A4F93E4390E53",
      INIT_10 => X"390E53A4E93E4390E53A4E93E4390E53A4E93E4390E53A4E93E4390E53A4E93E",
      INIT_11 => X"93E4394E53A4F90E4394E93A4F90E4394E93E4F90E5394E93E4F90E53A4E93E4",
      INIT_12 => X"394E93E4F90E53A4E93E4394E53A4F90E4394E93E4F90E5394E93E4390E53A4F",
      INIT_13 => X"53A4E93E4394E93A4F90E53A4E93E4394E93A4F90E5394E93E4390E53A4F90E4",
      INIT_14 => X"E4394E93E4390E53A4F90E5394E93E4394E93A4F90E53A4E93E4394E93A4F90E",
      INIT_15 => X"3A4E93E4394E93E4394E53A4F90E53A4F90E4394E93E4394E93A4F90E53A4F93",
      INIT_16 => X"4E53A4F90E53A4F90E53A4F90E4394E93E4394E93E4394E93A4F90E53A4F90E5",
      INIT_17 => X"4F90E53A4F90E53A4F90E53A4F90E5394E93E4394E93E4394E93E4394E93E439",
      INIT_18 => X"4F90E53A4F90E53A4F90E53A4F90E53A4F90E53A4F90E53A4F90E53A4F90E53A",
      INIT_19 => X"4E93E4394E93E4394E93E4394E90E53A4F90E53A4F90E53A4F90E53A4F90E53A",
      INIT_1A => X"3A4F90E53A4F94E93E4394E93E4394E93E53A4F90E53A4F90E53A4F90E93E439",
      INIT_1B => X"E43A4F90E53A4F90E93E4394E93E43A4F90E53A4F90E93E4394E93E4394F90E5",
      INIT_1C => X"4394F90E53A4F94E93E4394F90E53A4F90E93E4394E90E53A4F90E53E4394E93",
      INIT_1D => X"E93E53A4F90E93E4394F90E53A4394E93E53A4F90E93E4394E90E53A4F90E93E",
      INIT_1E => X"4F90E53E4394E90E53A4394E93E53A4F94E93E43A4F90E93E4394F90E53A4394",
      INIT_1F => X"90E53E43A4F90E93E43A4F90E93E43A4F90E93E43A4F90E93E4394F90E53E439",
      INIT_20 => X"A4394F90E53E43A4F90E93E53A4F94E90E53A4394E90E53A4394F90E53E4394F",
      INIT_21 => X"E43A4F94E90E53E4394F90E93E53A4394E90E53E43A4F90E93E53A4F94E90E53",
      INIT_22 => X"A4F94E90E53E43A4F94E90E53E43A4F94E90E53E4394F90E93E53A4394F90E93",
      INIT_23 => X"53E43A4394F90E93E53A4394F90E93E53E43A4F94E90E53E43A4F94E90E53E43",
      INIT_24 => X"3E53A4394F94E90E53E53A4394F90E90E53E43A4F94F90E93E53A43A4F94E90E",
      INIT_25 => X"94F94E90E93E53A43A4F94F90E90E53E43A4394F90E90E53E53A4394F94E90E5",
      INIT_26 => X"3A4F94F94E90E93E53E43A4394F94E90E93E53E43A4394F94E90E93E53E43A43",
      INIT_27 => X"4F90E90E93E53E53A43A4F94F94E90E90E53E53A43A4394F94E90E90E53E53A4",
      INIT_28 => X"43A4F94F94F90E90E90E53E53E43A43A4F94F94F90E90E93E53E53A43A4394F9",
      INIT_29 => X"4F94F94F90E90E90E93E53E53E43A43A43A4F94F94F90E90E90E53E53E53A43A",
      INIT_2A => X"3E53E43A43A43A43A4F94F94F94F94E90E90E90E93E53E53E53E43A43A43A4F9",
      INIT_2B => X"A43A43A43A43A43A43A4394F94F94F94F94F94E90E90E90E90E90E53E53E53E5",
      INIT_2C => X"0E90E90E90E90E90E90E90E90E90E90E90E53E53E53E53E53E53E53E53E53E53",
      INIT_2D => X"90E90E90E90E90E90E90E90E90E90E90E90E90E90E90E90E90E90E90E90E90E9",
      INIT_2E => X"A43A43A43A43A43A53E53E53E53E53E53E53E53E53E50E90E90E90E90E90E90E",
      INIT_2F => X"A43A43A43A43E53E53E53E53E50E90E90E90E90E94F94F94F94F94F94FA43A43",
      INIT_30 => X"50E90E90E90F94F94F943A43A43A43E53E53E53E90E90E90E90F94F94F94F943",
      INIT_31 => X"3E50E90E90F94F94FA43A43A43E53E53E90E90E90F94F94FA43A43A43E53E53E",
      INIT_32 => X"94F94FA43A43E53E50E90E94F94F943A43A53E53E50E90E94F94F943A43A43E5",
      INIT_33 => X"E90F94F943A43E53E50E90F94F943A43A53E50E90E94F94FA43A43E53E50E90E",
      INIT_34 => X"F943A43E53E90E94F943A43E53E90E94F94FA43A53E50E90E94F943A43E53E50",
      INIT_35 => X"E94F943A43E53E90F94FA43A53E50E94F943A43E53E90E94F943A43E53E90E94",
      INIT_36 => X"94FA43A53E90F94FA43E53E90F94FA43E53E90F94FA43A53E90E94FA43A53E50",
      INIT_37 => X"3E90F94FA43E50E94F943A53E90F94FA43E50E90F943A53E50E94FA43A53E90E",
      INIT_38 => X"53E90F943A53E90F943A53E90F943A53E90E94FA43E50E94FA43E53E90F943A5",
      INIT_39 => X"94FA43E50F943A53E90F943A53E90F943A53E90F943A53E90FA43E50E94F943A",
      INIT_3A => X"90F943A50E94FA43E90F943A53E94FA43E50E94FA53E90F943A53E94FA43E50E",
      INIT_3B => X"0FA43E50F943A50E94FA53E90FA43E50F943A53E94FA43E90F943A50E94FA43E",
      INIT_3C => X"E50F943A50E943A50E94FA53E94FA43E90FA43E50F943E50E943A50E94FA53E9",
      INIT_3D => X"3E50FA43E90FA43E90FA43E90FA43E90FA43E90FA43E90F943E50F943E50F943",
      INIT_3E => X"0E943E50F943E90FA43E94FA53E94FA50E943A50E943A50F943E50F943E50F94",
      INIT_3F => X"3E50FA43E94FA50E943E50FA43E94FA53E943A50F943E50FA43E94FA53E943A5",
      INIT_40 => X"A50F943E90FA50E943E50FA53E943A50F943E90FA50E943E50FA43E94FA50E94",
      INIT_41 => X"0E943E94FA50F943E94FA50FA43E943A50FA43E943A50FA43E94FA50F943E94F",
      INIT_42 => X"43E943E90FA50F943E943A50FA50E943E94FA50FA43E943A50FA53E943E90FA5",
      INIT_43 => X"43E943E94FA50FA50E943E943E50FA50FA43E943E90FA50FA43E943E90FA50FA",
      INIT_44 => X"0E943E943E943A50FA50FA50E943E943E94FA50FA50F943E943E943A50FA50F9",
      INIT_45 => X"A50FA53E943E943E943E943E50FA50FA50FA50E943E943E943E94FA50FA50FA5",
      INIT_46 => X"FA50FA50FA50FA50FA50FA50FA43E943E943E943E943E943E94FA50FA50FA50F",
      INIT_47 => X"3E943E943E943E943E943E943E943E943E943E943E943E943E90FA50FA50FA50",
      INIT_48 => X"E943FA50FA50FA50FA50FA50FA50FA50FA50FA50FA543E943E943E943E943E94",
      INIT_49 => X"50FA50FE943E943E943E943EA50FA50FA50FA50FA50FE943E943E943E943E943",
      INIT_4A => X"E943E940FA50FA50FA543E943E943EA50FA50FA50FA943E943E943E950FA50FA",
      INIT_4B => X"FA50FA503E943E940FA50FA543E943E940FA50FA503E943E943FA50FA50FA543",
      INIT_4C => X"A943E940FA50FA943E940FA50FA543E943FA50FA503E943EA50FA50FE943E940",
      INIT_4D => X"43FA50FA943EA50FA543E940FA50FA943E950FA503E943EA50FA543E943FA50F",
      INIT_4E => X"A503E940FA503E940FA50FE943FA50FE943FA50FA943EA50FA543E950FA503E9",
      INIT_4F => X"E940FA503E950FA543EA50FA943EA50FE943FA50FE940FA503E940FA503E940F",
      INIT_50 => X"A50FE940FA503E950FA943FA503E950FA943EA50FE940FA543E950FA943FA50F",
      INIT_51 => X"0FE940FA943FA503E950FE940FA543EA503E950FA943FA503E950FA943FA543E",
      INIT_52 => X"943FA543FA503EA50FE950FA940FA943FA543EA503E950FA940FA543FA503EA5",
      INIT_53 => X"950FE940FA940FA940FA943FA543FA543FA503EA503EA50FE950FE950FA940FA",
      INIT_54 => X"40FE950FE950FE950FE950FE950FE950FE950FE950FE950FE950FE950FE950FE",
      INIT_55 => X"FA540FA940FA950FE950FEA503EA503EA543FA543FA543FA940FA940FA940FA9",
      INIT_56 => X"0FA950FEA503FA543FA940FE950FEA503EA543FA540FA950FE950FEA503EA543",
      INIT_57 => X"0FA9503EA543FA940FE9503EA543FA940FE9503EA543FA940FE9503EA543FA94",
      INIT_58 => X"EA540FA9503EA540FA9503EA540FA9503EA543FA950FEA543FA940FEA503FA54",
      INIT_59 => X"40FA9503FA540FEA543FA9503EA540FE9503FA940FEA543FA950FEA540FA9503",
      INIT_5A => X"543FA9503FA9503FA540FEA540FE9503FA9503EA540FEA543FA9503FA940FEA5",
      INIT_5B => X"40FEA540FEA540FEA540FEA540FEA503FA9503FA9503FA9503FA540FEA540FEA",
      INIT_5C => X"FEA540FEA540FEA540FEA540FEA540FEA540FEA540FEA540FEA540FEA540FEA5",
      INIT_5D => X"40FEA540FEA5503FA9503FA9540FEA540FEA540FFA9503FA9503FA9503FA9540",
      INIT_5E => X"40FFA9503FAA540FEA9503FA9540FEA540FFA9503FAA540FEA540FFA9503FA95",
      INIT_5F => X"3FEA5403FA9540FEA5503FAA540FEA9503FEA540FFA9503FEA540FFA9503FEA5",
      INIT_60 => X"9500FEA9500FEA5503FEA5403FAA540FFA9500FEA9503FEA5403FA9540FEA950",
      INIT_61 => X"AA5403FAA5403FAA5403FAA5403FAA5403FAA5403FAA5403FAA540FFA9540FFA",
      INIT_62 => X"A5500FEA9540FFAA5403FAA5503FEA5500FEA9500FFA9540FFA9540FFAA5403F",
      INIT_63 => X"00FFAA5503FEA9540FFAA5503FEA9500FFAA5403FEA5500FEA9540FFAA5403FE",
      INIT_64 => X"A5503FEA95403FEA95403FAA5500FFAA5503FEA95403FAA5500FFAA5403FEA95",
      INIT_65 => X"A5500FFAA5500FFAA55003FEA9540FFAA5500FFAA5500FFAA5500FFAA5500FFA",
      INIT_66 => X"500FFAA95403FEA95500FFAA5500FFEA95403FEA95403FEAA5500FFAA5500FFA",
      INIT_67 => X"EAA5500FFEA95400FFAA55403FEAA5500FFEA95403FFAA5500FFEA95403FFAA5",
      INIT_68 => X"FFAA95400FFAA95400FFAA95400FFAA95400FFAA95403FFAA55403FFAA55003F",
      INIT_69 => X"EAA55400FFAA955003FEAA55403FFAA95400FFEA955003FEAA55003FFAA55403",
      INIT_6A => X"5003FFAA955003FFAA955003FFAA955003FEAA55400FFEAA55403FFAA955003F",
      INIT_6B => X"A955003FFAAA55400FFEAA554003FFAA955003FFAA955003FFAA955003FFAA95",
      INIT_6C => X"A554003FFAAA554003FFAAA55400FFFAA955400FFEAA955003FFAAA55400FFFA",
      INIT_6D => X"000FFFAA9554003FFEAA555000FFEAA955400FFFAAA554003FFAAA554003FFAA",
      INIT_6E => X"A9554003FFEAA9554003FFEAA9554003FFEAA9554003FFEAA955400FFFAAA555",
      INIT_6F => X"AA5554003FFFAAA5550003FFEAAA555000FFFEAA9554003FFFAAA555000FFFAA",
      INIT_70 => X"554003FFFAAA95550003FFFAAA9554000FFFEAA95550003FFEAAA5554003FFFA",
      INIT_71 => X"FEAAA95550000FFFEAAA55540003FFFAAA95550003FFFAAAA5554000FFFEAAA5",
      INIT_72 => X"FFFFAAAA55550000FFFFAAAA55540003FFFEAAA95550000FFFEAAA95550000FF",
      INIT_73 => X"FEAAAA555540003FFFFAAAA555540003FFFEAAAA55550000FFFFAAAA55550000",
      INIT_74 => X"55400003FFFFAAAA9555500000FFFFEAAAA555540000FFFFAAAA9555500003FF",
      INIT_75 => X"AA95555400003FFFFFAAAAA5555500000FFFFEAAAA95555400003FFFFAAAAA55",
      INIT_76 => X"A555554000003FFFFFAAAAA955555000003FFFFFAAAAA95555400000FFFFFAAA",
      INIT_77 => X"0000FFFFFFEAAAAAA5555550000003FFFFFEAAAAA9555554000003FFFFFAAAAA",
      INIT_78 => X"55555540000000FFFFFFFAAAAAAA55555550000003FFFFFFEAAAAAA555555400",
      INIT_79 => X"5555555400000000FFFFFFFFEAAAAAAA9555555540000000FFFFFFFEAAAAAAA5",
      INIT_7A => X"0000000FFFFFFFFFFAAAAAAAAA95555555550000000003FFFFFFFFEAAAAAAAA5",
      INIT_7B => X"AAA5555555555554000000000003FFFFFFFFFFFAAAAAAAAAAA55555555554000",
      INIT_7C => X"AAAAAAAAA9555555555555555400000000000000FFFFFFFFFFFFFFAAAAAAAAAA",
      INIT_7D => X"55555555555555550000000000000000000003FFFFFFFFFFFFFFFFFFAAAAAAAA",
      INIT_7E => X"FFFFFFFFFFFFFFFFFFFFFFAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA9555555555",
      INIT_7F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 2,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 2,
      WRITE_WIDTH_B => 0
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14) => ADDRARDADDR(0),
      ADDRARDADDR(13 downto 0) => B"00000000000000",
      ADDRBWRADDR(15 downto 0) => B"1111111111111111",
      CASCADEINA => '1',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_LUToutRegister_reg_reg[0]_1_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_LUToutRegister_reg_reg[0]_1_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clk,
      CLKBWRCLK => '0',
      DBITERR => \NLW_LUToutRegister_reg_reg[0]_1_DBITERR_UNCONNECTED\,
      DIADI(31 downto 0) => B"00000000000000000000000000000011",
      DIBDI(31 downto 0) => B"11111111111111111111111111111111",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"1111",
      DOADO(31 downto 2) => \NLW_LUToutRegister_reg_reg[0]_1_DOADO_UNCONNECTED\(31 downto 2),
      DOADO(1) => \LUToutRegister_reg_reg[0]_1_n_34\,
      DOADO(0) => \LUToutRegister_reg_reg[0]_1_n_35\,
      DOBDO(31 downto 0) => \NLW_LUToutRegister_reg_reg[0]_1_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 0) => \NLW_LUToutRegister_reg_reg[0]_1_DOPADOP_UNCONNECTED\(3 downto 0),
      DOPBDOP(3 downto 0) => \NLW_LUToutRegister_reg_reg[0]_1_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_LUToutRegister_reg_reg[0]_1_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => '1',
      ENBWREN => '0',
      INJECTDBITERR => \NLW_LUToutRegister_reg_reg[0]_1_INJECTDBITERR_UNCONNECTED\,
      INJECTSBITERR => \NLW_LUToutRegister_reg_reg[0]_1_INJECTSBITERR_UNCONNECTED\,
      RDADDRECC(8 downto 0) => \NLW_LUToutRegister_reg_reg[0]_1_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_LUToutRegister_reg_reg[0]_1_SBITERR_UNCONNECTED\,
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => B"00000000"
    );
\LUToutRegister_reg_reg[0]_2\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"003FFEAA55400FFEAA55400FFEAA554003FFAA955003FFAA955003FFAA955400",
      INIT_01 => X"955003FFAA955000FFEAA55400FFEAA55400FFEAA555003FFAA955003FFAA955",
      INIT_02 => X"FAA955003FFAA955003FFAA955400FFEAA55400FFEAA55400FFFAA955003FFAA",
      INIT_03 => X"0FFEAA554003FFAA955003FFAA955003FFAAA55400FFEAA55400FFEAA554003F",
      INIT_04 => X"5400FFEAA55400FFEAA554003FFAA955003FFAA955003FFAAA55400FFEAA5540",
      INIT_05 => X"A955003FFAA955400FFEAA55400FFEAA554003FFAA955003FFAA955003FFAAA5",
      INIT_06 => X"FEAA555003FFAA955003FFAA955000FFEAA55400FFEAA55400FFEAA955003FFA",
      INIT_07 => X"03FFEAA55400FFEAA55400FFEAA955003FFAA955003FFAAA55400FFEAA55400F",
      INIT_08 => X"54003FFAA955003FFAA955000FFEAA55400FFEAA55400FFFAA955003FFAA9550",
      INIT_09 => X"A955003FFEAA55400FFEAA554003FFAA955003FFAA955000FFEAA55400FFEAA5",
      INIT_0A => X"FEAA55400FFEAA955003FFAA955003FFEAA55400FFEAA55400FFFAA955003FFA",
      INIT_0B => X"0FFEAA955003FFAA955003FFEAA55400FFEAA554003FFAA955003FFAA955400F",
      INIT_0C => X"4003FFAA955003FFAAA55400FFEAA55400FFFAA955003FFAA955400FFEAA5540",
      INIT_0D => X"555003FFAA955003FFEAA55400FFEAA554003FFAA955003FFAAA55400FFEAA55",
      INIT_0E => X"AA554003FFAA955003FFAAA55400FFEAA554003FFAA955003FFAAA55400FFEAA",
      INIT_0F => X"FAAA55400FFEAA555003FFAA955000FFEAA55400FFFAA955003FFAA955400FFE",
      INIT_10 => X"3FFAA955003FFEAA55400FFEAA955003FFAA955400FFEAA554003FFAA955003F",
      INIT_11 => X"03FFEAA55400FFFAA955003FFAAA55400FFEAA555003FFAA955000FFEAA55400",
      INIT_12 => X"400FFEAA555003FFAA955400FFEAA555003FFAA955000FFEAA554003FFAA9550",
      INIT_13 => X"5400FFEAA955003FFAAA55400FFEAA955003FFAAA55400FFEAA955003FFAAA55",
      INIT_14 => X"55400FFEAA955003FFAAA55400FFEAA955003FFAAA55400FFEAA955003FFAAA5",
      INIT_15 => X"955003FFEAA554003FFAA955000FFEAA555003FFAA955400FFEAA555003FFAA9",
      INIT_16 => X"A55400FFFAA955000FFEAA555003FFAA955400FFEAA955003FFAAA55400FFFAA",
      INIT_17 => X"A555003FFAAA55400FFFAA955000FFEAA554003FFAA955400FFEAA955003FFEA",
      INIT_18 => X"A555003FFAAA55400FFFAA955000FFEAA555003FFAAA55400FFFAA955000FFEA",
      INIT_19 => X"A554003FFAA955400FFEAA955000FFEAA555003FFAAA55400FFFAA955000FFEA",
      INIT_1A => X"955000FFEAA555003FFEAA554003FFAA955400FFFAA955000FFEAA555003FFEA",
      INIT_1B => X"55400FFFAA955000FFEAA955003FFEAA555003FFAAA554003FFAA955400FFFAA",
      INIT_1C => X"5400FFFAA955000FFEAA955000FFEAA555003FFEAA555003FFAAA554003FFAA9",
      INIT_1D => X"003FFEAA555003FFEAA555003FFEAA554003FFAAA554003FFAAA55400FFFAA95",
      INIT_1E => X"0FFFAA955400FFFAA955400FFEAA955000FFEAA955000FFEAA955000FFEAA955",
      INIT_1F => X"FFAA955400FFFAA955400FFFAA955400FFFAA955400FFFAA955400FFFAA95540",
      INIT_20 => X"AA955000FFEAA955000FFEAA955000FFFAA955400FFFAA955400FFFAA955400F",
      INIT_21 => X"55400FFFAAA554003FFAAA554003FFEAA555003FFEAA555003FFEAA555000FFE",
      INIT_22 => X"00FFFAAA554003FFAAA555003FFEAA555000FFEAA955000FFEAA955400FFFAA9",
      INIT_23 => X"FEAA955400FFFAA9554003FFAAA554003FFEAA555000FFEAA955000FFFAA9554",
      INIT_24 => X"9554003FFAAA555003FFEAA955000FFFAA955400FFFAAA554003FFEAA555000F",
      INIT_25 => X"00FFFAAA554003FFEAA555000FFFAA9554003FFAAA555003FFEAA955000FFFAA",
      INIT_26 => X"EAA555000FFFAA9554003FFEAA555000FFEAA9554003FFAAA555003FFEAA9554",
      INIT_27 => X"5000FFFAA9554003FFEAA555000FFFAAA554003FFEAA955000FFFAAA554003FF",
      INIT_28 => X"FEAA555000FFFAAA555003FFEAA955400FFFAAA555000FFEAA9554003FFEAA55",
      INIT_29 => X"5000FFFAAA555000FFEAA9554003FFEAA955000FFFAAA555000FFEAA9554003F",
      INIT_2A => X"EAA9554003FFEAA955000FFFAAA555000FFFAAA554003FFEAA9554003FFEAA55",
      INIT_2B => X"003FFEAA9554003FFEAA955000FFFAAA555000FFFAAA555000FFFAA9554003FF",
      INIT_2C => X"A555000FFFAAA555000FFFAAA555000FFFAA9554003FFEAA9554003FFEAA9554",
      INIT_2D => X"FFAAA555000FFFAAA555000FFFAAA555000FFFAAA555000FFFAAA555000FFFAA",
      INIT_2E => X"003FFEAA9554003FFEAA9554003FFEAA9554003FFEAAA555000FFFAAA555000F",
      INIT_2F => X"554003FFEAA9554003FFEAA9555000FFFAAA555000FFFAAA555000FFFAAA9554",
      INIT_30 => X"AA555000FFFAAA5550003FFEAA9554003FFEAA9555000FFFAAA555000FFFAAA9",
      INIT_31 => X"EAAA555000FFFAAA5554003FFEAA9554000FFFAAA555000FFFEAA9554003FFEA",
      INIT_32 => X"FFAAA5554003FFEAAA555000FFFAAA9554003FFEAAA555000FFFAAA9554003FF",
      INIT_33 => X"FFFAAA5554003FFEAAA555000FFFEAA9554000FFFAAA5550003FFEAA9555000F",
      INIT_34 => X"FFFEAA9554000FFFAAA9554003FFFAAA5550003FFEAAA555000FFFEAA9554000",
      INIT_35 => X"FFFAAA9554003FFFAAA5554003FFFAAA5554003FFEAAA5550003FFEAA9555000",
      INIT_36 => X"FFAAA9554000FFFAAA9554000FFFAAA9554000FFFAAA9554000FFFAAA9554000",
      INIT_37 => X"EAAA5550003FFFAAA5554003FFFAAA5554000FFFAAA9554000FFFAAA9554000F",
      INIT_38 => X"A95550003FFEAAA5554003FFFAAA9554000FFFAAA9555000FFFEAA95550003FF",
      INIT_39 => X"550003FFFAAA9554000FFFEAA95550003FFEAAA5554003FFFAAA9555000FFFEA",
      INIT_3A => X"00FFFEAAA5550003FFFAAA9554000FFFEAAA5550003FFFAAA9554000FFFEAAA5",
      INIT_3B => X"FAAA95550003FFFAAA5554000FFFEAAA5554003FFFAAA95550003FFFAAA55540",
      INIT_3C => X"5550003FFFAAA9555000FFFEAAA5554000FFFEAAA5554000FFFEAAA5550003FF",
      INIT_3D => X"3FFFAAA95550003FFFAAA95550003FFFAAA95550003FFFAAA95550003FFFAAA9",
      INIT_3E => X"A5554000FFFEAAA5554000FFFEAAA55550003FFFAAA95550003FFFAAA9555000",
      INIT_3F => X"3FFFAAA95550000FFFEAAA5554000FFFEAAA95550003FFFAAA95550003FFFEAA",
      INIT_40 => X"5550003FFFAAAA5554000FFFEAAA95550003FFFAAAA5554000FFFEAAA5555000",
      INIT_41 => X"FAAA95550000FFFEAAA55550003FFFEAAA55540003FFFAAA95550000FFFEAAA5",
      INIT_42 => X"03FFFEAAA55550003FFFEAAA55550003FFFAAAA55540003FFFAAA95554000FFF",
      INIT_43 => X"540003FFFAAAA55550003FFFEAAA55550003FFFEAAA55550003FFFEAAA555500",
      INIT_44 => X"A55540003FFFEAAA55550000FFFEAAA95550000FFFFAAA955540003FFFAAAA55",
      INIT_45 => X"AAA55540003FFFEAAA95554000FFFFAAAA55550003FFFEAAA95550000FFFFAAA",
      INIT_46 => X"AAAA55550000FFFFAAAA55550003FFFEAAA955540003FFFEAAA55550000FFFFA",
      INIT_47 => X"EAAA955540003FFFEAAA955540003FFFEAAA955540003FFFEAAA55550000FFFF",
      INIT_48 => X"AAA955550000FFFFAAAA55550000FFFFAAAA555500003FFFEAAA955540003FFF",
      INIT_49 => X"AA555500003FFFEAAA955540000FFFFAAAA55550000FFFFEAAA955540003FFFE",
      INIT_4A => X"55540000FFFFAAAA555540003FFFEAAAA55550000FFFFEAAA955540000FFFFAA",
      INIT_4B => X"0000FFFFEAAA955550000FFFFEAAA955550000FFFFEAAA955540000FFFFAAAA9",
      INIT_4C => X"FFFEAAAA555500003FFFFAAAA555540003FFFFAAAA955540000FFFFAAAA95555",
      INIT_4D => X"A9555500003FFFFAAAA955550000FFFFEAAAA555540003FFFFAAAA955540000F",
      INIT_4E => X"0003FFFFAAAA955550000FFFFEAAAA555540000FFFFEAAAA555540000FFFFEAA",
      INIT_4F => X"AAAA555540000FFFFEAAAA555540000FFFFEAAAA5555500003FFFFAAAA955550",
      INIT_50 => X"000FFFFFAAAA9555500003FFFFEAAAA555540000FFFFFAAAA9555500003FFFFA",
      INIT_51 => X"A5555500003FFFFEAAAA5555500003FFFFEAAAA5555400003FFFFAAAA9555540",
      INIT_52 => X"FFEAAAA9555540000FFFFFAAAAA5555400003FFFFEAAAA5555500003FFFFEAAA",
      INIT_53 => X"000FFFFFAAAAA5555500003FFFFEAAAA95555400003FFFFAAAAA5555500000FF",
      INIT_54 => X"5500000FFFFFAAAAA5555500000FFFFFAAAAA5555500000FFFFFAAAAA5555500",
      INIT_55 => X"5555500000FFFFFAAAAA55555400003FFFFEAAAA95555400000FFFFFAAAAA555",
      INIT_56 => X"A55555000003FFFFEAAAAA55555000003FFFFEAAAAA5555500000FFFFFEAAAA9",
      INIT_57 => X"A55555400003FFFFFAAAAA95555400000FFFFFEAAAA955555000003FFFFEAAAA",
      INIT_58 => X"55555000003FFFFFAAAAA955555000003FFFFEAAAAA55555400000FFFFFEAAAA",
      INIT_59 => X"55000003FFFFFAAAAA955555400000FFFFFEAAAAA55555400000FFFFFFAAAAA9",
      INIT_5A => X"003FFFFFEAAAAA955555000000FFFFFEAAAAA955555000003FFFFFEAAAAA5555",
      INIT_5B => X"FFAAAAAA555555000000FFFFFFAAAAA9555554000003FFFFFEAAAAA555555000",
      INIT_5C => X"555555000000FFFFFFAAAAAA555555000000FFFFFFAAAAAA555555000000FFFF",
      INIT_5D => X"00FFFFFFAAAAAA9555554000000FFFFFFAAAAAA5555554000003FFFFFEAAAAAA",
      INIT_5E => X"AA5555554000000FFFFFFEAAAAAA5555550000003FFFFFFAAAAAA55555540000",
      INIT_5F => X"3FFFFFFEAAAAAA5555554000000FFFFFFEAAAAAA5555554000000FFFFFFEAAAA",
      INIT_60 => X"55550000000FFFFFFEAAAAAA95555550000000FFFFFFEAAAAAA9555555000000",
      INIT_61 => X"AAAAA955555540000003FFFFFFEAAAAAA955555540000003FFFFFFAAAAAAA555",
      INIT_62 => X"FFFFFAAAAAAA555555540000003FFFFFFFAAAAAAA55555550000000FFFFFFFEA",
      INIT_63 => X"00FFFFFFFEAAAAAAA555555540000000FFFFFFFEAAAAAAA555555500000003FF",
      INIT_64 => X"00003FFFFFFFEAAAAAAA9555555500000003FFFFFFFEAAAAAAA5555555400000",
      INIT_65 => X"00000FFFFFFFFAAAAAAAA9555555500000000FFFFFFFFAAAAAAAA55555555000",
      INIT_66 => X"000FFFFFFFFEAAAAAAAA55555555000000003FFFFFFFEAAAAAAAA55555555000",
      INIT_67 => X"FFFFFFFAAAAAAAAA55555555400000000FFFFFFFFEAAAAAAAA55555555400000",
      INIT_68 => X"AAAAAAAAA555555555000000000FFFFFFFFFAAAAAAAA9555555554000000003F",
      INIT_69 => X"555555550000000003FFFFFFFFEAAAAAAAAA5555555554000000003FFFFFFFFE",
      INIT_6A => X"0003FFFFFFFFFEAAAAAAAAA95555555554000000000FFFFFFFFFEAAAAAAAAA95",
      INIT_6B => X"AAAAAA9555555555500000000003FFFFFFFFFEAAAAAAAAA95555555554000000",
      INIT_6C => X"0000003FFFFFFFFFFEAAAAAAAAAA5555555555500000000003FFFFFFFFFFAAAA",
      INIT_6D => X"AAA55555555555400000000000FFFFFFFFFFFAAAAAAAAAAA9555555555540000",
      INIT_6E => X"FFFFFFFEAAAAAAAAAAA9555555555554000000000003FFFFFFFFFFFAAAAAAAAA",
      INIT_6F => X"000000003FFFFFFFFFFFFEAAAAAAAAAAAA5555555555554000000000000FFFFF",
      INIT_70 => X"55555400000000000003FFFFFFFFFFFFFAAAAAAAAAAAAA955555555555540000",
      INIT_71 => X"5555555555555000000000000003FFFFFFFFFFFFFEAAAAAAAAAAAAAA55555555",
      INIT_72 => X"55555555555555550000000000000003FFFFFFFFFFFFFFFAAAAAAAAAAAAAAA55",
      INIT_73 => X"55555555555555400000000000000003FFFFFFFFFFFFFFFFAAAAAAAAAAAAAAAA",
      INIT_74 => X"55555554000000000000000000FFFFFFFFFFFFFFFFFFAAAAAAAAAAAAAAAAA955",
      INIT_75 => X"0000000000003FFFFFFFFFFFFFFFFFFFFAAAAAAAAAAAAAAAAAAA955555555555",
      INIT_76 => X"FFFFFFFFFFFFEAAAAAAAAAAAAAAAAAAAAA955555555555555555555500000000",
      INIT_77 => X"AAAA55555555555555555555555554000000000000000000000003FFFFFFFFFF",
      INIT_78 => X"00000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFEAAAAAAAAAAAAAAAAAAAAAA",
      INIT_79 => X"AAAAAAAAAAAAAAAA555555555555555555555555555555550000000000000000",
      INIT_7A => X"0000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAAAAAAAAAAAAAAAAAA",
      INIT_7B => X"5555555555555555555555555554000000000000000000000000000000000000",
      INIT_7C => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA555555555555555555555555",
      INIT_7D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_7E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_7F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 2,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 2,
      WRITE_WIDTH_B => 0
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14) => ADDRARDADDR(0),
      ADDRARDADDR(13 downto 0) => B"00000000000000",
      ADDRBWRADDR(15 downto 0) => B"1111111111111111",
      CASCADEINA => '1',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_LUToutRegister_reg_reg[0]_2_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_LUToutRegister_reg_reg[0]_2_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clk,
      CLKBWRCLK => '0',
      DBITERR => \NLW_LUToutRegister_reg_reg[0]_2_DBITERR_UNCONNECTED\,
      DIADI(31 downto 0) => B"00000000000000000000000000000011",
      DIBDI(31 downto 0) => B"11111111111111111111111111111111",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"1111",
      DOADO(31 downto 2) => \NLW_LUToutRegister_reg_reg[0]_2_DOADO_UNCONNECTED\(31 downto 2),
      DOADO(1) => \LUToutRegister_reg_reg[0]_2_n_34\,
      DOADO(0) => \LUToutRegister_reg_reg[0]_2_n_35\,
      DOBDO(31 downto 0) => \NLW_LUToutRegister_reg_reg[0]_2_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 0) => \NLW_LUToutRegister_reg_reg[0]_2_DOPADOP_UNCONNECTED\(3 downto 0),
      DOPBDOP(3 downto 0) => \NLW_LUToutRegister_reg_reg[0]_2_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_LUToutRegister_reg_reg[0]_2_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => '1',
      ENBWREN => '0',
      INJECTDBITERR => \NLW_LUToutRegister_reg_reg[0]_2_INJECTDBITERR_UNCONNECTED\,
      INJECTSBITERR => \NLW_LUToutRegister_reg_reg[0]_2_INJECTSBITERR_UNCONNECTED\,
      RDADDRECC(8 downto 0) => \NLW_LUToutRegister_reg_reg[0]_2_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_LUToutRegister_reg_reg[0]_2_SBITERR_UNCONNECTED\,
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => B"00000000"
    );
\LUToutRegister_reg_reg[0]_3\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"AA955555555550000000000FFFFFFFFFFEAAAAAAAAA955555555540000000000",
      INIT_01 => X"000003FFFFFFFFFFAAAAAAAAAA555555555500000000003FFFFFFFFFEAAAAAAA",
      INIT_02 => X"AAAAAAAA955555555540000000000FFFFFFFFFFAAAAAAAAAA555555555540000",
      INIT_03 => X"500000000003FFFFFFFFFEAAAAAAAAA955555555550000000000FFFFFFFFFFEA",
      INIT_04 => X"FFFFAAAAAAAAAA555555555540000000003FFFFFFFFFEAAAAAAAAAA555555555",
      INIT_05 => X"55555540000000000FFFFFFFFFFAAAAAAAAAA955555555540000000003FFFFFF",
      INIT_06 => X"FFFFFFFFFEAAAAAAAAA955555555550000000000FFFFFFFFFFAAAAAAAAAA9555",
      INIT_07 => X"A955555555550000000000FFFFFFFFFFEAAAAAAAAA955555555550000000000F",
      INIT_08 => X"00003FFFFFFFFFEAAAAAAAAAA55555555550000000000FFFFFFFFFFEAAAAAAAA",
      INIT_09 => X"AAAAAA9555555555500000000003FFFFFFFFFEAAAAAAAAAA5555555555000000",
      INIT_0A => X"000000000FFFFFFFFFFEAAAAAAAAA955555555550000000000FFFFFFFFFFEAAA",
      INIT_0B => X"FAAAAAAAAAA955555555540000000000FFFFFFFFFFEAAAAAAAAA955555555550",
      INIT_0C => X"55540000000003FFFFFFFFFFAAAAAAAAAA555555555540000000000FFFFFFFFF",
      INIT_0D => X"FFFFFEAAAAAAAAA9555555555500000000003FFFFFFFFFEAAAAAAAAAA5555555",
      INIT_0E => X"555555540000000003FFFFFFFFFFAAAAAAAAAA955555555540000000000FFFFF",
      INIT_0F => X"FFFFFFFFFAAAAAAAAAA955555555550000000000FFFFFFFFFFEAAAAAAAAAA555",
      INIT_10 => X"955555555540000000000FFFFFFFFFFEAAAAAAAAAA555555555540000000003F",
      INIT_11 => X"03FFFFFFFFFFAAAAAAAAAA9555555555500000000003FFFFFFFFFFAAAAAAAAAA",
      INIT_12 => X"AAA555555555540000000000FFFFFFFFFFEAAAAAAAAAA5555555555400000000",
      INIT_13 => X"0000FFFFFFFFFFEAAAAAAAAAA555555555540000000000FFFFFFFFFFEAAAAAAA",
      INIT_14 => X"AAAAA555555555540000000000FFFFFFFFFFEAAAAAAAAAA55555555554000000",
      INIT_15 => X"000003FFFFFFFFFFEAAAAAAAAAA555555555540000000000FFFFFFFFFFEAAAAA",
      INIT_16 => X"AAAAAA5555555555500000000003FFFFFFFFFFAAAAAAAAAA9555555555500000",
      INIT_17 => X"0000003FFFFFFFFFFAAAAAAAAAAA555555555540000000000FFFFFFFFFFEAAAA",
      INIT_18 => X"AAAAAA9555555555500000000000FFFFFFFFFFEAAAAAAAAAA555555555550000",
      INIT_19 => X"0000003FFFFFFFFFFAAAAAAAAAAA555555555540000000000FFFFFFFFFFFAAAA",
      INIT_1A => X"AAAAAA5555555555400000000003FFFFFFFFFFAAAAAAAAAAA555555555540000",
      INIT_1B => X"00000FFFFFFFFFFFAAAAAAAAAA95555555555400000000003FFFFFFFFFFAAAAA",
      INIT_1C => X"AAAA5555555555500000000000FFFFFFFFFFEAAAAAAAAAA95555555555400000",
      INIT_1D => X"003FFFFFFFFFFEAAAAAAAAAA95555555555400000000003FFFFFFFFFFAAAAAAA",
      INIT_1E => X"A5555555555500000000000FFFFFFFFFFFAAAAAAAAAAA5555555555500000000",
      INIT_1F => X"FFFFFFFFFFAAAAAAAAAAA5555555555500000000000FFFFFFFFFFFAAAAAAAAAA",
      INIT_20 => X"5555555500000000000FFFFFFFFFFFAAAAAAAAAAA5555555555500000000000F",
      INIT_21 => X"FFFFFAAAAAAAAAAA95555555555400000000003FFFFFFFFFFEAAAAAAAAAAA555",
      INIT_22 => X"55000000000003FFFFFFFFFFEAAAAAAAAAAA5555555555500000000000FFFFFF",
      INIT_23 => X"AAAAAAAAAA55555555555400000000003FFFFFFFFFFFAAAAAAAAAAA555555555",
      INIT_24 => X"0000003FFFFFFFFFFEAAAAAAAAAAA55555555555000000000003FFFFFFFFFFFA",
      INIT_25 => X"AA55555555555400000000000FFFFFFFFFFFEAAAAAAAAAA95555555555500000",
      INIT_26 => X"FFFFFFFFFAAAAAAAAAAA955555555555000000000003FFFFFFFFFFEAAAAAAAAA",
      INIT_27 => X"5555000000000003FFFFFFFFFFFAAAAAAAAAAA955555555555000000000003FF",
      INIT_28 => X"AAAAAAAAAA55555555555400000000000FFFFFFFFFFFFAAAAAAAAAAA95555555",
      INIT_29 => X"0000FFFFFFFFFFFFAAAAAAAAAAA955555555555000000000000FFFFFFFFFFFEA",
      INIT_2A => X"555555555400000000000FFFFFFFFFFFFAAAAAAAAAAA95555555555540000000",
      INIT_2B => X"FFEAAAAAAAAAAA955555555555000000000000FFFFFFFFFFFFAAAAAAAAAAA955",
      INIT_2C => X"0000000FFFFFFFFFFFFAAAAAAAAAAAA555555555554000000000003FFFFFFFFF",
      INIT_2D => X"55555555555000000000000FFFFFFFFFFFFAAAAAAAAAAAA55555555555500000",
      INIT_2E => X"FFEAAAAAAAAAAA9555555555554000000000003FFFFFFFFFFFFAAAAAAAAAAAA5",
      INIT_2F => X"000003FFFFFFFFFFFEAAAAAAAAAAAA555555555555000000000000FFFFFFFFFF",
      INIT_30 => X"555555550000000000003FFFFFFFFFFFEAAAAAAAAAAAA5555555555550000000",
      INIT_31 => X"AAAAAAAAAA5555555555554000000000000FFFFFFFFFFFFAAAAAAAAAAAA95555",
      INIT_32 => X"FFFFFFFFFFFEAAAAAAAAAAAA5555555555554000000000000FFFFFFFFFFFFEAA",
      INIT_33 => X"0000000000003FFFFFFFFFFFFAAAAAAAAAAAAA5555555555554000000000000F",
      INIT_34 => X"55555555555550000000000003FFFFFFFFFFFFEAAAAAAAAAAAA5555555555555",
      INIT_35 => X"AAAAAAAAAAAA955555555555540000000000003FFFFFFFFFFFFEAAAAAAAAAAAA",
      INIT_36 => X"FFFFFFFFFFFFAAAAAAAAAAAAA55555555555550000000000000FFFFFFFFFFFFF",
      INIT_37 => X"00000000003FFFFFFFFFFFFEAAAAAAAAAAAAA55555555555550000000000000F",
      INIT_38 => X"5555555540000000000003FFFFFFFFFFFFFAAAAAAAAAAAAA5555555555555400",
      INIT_39 => X"AAAAA9555555555555500000000000003FFFFFFFFFFFFEAAAAAAAAAAAAA55555",
      INIT_3A => X"FFAAAAAAAAAAAAA9555555555555500000000000003FFFFFFFFFFFFFAAAAAAAA",
      INIT_3B => X"FFFFFFFFFFFEAAAAAAAAAAAAA5555555555555400000000000003FFFFFFFFFFF",
      INIT_3C => X"0000003FFFFFFFFFFFFFAAAAAAAAAAAAAA5555555555555500000000000003FF",
      INIT_3D => X"400000000000003FFFFFFFFFFFFFEAAAAAAAAAAAAA9555555555555540000000",
      INIT_3E => X"5555555500000000000000FFFFFFFFFFFFFFEAAAAAAAAAAAAA95555555555555",
      INIT_3F => X"95555555555555500000000000000FFFFFFFFFFFFFFEAAAAAAAAAAAAA9555555",
      INIT_40 => X"AAAAAA955555555555555000000000000003FFFFFFFFFFFFFFAAAAAAAAAAAAAA",
      INIT_41 => X"AAAAAAAAAAAA555555555555554000000000000003FFFFFFFFFFFFFFAAAAAAAA",
      INIT_42 => X"FEAAAAAAAAAAAAAA9555555555555554000000000000003FFFFFFFFFFFFFFAAA",
      INIT_43 => X"FFFFFEAAAAAAAAAAAAAA9555555555555554000000000000003FFFFFFFFFFFFF",
      INIT_44 => X"FFFFFFFFEAAAAAAAAAAAAAAA5555555555555550000000000000003FFFFFFFFF",
      INIT_45 => X"FFFFFFFFFFEAAAAAAAAAAAAAAA5555555555555554000000000000000FFFFFFF",
      INIT_46 => X"FFFFFFFFFFFFAAAAAAAAAAAAAAA95555555555555554000000000000000FFFFF",
      INIT_47 => X"FFFFFFFFFFFFEAAAAAAAAAAAAAAA95555555555555554000000000000000FFFF",
      INIT_48 => X"FFFFFFFFFFFFAAAAAAAAAAAAAAAA555555555555555540000000000000003FFF",
      INIT_49 => X"FFFFFFFFFFEAAAAAAAAAAAAAAAA555555555555555500000000000000003FFFF",
      INIT_4A => X"FFFFFFFFAAAAAAAAAAAAAAAA9555555555555555500000000000000000FFFFFF",
      INIT_4B => X"FFFFAAAAAAAAAAAAAAAAA5555555555555555500000000000000000FFFFFFFFF",
      INIT_4C => X"AAAAAAAAAAAAAAAA95555555555555555400000000000000000FFFFFFFFFFFFF",
      INIT_4D => X"AAAAAAAAAA955555555555555555000000000000000003FFFFFFFFFFFFFFFFFA",
      INIT_4E => X"AAA955555555555555555000000000000000000FFFFFFFFFFFFFFFFFFAAAAAAA",
      INIT_4F => X"5555555555555000000000000000000FFFFFFFFFFFFFFFFFFEAAAAAAAAAAAAAA",
      INIT_50 => X"5550000000000000000003FFFFFFFFFFFFFFFFFFAAAAAAAAAAAAAAAAAA955555",
      INIT_51 => X"00000000003FFFFFFFFFFFFFFFFFFEAAAAAAAAAAAAAAAAAA9555555555555555",
      INIT_52 => X"FFFFFFFFFFFFFFFFFAAAAAAAAAAAAAAAAAAA9555555555555555555400000000",
      INIT_53 => X"FFFAAAAAAAAAAAAAAAAAAA9555555555555555555540000000000000000000FF",
      INIT_54 => X"AAAAAAA5555555555555555555500000000000000000000FFFFFFFFFFFFFFFFF",
      INIT_55 => X"5555555555000000000000000000003FFFFFFFFFFFFFFFFFFFFAAAAAAAAAAAAA",
      INIT_56 => X"000000000003FFFFFFFFFFFFFFFFFFFFEAAAAAAAAAAAAAAAAAAAA55555555555",
      INIT_57 => X"FFFFFFFFFFFEAAAAAAAAAAAAAAAAAAAAA5555555555555555555554000000000",
      INIT_58 => X"AAAAAAAAAA95555555555555555555554000000000000000000000FFFFFFFFFF",
      INIT_59 => X"555555540000000000000000000000FFFFFFFFFFFFFFFFFFFFFFAAAAAAAAAAAA",
      INIT_5A => X"003FFFFFFFFFFFFFFFFFFFFFFFAAAAAAAAAAAAAAAAAAAAAA9555555555555555",
      INIT_5B => X"AAAAAAAAAAAAAAAAAAAA55555555555555555555555400000000000000000000",
      INIT_5C => X"555555555555000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFAAAA",
      INIT_5D => X"00FFFFFFFFFFFFFFFFFFFFFFFFFAAAAAAAAAAAAAAAAAAAAAAAA9555555555555",
      INIT_5E => X"AAAAAAAAAAAAAAA5555555555555555555555555400000000000000000000000",
      INIT_5F => X"400000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFAAAAAAAAAAA",
      INIT_60 => X"FFFFFFFFFFFAAAAAAAAAAAAAAAAAAAAAAAAAAA55555555555555555555555555",
      INIT_61 => X"555555555555555555540000000000000000000000000003FFFFFFFFFFFFFFFF",
      INIT_62 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFEAAAAAAAAAAAAAAAAAAAAAAAAAAAA555555555",
      INIT_63 => X"AA555555555555555555555555555555000000000000000000000000000003FF",
      INIT_64 => X"00003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_65 => X"AAAAA55555555555555555555555555555555000000000000000000000000000",
      INIT_66 => X"000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_67 => X"5555555555555555555555555555555550000000000000000000000000000000",
      INIT_68 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA95",
      INIT_69 => X"5555555555555555540000000000000000000000000000000000003FFFFFFFFF",
      INIT_6A => X"FFFEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA555555555555555555555",
      INIT_6B => X"0000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_6C => X"AAAAAA9555555555555555555555555555555555555555555400000000000000",
      INIT_6D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_6E => X"00000000000000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFF",
      INIT_6F => X"AAAAAAAA95555555555555555555555555555555555555555555555555500000",
      INIT_70 => X"FFFFFFFFFFFFFFFFFFFEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_71 => X"0000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_72 => X"5555555555555555555555555555555400000000000000000000000000000000",
      INIT_73 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA955555555555555555555555555555555",
      INIT_74 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_75 => X"0000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"5555555555555555555555555555555555555555555555555555540000000000",
      INIT_78 => X"AAAAAAAAAAAAAA55555555555555555555555555555555555555555555555555",
      INIT_79 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_7A => X"FFFFFFFAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_7B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_7C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_7D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_7E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_7F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 2,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 2,
      WRITE_WIDTH_B => 0
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14) => ADDRARDADDR(0),
      ADDRARDADDR(13 downto 0) => B"00000000000000",
      ADDRBWRADDR(15 downto 0) => B"1111111111111111",
      CASCADEINA => '1',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_LUToutRegister_reg_reg[0]_3_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_LUToutRegister_reg_reg[0]_3_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clk,
      CLKBWRCLK => '0',
      DBITERR => \NLW_LUToutRegister_reg_reg[0]_3_DBITERR_UNCONNECTED\,
      DIADI(31 downto 0) => B"00000000000000000000000000000011",
      DIBDI(31 downto 0) => B"11111111111111111111111111111111",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"1111",
      DOADO(31 downto 2) => \NLW_LUToutRegister_reg_reg[0]_3_DOADO_UNCONNECTED\(31 downto 2),
      DOADO(1) => \LUToutRegister_reg_reg[0]_3_n_34\,
      DOADO(0) => \LUToutRegister_reg_reg[0]_3_n_35\,
      DOBDO(31 downto 0) => \NLW_LUToutRegister_reg_reg[0]_3_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 0) => \NLW_LUToutRegister_reg_reg[0]_3_DOPADOP_UNCONNECTED\(3 downto 0),
      DOPBDOP(3 downto 0) => \NLW_LUToutRegister_reg_reg[0]_3_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_LUToutRegister_reg_reg[0]_3_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => '1',
      ENBWREN => '0',
      INJECTDBITERR => \NLW_LUToutRegister_reg_reg[0]_3_INJECTDBITERR_UNCONNECTED\,
      INJECTSBITERR => \NLW_LUToutRegister_reg_reg[0]_3_INJECTSBITERR_UNCONNECTED\,
      RDADDRECC(8 downto 0) => \NLW_LUToutRegister_reg_reg[0]_3_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_LUToutRegister_reg_reg[0]_3_SBITERR_UNCONNECTED\,
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => B"00000000"
    );
\LUToutRegister_reg_reg[0]_4\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"5555555555555555555555500000000000000000000000000000000000000000",
      INIT_01 => X"FFFFFEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA955555555555555555",
      INIT_02 => X"00000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_03 => X"AAAAAAAAAAA95555555555555555555555555555555555555555000000000000",
      INIT_04 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_05 => X"5555555555555555500000000000000000000000000000000000000003FFFFFF",
      INIT_06 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA555555555555555555555555",
      INIT_07 => X"0000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA",
      INIT_08 => X"AAAA955555555555555555555555555555555555555550000000000000000000",
      INIT_09 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_0A => X"55555555500000000000000000000000000000000000000000FFFFFFFFFFFFFF",
      INIT_0B => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA55555555555555555555555555555555",
      INIT_0C => X"00000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAAAAAAAAA",
      INIT_0D => X"5555555555555555555555555555555555554000000000000000000000000000",
      INIT_0E => X"FFFFFFFFFFFFFFFFFEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA55555",
      INIT_0F => X"0000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_10 => X"AAAAAAAAAAAAAAAAAAAAA5555555555555555555555555555555555555555540",
      INIT_11 => X"03FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAAAAAAAAAAAAAAAAAAAA",
      INIT_12 => X"5555555555555555555555550000000000000000000000000000000000000000",
      INIT_13 => X"FFFFAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA555555555555555555",
      INIT_14 => X"00000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_15 => X"AAAAA95555555555555555555555555555555555555555550000000000000000",
      INIT_16 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_17 => X"5555554000000000000000000000000000000000000000000FFFFFFFFFFFFFFF",
      INIT_18 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAA555555555555555555555555555555555555",
      INIT_19 => X"0000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAAAAAAAAAAAAAAA",
      INIT_1A => X"5555555555555555555555555554000000000000000000000000000000000000",
      INIT_1B => X"FFFFFAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA9555555555555555",
      INIT_1C => X"00000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_1D => X"AA95555555555555555555555555555555555555555555400000000000000000",
      INIT_1E => X"FFFFFFFFFFFFFFFFFFFFFFFAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_1F => X"0000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFF",
      INIT_20 => X"AAAAAAAAAAAAAAAAAAA555555555555555555555555555555555555555555550",
      INIT_21 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_22 => X"5555555555555400000000000000000000000000000000000000000000FFFFFF",
      INIT_23 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA95555555555555555555555555555555",
      INIT_24 => X"0000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAAAAAAAAAAAA",
      INIT_25 => X"5555555555555555555555555000000000000000000000000000000000000000",
      INIT_26 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA955555555555555555555",
      INIT_27 => X"0000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAA",
      INIT_28 => X"5555555555555555555555555555555550000000000000000000000000000000",
      INIT_29 => X"FFFFAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA5555555555555",
      INIT_2A => X"000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_2B => X"5555555555555555555555555555555555555500000000000000000000000000",
      INIT_2C => X"FFFFFFFAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA9555555555",
      INIT_2D => X"00000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_2E => X"5555555555555555555555555555555555555540000000000000000000000000",
      INIT_2F => X"FFFFFEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA5555555555",
      INIT_30 => X"000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_31 => X"5555555555555555555555555555555555500000000000000000000000000000",
      INIT_32 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA555555555555555",
      INIT_33 => X"0000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA",
      INIT_34 => X"5555555555555555555555555400000000000000000000000000000000000000",
      INIT_35 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA95555555555555555555555555",
      INIT_36 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAAAAAAAAAAAAA",
      INIT_37 => X"555555555540000000000000000000000000000000000000000000000000000F",
      INIT_38 => X"AAAAAAAAAAAAAAAAAAAAA9555555555555555555555555555555555555555555",
      INIT_39 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_3A => X"0000000000000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFF",
      INIT_3B => X"5555555555555555555555555555555555555555555555555555400000000000",
      INIT_3C => X"FFFFFFEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA955",
      INIT_3D => X"000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_3E => X"5555555555555555555555000000000000000000000000000000000000000000",
      INIT_3F => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAA55555555555555555555555555555555555",
      INIT_40 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_41 => X"000000000000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFF",
      INIT_42 => X"5555555555555555555555555555555555555555555555400000000000000000",
      INIT_43 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA95555555555555",
      INIT_44 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAAAAAAAAA",
      INIT_45 => X"000000000000000000000000000000000000000000000000000000000FFFFFFF",
      INIT_46 => X"5555555555555555555555555555555555555555555555555555555555500000",
      INIT_47 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA5555",
      INIT_48 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAAA",
      INIT_49 => X"000000000000000000000000000000000000000000000000000000000003FFFF",
      INIT_4A => X"5555555555555555555555555555555555555555555555555555555555000000",
      INIT_4B => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA555555555",
      INIT_4C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAAAAAAAAAAAAA",
      INIT_4D => X"0000000000000000000000000000000000000000000003FFFFFFFFFFFFFFFFFF",
      INIT_4E => X"5555555555555555555555555555555555555550000000000000000000000000",
      INIT_4F => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA555555555555555555555555555555555",
      INIT_50 => X"FFFFFFFFFFFFFFFFFFFFFEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_51 => X"00000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"5555555555555555555555555555555555555555555555555555555555555500",
      INIT_54 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA55555555555555555",
      INIT_55 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_56 => X"000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"5555555555555555555555555555555555555555555555555555550000000000",
      INIT_59 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAA5555555555555555555555555555555555",
      INIT_5A => X"FFEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_5B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_5C => X"000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_5D => X"5500000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"5555555555555555555555555555555555555555555555555555555555555555",
      INIT_5F => X"AAAAAAAAAAAAAAAAAAAAAAAAAAA5555555555555555555555555555555555555",
      INIT_60 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_61 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAAAAAAAAAAAAAAAA",
      INIT_62 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_63 => X"00000000000000000000000000000000000000000000000000000000000003FF",
      INIT_64 => X"5555400000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"5555555555555555555555555555555555555555555555555555555555555555",
      INIT_66 => X"AAA5555555555555555555555555555555555555555555555555555555555555",
      INIT_67 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_68 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_69 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAAAAAAAAA",
      INIT_6A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_6B => X"0000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"5555555555555555555555555555555555555555555400000000000000000000",
      INIT_6F => X"5555555555555555555555555555555555555555555555555555555555555555",
      INIT_70 => X"5555555555555555555555555555555555555555555555555555555555555555",
      INIT_71 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAA9555555555555555555555555555555555555",
      INIT_72 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_73 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_74 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_75 => X"FFFFFFFFFFFFEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_76 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_77 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_78 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_79 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_7A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_7B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_7C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_7D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_7E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_7F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 2,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 2,
      WRITE_WIDTH_B => 0
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14) => ADDRARDADDR(0),
      ADDRARDADDR(13 downto 0) => B"00000000000000",
      ADDRBWRADDR(15 downto 0) => B"1111111111111111",
      CASCADEINA => '1',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_LUToutRegister_reg_reg[0]_4_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_LUToutRegister_reg_reg[0]_4_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clk,
      CLKBWRCLK => '0',
      DBITERR => \NLW_LUToutRegister_reg_reg[0]_4_DBITERR_UNCONNECTED\,
      DIADI(31 downto 0) => B"00000000000000000000000000000011",
      DIBDI(31 downto 0) => B"11111111111111111111111111111111",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"1111",
      DOADO(31 downto 2) => \NLW_LUToutRegister_reg_reg[0]_4_DOADO_UNCONNECTED\(31 downto 2),
      DOADO(1) => \LUToutRegister_reg_reg[0]_4_n_34\,
      DOADO(0) => \LUToutRegister_reg_reg[0]_4_n_35\,
      DOBDO(31 downto 0) => \NLW_LUToutRegister_reg_reg[0]_4_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 0) => \NLW_LUToutRegister_reg_reg[0]_4_DOPADOP_UNCONNECTED\(3 downto 0),
      DOPBDOP(3 downto 0) => \NLW_LUToutRegister_reg_reg[0]_4_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_LUToutRegister_reg_reg[0]_4_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => '1',
      ENBWREN => '0',
      INJECTDBITERR => \NLW_LUToutRegister_reg_reg[0]_4_INJECTDBITERR_UNCONNECTED\,
      INJECTSBITERR => \NLW_LUToutRegister_reg_reg[0]_4_INJECTSBITERR_UNCONNECTED\,
      RDADDRECC(8 downto 0) => \NLW_LUToutRegister_reg_reg[0]_4_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_LUToutRegister_reg_reg[0]_4_SBITERR_UNCONNECTED\,
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => B"00000000"
    );
\LUToutRegister_reg_reg[0]_5\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"5555555555555555555555555555500000000000000000000000000000000000",
      INIT_03 => X"5555555555555555555555555555555555555555555555555555555555555555",
      INIT_04 => X"5555555555555555555555555555555555555555555555555555555555555555",
      INIT_05 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA9555555",
      INIT_06 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_07 => X"FFFFFFFFFFFFFFFFFFFFFFAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_08 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_09 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0A => X"00000000000000000000000000000000000000000000000000FFFFFFFFFFFFFF",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"5555555555555400000000000000000000000000000000000000000000000000",
      INIT_0D => X"5555555555555555555555555555555555555555555555555555555555555555",
      INIT_0E => X"5555555555555555555555555555555555555555555555555555555555555555",
      INIT_0F => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA555555555555555555555555",
      INIT_10 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_11 => X"FEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_12 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_13 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_14 => X"00000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"5555555555555555555555555555555555555555555555555000000000000000",
      INIT_18 => X"5555555555555555555555555555555555555555555555555555555555555555",
      INIT_19 => X"AAAAAA9555555555555555555555555555555555555555555555555555555555",
      INIT_1A => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_1B => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_1C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_1D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_1E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_1F => X"0000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFF",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"5555555555555555555555555555555555555555555555555555555555000000",
      INIT_23 => X"5555555555555555555555555555555555555555555555555555555555555555",
      INIT_24 => X"AAAAAA9555555555555555555555555555555555555555555555555555555555",
      INIT_25 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_26 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_27 => X"FFFFFFFFFFFFFFFEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_28 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_29 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_2A => X"000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"5555555555555555555555500000000000000000000000000000000000000000",
      INIT_2E => X"5555555555555555555555555555555555555555555555555555555555555555",
      INIT_2F => X"5555555555555555555555555555555555555555555555555555555555555555",
      INIT_30 => X"AAAAAAAAAAAAAAAAAAAA95555555555555555555555555555555555555555555",
      INIT_31 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_32 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_33 => X"FFFFFFFFFFFFEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_34 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_35 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_36 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_37 => X"000000000000000000000000000000000000000000000000000000000000000F",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"5555555555555555555555555555555555555555554000000000000000000000",
      INIT_3B => X"5555555555555555555555555555555555555555555555555555555555555555",
      INIT_3C => X"5555555555555555555555555555555555555555555555555555555555555555",
      INIT_3D => X"AAAAAAAAAAAAAA95555555555555555555555555555555555555555555555555",
      INIT_3E => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_3F => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_40 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_41 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAAAAAAAAAAAAAAAAAAAAAA",
      INIT_42 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_43 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_44 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_45 => X"000000000000000000000000000000000000000000000000000000000FFFFFFF",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"5555555555555555555555555555555555555555555555555555555555540000",
      INIT_4A => X"5555555555555555555555555555555555555555555555555555555555555555",
      INIT_4B => X"5555555555555555555555555555555555555555555555555555555555555555",
      INIT_4C => X"5555555555555555555555555555555555555555555555555555555555555555",
      INIT_4D => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA9555555555555555555",
      INIT_4E => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_4F => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_50 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_51 => X"FFFFFFFFFFEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_52 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_53 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_54 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_55 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_56 => X"000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"5555555555555555555555555555555555550000000000000000000000000000",
      INIT_5D => X"5555555555555555555555555555555555555555555555555555555555555555",
      INIT_5E => X"5555555555555555555555555555555555555555555555555555555555555555",
      INIT_5F => X"5555555555555555555555555555555555555555555555555555555555555555",
      INIT_60 => X"5555555555555555555555555555555555555555555555555555555555555555",
      INIT_61 => X"5555555555555555555555555555555555555555555555555555555555555555",
      INIT_62 => X"5555555555555555555555555555555555555555555555555555555555555555",
      INIT_63 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA955",
      INIT_64 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_65 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_66 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_67 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_68 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_69 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_6A => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_6B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_6C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_6D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_6E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_6F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_70 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_71 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_72 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_73 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_74 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_75 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_76 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_77 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_78 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_79 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_7A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_7B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_7C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_7D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_7E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_7F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 2,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 2,
      WRITE_WIDTH_B => 0
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14) => ADDRARDADDR(0),
      ADDRARDADDR(13 downto 0) => B"00000000000000",
      ADDRBWRADDR(15 downto 0) => B"1111111111111111",
      CASCADEINA => '1',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_LUToutRegister_reg_reg[0]_5_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_LUToutRegister_reg_reg[0]_5_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clk,
      CLKBWRCLK => '0',
      DBITERR => \NLW_LUToutRegister_reg_reg[0]_5_DBITERR_UNCONNECTED\,
      DIADI(31 downto 0) => B"00000000000000000000000000000011",
      DIBDI(31 downto 0) => B"11111111111111111111111111111111",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"1111",
      DOADO(31 downto 2) => \NLW_LUToutRegister_reg_reg[0]_5_DOADO_UNCONNECTED\(31 downto 2),
      DOADO(1) => \LUToutRegister_reg_reg[0]_5_n_34\,
      DOADO(0) => \LUToutRegister_reg_reg[0]_5_n_35\,
      DOBDO(31 downto 0) => \NLW_LUToutRegister_reg_reg[0]_5_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 0) => \NLW_LUToutRegister_reg_reg[0]_5_DOPADOP_UNCONNECTED\(3 downto 0),
      DOPBDOP(3 downto 0) => \NLW_LUToutRegister_reg_reg[0]_5_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_LUToutRegister_reg_reg[0]_5_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => '1',
      ENBWREN => '0',
      INJECTDBITERR => \NLW_LUToutRegister_reg_reg[0]_5_INJECTDBITERR_UNCONNECTED\,
      INJECTSBITERR => \NLW_LUToutRegister_reg_reg[0]_5_INJECTSBITERR_UNCONNECTED\,
      RDADDRECC(8 downto 0) => \NLW_LUToutRegister_reg_reg[0]_5_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_LUToutRegister_reg_reg[0]_5_SBITERR_UNCONNECTED\,
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => B"00000000"
    );
\LUToutRegister_reg_reg[0]_6\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"5555555555555555555555555555555555555555555555555500000000000000",
      INIT_0B => X"5555555555555555555555555555555555555555555555555555555555555555",
      INIT_0C => X"5555555555555555555555555555555555555555555555555555555555555555",
      INIT_0D => X"5555555555555555555555555555555555555555555555555555555555555555",
      INIT_0E => X"5555555555555555555555555555555555555555555555555555555555555555",
      INIT_0F => X"5555555555555555555555555555555555555555555555555555555555555555",
      INIT_10 => X"5555555555555555555555555555555555555555555555555555555555555555",
      INIT_11 => X"5555555555555555555555555555555555555555555555555555555555555555",
      INIT_12 => X"5555555555555555555555555555555555555555555555555555555555555555",
      INIT_13 => X"5555555555555555555555555555555555555555555555555555555555555555",
      INIT_14 => X"AAAAAAAAAAAAAAAAAAAAAAAAAA55555555555555555555555555555555555555",
      INIT_15 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_16 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_17 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_18 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_19 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_1A => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_1B => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_1C => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_1D => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_1E => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_1F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAAAAAAAAAAAAAAAAAAAAA",
      INIT_20 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_21 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_22 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_23 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_24 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_25 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_26 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_27 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_28 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_29 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_2A => X"000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"5555555555555555555555555555555555555555555555555555555555555550",
      INIT_38 => X"5555555555555555555555555555555555555555555555555555555555555555",
      INIT_39 => X"5555555555555555555555555555555555555555555555555555555555555555",
      INIT_3A => X"5555555555555555555555555555555555555555555555555555555555555555",
      INIT_3B => X"5555555555555555555555555555555555555555555555555555555555555555",
      INIT_3C => X"5555555555555555555555555555555555555555555555555555555555555555",
      INIT_3D => X"5555555555555555555555555555555555555555555555555555555555555555",
      INIT_3E => X"5555555555555555555555555555555555555555555555555555555555555555",
      INIT_3F => X"5555555555555555555555555555555555555555555555555555555555555555",
      INIT_40 => X"5555555555555555555555555555555555555555555555555555555555555555",
      INIT_41 => X"5555555555555555555555555555555555555555555555555555555555555555",
      INIT_42 => X"5555555555555555555555555555555555555555555555555555555555555555",
      INIT_43 => X"5555555555555555555555555555555555555555555555555555555555555555",
      INIT_44 => X"5555555555555555555555555555555555555555555555555555555555555555",
      INIT_45 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA5555555",
      INIT_46 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_47 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_48 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_49 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_4A => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_4B => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_4C => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_4D => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_4E => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_4F => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_50 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_51 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_52 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_53 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_54 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_55 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_56 => X"FFFFFFFFFFFEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_57 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_58 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_59 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_5A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_5B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_5C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_5D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_5E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_5F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_60 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_61 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_62 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_63 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_64 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_65 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_66 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_67 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_68 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_69 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_6A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_6B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_6C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_6D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_6E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_6F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_70 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_71 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_72 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_73 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_74 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_75 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_76 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_77 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_78 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_79 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_7A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_7B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_7C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_7D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_7E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_7F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 2,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 2,
      WRITE_WIDTH_B => 0
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14) => ADDRARDADDR(0),
      ADDRARDADDR(13 downto 0) => B"00000000000000",
      ADDRBWRADDR(15 downto 0) => B"1111111111111111",
      CASCADEINA => '1',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_LUToutRegister_reg_reg[0]_6_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_LUToutRegister_reg_reg[0]_6_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clk,
      CLKBWRCLK => '0',
      DBITERR => \NLW_LUToutRegister_reg_reg[0]_6_DBITERR_UNCONNECTED\,
      DIADI(31 downto 0) => B"00000000000000000000000000000011",
      DIBDI(31 downto 0) => B"11111111111111111111111111111111",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"1111",
      DOADO(31 downto 2) => \NLW_LUToutRegister_reg_reg[0]_6_DOADO_UNCONNECTED\(31 downto 2),
      DOADO(1) => \LUToutRegister_reg_reg[0]_6_n_34\,
      DOADO(0) => \LUToutRegister_reg_reg[0]_6_n_35\,
      DOBDO(31 downto 0) => \NLW_LUToutRegister_reg_reg[0]_6_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 0) => \NLW_LUToutRegister_reg_reg[0]_6_DOPADOP_UNCONNECTED\(3 downto 0),
      DOPBDOP(3 downto 0) => \NLW_LUToutRegister_reg_reg[0]_6_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_LUToutRegister_reg_reg[0]_6_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => '1',
      ENBWREN => '0',
      INJECTDBITERR => \NLW_LUToutRegister_reg_reg[0]_6_INJECTDBITERR_UNCONNECTED\,
      INJECTSBITERR => \NLW_LUToutRegister_reg_reg[0]_6_INJECTSBITERR_UNCONNECTED\,
      RDADDRECC(8 downto 0) => \NLW_LUToutRegister_reg_reg[0]_6_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_LUToutRegister_reg_reg[0]_6_SBITERR_UNCONNECTED\,
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => B"00000000"
    );
\LUToutRegister_reg_reg[0]_7\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"5555555555555555555550000000000000000000000000000000000000000000",
      INIT_2B => X"5555555555555555555555555555555555555555555555555555555555555555",
      INIT_2C => X"5555555555555555555555555555555555555555555555555555555555555555",
      INIT_2D => X"5555555555555555555555555555555555555555555555555555555555555555",
      INIT_2E => X"5555555555555555555555555555555555555555555555555555555555555555",
      INIT_2F => X"5555555555555555555555555555555555555555555555555555555555555555",
      INIT_30 => X"5555555555555555555555555555555555555555555555555555555555555555",
      INIT_31 => X"5555555555555555555555555555555555555555555555555555555555555555",
      INIT_32 => X"5555555555555555555555555555555555555555555555555555555555555555",
      INIT_33 => X"5555555555555555555555555555555555555555555555555555555555555555",
      INIT_34 => X"5555555555555555555555555555555555555555555555555555555555555555",
      INIT_35 => X"5555555555555555555555555555555555555555555555555555555555555555",
      INIT_36 => X"5555555555555555555555555555555555555555555555555555555555555555",
      INIT_37 => X"5555555555555555555555555555555555555555555555555555555555555555",
      INIT_38 => X"5555555555555555555555555555555555555555555555555555555555555555",
      INIT_39 => X"5555555555555555555555555555555555555555555555555555555555555555",
      INIT_3A => X"5555555555555555555555555555555555555555555555555555555555555555",
      INIT_3B => X"5555555555555555555555555555555555555555555555555555555555555555",
      INIT_3C => X"5555555555555555555555555555555555555555555555555555555555555555",
      INIT_3D => X"5555555555555555555555555555555555555555555555555555555555555555",
      INIT_3E => X"5555555555555555555555555555555555555555555555555555555555555555",
      INIT_3F => X"5555555555555555555555555555555555555555555555555555555555555555",
      INIT_40 => X"5555555555555555555555555555555555555555555555555555555555555555",
      INIT_41 => X"5555555555555555555555555555555555555555555555555555555555555555",
      INIT_42 => X"5555555555555555555555555555555555555555555555555555555555555555",
      INIT_43 => X"5555555555555555555555555555555555555555555555555555555555555555",
      INIT_44 => X"5555555555555555555555555555555555555555555555555555555555555555",
      INIT_45 => X"5555555555555555555555555555555555555555555555555555555555555555",
      INIT_46 => X"5555555555555555555555555555555555555555555555555555555555555555",
      INIT_47 => X"5555555555555555555555555555555555555555555555555555555555555555",
      INIT_48 => X"5555555555555555555555555555555555555555555555555555555555555555",
      INIT_49 => X"5555555555555555555555555555555555555555555555555555555555555555",
      INIT_4A => X"5555555555555555555555555555555555555555555555555555555555555555",
      INIT_4B => X"5555555555555555555555555555555555555555555555555555555555555555",
      INIT_4C => X"5555555555555555555555555555555555555555555555555555555555555555",
      INIT_4D => X"5555555555555555555555555555555555555555555555555555555555555555",
      INIT_4E => X"5555555555555555555555555555555555555555555555555555555555555555",
      INIT_4F => X"5555555555555555555555555555555555555555555555555555555555555555",
      INIT_50 => X"5555555555555555555555555555555555555555555555555555555555555555",
      INIT_51 => X"5555555555555555555555555555555555555555555555555555555555555555",
      INIT_52 => X"5555555555555555555555555555555555555555555555555555555555555555",
      INIT_53 => X"5555555555555555555555555555555555555555555555555555555555555555",
      INIT_54 => X"5555555555555555555555555555555555555555555555555555555555555555",
      INIT_55 => X"5555555555555555555555555555555555555555555555555555555555555555",
      INIT_56 => X"5555555555555555555555555555555555555555555555555555555555555555",
      INIT_57 => X"5555555555555555555555555555555555555555555555555555555555555555",
      INIT_58 => X"5555555555555555555555555555555555555555555555555555555555555555",
      INIT_59 => X"5555555555555555555555555555555555555555555555555555555555555555",
      INIT_5A => X"5555555555555555555555555555555555555555555555555555555555555555",
      INIT_5B => X"5555555555555555555555555555555555555555555555555555555555555555",
      INIT_5C => X"5555555555555555555555555555555555555555555555555555555555555555",
      INIT_5D => X"5555555555555555555555555555555555555555555555555555555555555555",
      INIT_5E => X"5555555555555555555555555555555555555555555555555555555555555555",
      INIT_5F => X"5555555555555555555555555555555555555555555555555555555555555555",
      INIT_60 => X"5555555555555555555555555555555555555555555555555555555555555555",
      INIT_61 => X"5555555555555555555555555555555555555555555555555555555555555555",
      INIT_62 => X"5555555555555555555555555555555555555555555555555555555555555555",
      INIT_63 => X"5555555555555555555555555555555555555555555555555555555555555555",
      INIT_64 => X"5555555555555555555555555555555555555555555555555555555555555555",
      INIT_65 => X"5555555555555555555555555555555555555555555555555555555555555555",
      INIT_66 => X"5555555555555555555555555555555555555555555555555555555555555555",
      INIT_67 => X"5555555555555555555555555555555555555555555555555555555555555555",
      INIT_68 => X"5555555555555555555555555555555555555555555555555555555555555555",
      INIT_69 => X"5555555555555555555555555555555555555555555555555555555555555555",
      INIT_6A => X"5555555555555555555555555555555555555555555555555555555555555555",
      INIT_6B => X"5555555555555555555555555555555555555555555555555555555555555555",
      INIT_6C => X"5555555555555555555555555555555555555555555555555555555555555555",
      INIT_6D => X"5555555555555555555555555555555555555555555555555555555555555555",
      INIT_6E => X"5555555555555555555555555555555555555555555555555555555555555555",
      INIT_6F => X"5555555555555555555555555555555555555555555555555555555555555555",
      INIT_70 => X"5555555555555555555555555555555555555555555555555555555555555555",
      INIT_71 => X"5555555555555555555555555555555555555555555555555555555555555555",
      INIT_72 => X"5555555555555555555555555555555555555555555555555555555555555555",
      INIT_73 => X"5555555555555555555555555555555555555555555555555555555555555555",
      INIT_74 => X"5555555555555555555555555555555555555555555555555555555555555555",
      INIT_75 => X"5555555555555555555555555555555555555555555555555555555555555555",
      INIT_76 => X"5555555555555555555555555555555555555555555555555555555555555555",
      INIT_77 => X"5555555555555555555555555555555555555555555555555555555555555555",
      INIT_78 => X"5555555555555555555555555555555555555555555555555555555555555555",
      INIT_79 => X"5555555555555555555555555555555555555555555555555555555555555555",
      INIT_7A => X"5555555555555555555555555555555555555555555555555555555555555555",
      INIT_7B => X"5555555555555555555555555555555555555555555555555555555555555555",
      INIT_7C => X"5555555555555555555555555555555555555555555555555555555555555555",
      INIT_7D => X"5555555555555555555555555555555555555555555555555555555555555555",
      INIT_7E => X"5555555555555555555555555555555555555555555555555555555555555555",
      INIT_7F => X"5555555555555555555555555555555555555555555555555555555555555555",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 2,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 2,
      WRITE_WIDTH_B => 0
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14) => ADDRARDADDR(0),
      ADDRARDADDR(13 downto 0) => B"00000000000000",
      ADDRBWRADDR(15 downto 0) => B"1111111111111111",
      CASCADEINA => '1',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_LUToutRegister_reg_reg[0]_7_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_LUToutRegister_reg_reg[0]_7_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clk,
      CLKBWRCLK => '0',
      DBITERR => \NLW_LUToutRegister_reg_reg[0]_7_DBITERR_UNCONNECTED\,
      DIADI(31 downto 0) => B"00000000000000000000000000000011",
      DIBDI(31 downto 0) => B"11111111111111111111111111111111",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"1111",
      DOADO(31 downto 2) => \NLW_LUToutRegister_reg_reg[0]_7_DOADO_UNCONNECTED\(31 downto 2),
      DOADO(1) => \LUToutRegister_reg_reg[0]_7_n_34\,
      DOADO(0) => \LUToutRegister_reg_reg[0]_7_n_35\,
      DOBDO(31 downto 0) => \NLW_LUToutRegister_reg_reg[0]_7_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 0) => \NLW_LUToutRegister_reg_reg[0]_7_DOPADOP_UNCONNECTED\(3 downto 0),
      DOPBDOP(3 downto 0) => \NLW_LUToutRegister_reg_reg[0]_7_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_LUToutRegister_reg_reg[0]_7_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => '1',
      ENBWREN => '0',
      INJECTDBITERR => \NLW_LUToutRegister_reg_reg[0]_7_INJECTDBITERR_UNCONNECTED\,
      INJECTSBITERR => \NLW_LUToutRegister_reg_reg[0]_7_INJECTSBITERR_UNCONNECTED\,
      RDADDRECC(8 downto 0) => \NLW_LUToutRegister_reg_reg[0]_7_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_LUToutRegister_reg_reg[0]_7_SBITERR_UNCONNECTED\,
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => B"00000000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_LookUpTableGen_0 is
  port (
    ADDRARDADDR : out STD_LOGIC_VECTOR ( 0 to 0 );
    \LUToutRegister_reg_reg[2]\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    uminus_cast_1 : out STD_LOGIC_VECTOR ( 14 downto 0 );
    uminus_cast_3 : out STD_LOGIC_VECTOR ( 14 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    \LUToutRegister_reg_reg[0]_0\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \AddrOverFsinRegister_reg_reg[3]\ : in STD_LOGIC;
    S : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \AddrOverFsinRegister_reg_reg[3]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \AddrOverFsinRegister_reg_reg[3]_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \AddrOverFsinRegister_reg_reg[3]_2\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \AddrOverFcosRegister_reg_reg[3]\ : in STD_LOGIC;
    \AddrOverFcosRegister_reg_reg[3]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \AddrOverFcosRegister_reg_reg[3]_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \AddrOverFcosRegister_reg_reg[3]_2\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \AddrOverFcosRegister_reg_reg[3]_3\ : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_LookUpTableGen_0 : entity is "LookUpTableGen";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_LookUpTableGen_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_LookUpTableGen_0 is
  signal \LUToutRegister_reg_reg[1]\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \cosine_tmp_reg[12]_i_2_n_0\ : STD_LOGIC;
  signal \cosine_tmp_reg[12]_i_2_n_1\ : STD_LOGIC;
  signal \cosine_tmp_reg[12]_i_2_n_2\ : STD_LOGIC;
  signal \cosine_tmp_reg[12]_i_2_n_3\ : STD_LOGIC;
  signal \cosine_tmp_reg[15]_i_2_n_2\ : STD_LOGIC;
  signal \cosine_tmp_reg[15]_i_2_n_3\ : STD_LOGIC;
  signal \cosine_tmp_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \cosine_tmp_reg[4]_i_2_n_1\ : STD_LOGIC;
  signal \cosine_tmp_reg[4]_i_2_n_2\ : STD_LOGIC;
  signal \cosine_tmp_reg[4]_i_2_n_3\ : STD_LOGIC;
  signal \cosine_tmp_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \cosine_tmp_reg[8]_i_2_n_1\ : STD_LOGIC;
  signal \cosine_tmp_reg[8]_i_2_n_2\ : STD_LOGIC;
  signal \cosine_tmp_reg[8]_i_2_n_3\ : STD_LOGIC;
  signal \sine_tmp_reg[12]_i_2_n_0\ : STD_LOGIC;
  signal \sine_tmp_reg[12]_i_2_n_1\ : STD_LOGIC;
  signal \sine_tmp_reg[12]_i_2_n_2\ : STD_LOGIC;
  signal \sine_tmp_reg[12]_i_2_n_3\ : STD_LOGIC;
  signal \sine_tmp_reg[15]_i_2_n_2\ : STD_LOGIC;
  signal \sine_tmp_reg[15]_i_2_n_3\ : STD_LOGIC;
  signal \sine_tmp_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \sine_tmp_reg[4]_i_2_n_1\ : STD_LOGIC;
  signal \sine_tmp_reg[4]_i_2_n_2\ : STD_LOGIC;
  signal \sine_tmp_reg[4]_i_2_n_3\ : STD_LOGIC;
  signal \sine_tmp_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \sine_tmp_reg[8]_i_2_n_1\ : STD_LOGIC;
  signal \sine_tmp_reg[8]_i_2_n_2\ : STD_LOGIC;
  signal \sine_tmp_reg[8]_i_2_n_3\ : STD_LOGIC;
  signal \NLW_cosine_tmp_reg[15]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_cosine_tmp_reg[15]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_sine_tmp_reg[15]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_sine_tmp_reg[15]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
begin
\LUToutRegister_reg_reg[1][0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \LUToutRegister_reg_reg[0]_0\(0),
      Q => \LUToutRegister_reg_reg[1]\(0)
    );
\LUToutRegister_reg_reg[1][10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \LUToutRegister_reg_reg[0]_0\(10),
      Q => \LUToutRegister_reg_reg[1]\(10)
    );
\LUToutRegister_reg_reg[1][11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \LUToutRegister_reg_reg[0]_0\(11),
      Q => \LUToutRegister_reg_reg[1]\(11)
    );
\LUToutRegister_reg_reg[1][12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \LUToutRegister_reg_reg[0]_0\(12),
      Q => \LUToutRegister_reg_reg[1]\(12)
    );
\LUToutRegister_reg_reg[1][13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \LUToutRegister_reg_reg[0]_0\(13),
      Q => \LUToutRegister_reg_reg[1]\(13)
    );
\LUToutRegister_reg_reg[1][14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \LUToutRegister_reg_reg[0]_0\(14),
      Q => \LUToutRegister_reg_reg[1]\(14)
    );
\LUToutRegister_reg_reg[1][15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \LUToutRegister_reg_reg[0]_0\(15),
      Q => \LUToutRegister_reg_reg[1]\(15)
    );
\LUToutRegister_reg_reg[1][1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \LUToutRegister_reg_reg[0]_0\(1),
      Q => \LUToutRegister_reg_reg[1]\(1)
    );
\LUToutRegister_reg_reg[1][2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \LUToutRegister_reg_reg[0]_0\(2),
      Q => \LUToutRegister_reg_reg[1]\(2)
    );
\LUToutRegister_reg_reg[1][3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \LUToutRegister_reg_reg[0]_0\(3),
      Q => \LUToutRegister_reg_reg[1]\(3)
    );
\LUToutRegister_reg_reg[1][4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \LUToutRegister_reg_reg[0]_0\(4),
      Q => \LUToutRegister_reg_reg[1]\(4)
    );
\LUToutRegister_reg_reg[1][5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \LUToutRegister_reg_reg[0]_0\(5),
      Q => \LUToutRegister_reg_reg[1]\(5)
    );
\LUToutRegister_reg_reg[1][6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \LUToutRegister_reg_reg[0]_0\(6),
      Q => \LUToutRegister_reg_reg[1]\(6)
    );
\LUToutRegister_reg_reg[1][7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \LUToutRegister_reg_reg[0]_0\(7),
      Q => \LUToutRegister_reg_reg[1]\(7)
    );
\LUToutRegister_reg_reg[1][8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \LUToutRegister_reg_reg[0]_0\(8),
      Q => \LUToutRegister_reg_reg[1]\(8)
    );
\LUToutRegister_reg_reg[1][9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \LUToutRegister_reg_reg[0]_0\(9),
      Q => \LUToutRegister_reg_reg[1]\(9)
    );
\LUToutRegister_reg_reg[2][0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \LUToutRegister_reg_reg[1]\(0),
      Q => \LUToutRegister_reg_reg[2]\(0)
    );
\LUToutRegister_reg_reg[2][10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \LUToutRegister_reg_reg[1]\(10),
      Q => \LUToutRegister_reg_reg[2]\(10)
    );
\LUToutRegister_reg_reg[2][11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \LUToutRegister_reg_reg[1]\(11),
      Q => \LUToutRegister_reg_reg[2]\(11)
    );
\LUToutRegister_reg_reg[2][12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \LUToutRegister_reg_reg[1]\(12),
      Q => \LUToutRegister_reg_reg[2]\(12)
    );
\LUToutRegister_reg_reg[2][13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \LUToutRegister_reg_reg[1]\(13),
      Q => \LUToutRegister_reg_reg[2]\(13)
    );
\LUToutRegister_reg_reg[2][14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \LUToutRegister_reg_reg[1]\(14),
      Q => \LUToutRegister_reg_reg[2]\(14)
    );
\LUToutRegister_reg_reg[2][15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \LUToutRegister_reg_reg[1]\(15),
      Q => \LUToutRegister_reg_reg[2]\(15)
    );
\LUToutRegister_reg_reg[2][1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \LUToutRegister_reg_reg[1]\(1),
      Q => \LUToutRegister_reg_reg[2]\(1)
    );
\LUToutRegister_reg_reg[2][2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \LUToutRegister_reg_reg[1]\(2),
      Q => \LUToutRegister_reg_reg[2]\(2)
    );
\LUToutRegister_reg_reg[2][3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \LUToutRegister_reg_reg[1]\(3),
      Q => \LUToutRegister_reg_reg[2]\(3)
    );
\LUToutRegister_reg_reg[2][4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \LUToutRegister_reg_reg[1]\(4),
      Q => \LUToutRegister_reg_reg[2]\(4)
    );
\LUToutRegister_reg_reg[2][5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \LUToutRegister_reg_reg[1]\(5),
      Q => \LUToutRegister_reg_reg[2]\(5)
    );
\LUToutRegister_reg_reg[2][6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \LUToutRegister_reg_reg[1]\(6),
      Q => \LUToutRegister_reg_reg[2]\(6)
    );
\LUToutRegister_reg_reg[2][7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \LUToutRegister_reg_reg[1]\(7),
      Q => \LUToutRegister_reg_reg[2]\(7)
    );
\LUToutRegister_reg_reg[2][8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \LUToutRegister_reg_reg[1]\(8),
      Q => \LUToutRegister_reg_reg[2]\(8)
    );
\LUToutRegister_reg_reg[2][9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \LUToutRegister_reg_reg[1]\(9),
      Q => \LUToutRegister_reg_reg[2]\(9)
    );
\cosine_tmp_reg[12]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \cosine_tmp_reg[8]_i_2_n_0\,
      CO(3) => \cosine_tmp_reg[12]_i_2_n_0\,
      CO(2) => \cosine_tmp_reg[12]_i_2_n_1\,
      CO(1) => \cosine_tmp_reg[12]_i_2_n_2\,
      CO(0) => \cosine_tmp_reg[12]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => uminus_cast_3(11 downto 8),
      S(3 downto 0) => \AddrOverFcosRegister_reg_reg[3]_2\(3 downto 0)
    );
\cosine_tmp_reg[15]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \cosine_tmp_reg[12]_i_2_n_0\,
      CO(3 downto 2) => \NLW_cosine_tmp_reg[15]_i_2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \cosine_tmp_reg[15]_i_2_n_2\,
      CO(0) => \cosine_tmp_reg[15]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_cosine_tmp_reg[15]_i_2_O_UNCONNECTED\(3),
      O(2 downto 0) => uminus_cast_3(14 downto 12),
      S(3) => '0',
      S(2 downto 0) => \AddrOverFcosRegister_reg_reg[3]_3\(2 downto 0)
    );
\cosine_tmp_reg[4]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \cosine_tmp_reg[4]_i_2_n_0\,
      CO(2) => \cosine_tmp_reg[4]_i_2_n_1\,
      CO(1) => \cosine_tmp_reg[4]_i_2_n_2\,
      CO(0) => \cosine_tmp_reg[4]_i_2_n_3\,
      CYINIT => \AddrOverFcosRegister_reg_reg[3]\,
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => uminus_cast_3(3 downto 0),
      S(3 downto 0) => \AddrOverFcosRegister_reg_reg[3]_0\(3 downto 0)
    );
\cosine_tmp_reg[8]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \cosine_tmp_reg[4]_i_2_n_0\,
      CO(3) => \cosine_tmp_reg[8]_i_2_n_0\,
      CO(2) => \cosine_tmp_reg[8]_i_2_n_1\,
      CO(1) => \cosine_tmp_reg[8]_i_2_n_2\,
      CO(0) => \cosine_tmp_reg[8]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => uminus_cast_3(7 downto 4),
      S(3 downto 0) => \AddrOverFcosRegister_reg_reg[3]_1\(3 downto 0)
    );
\lutaddrInReg_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => Q(0),
      Q => ADDRARDADDR(0)
    );
\sine_tmp_reg[12]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \sine_tmp_reg[8]_i_2_n_0\,
      CO(3) => \sine_tmp_reg[12]_i_2_n_0\,
      CO(2) => \sine_tmp_reg[12]_i_2_n_1\,
      CO(1) => \sine_tmp_reg[12]_i_2_n_2\,
      CO(0) => \sine_tmp_reg[12]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => uminus_cast_1(11 downto 8),
      S(3 downto 0) => \AddrOverFsinRegister_reg_reg[3]_1\(3 downto 0)
    );
\sine_tmp_reg[15]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \sine_tmp_reg[12]_i_2_n_0\,
      CO(3 downto 2) => \NLW_sine_tmp_reg[15]_i_2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \sine_tmp_reg[15]_i_2_n_2\,
      CO(0) => \sine_tmp_reg[15]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_sine_tmp_reg[15]_i_2_O_UNCONNECTED\(3),
      O(2 downto 0) => uminus_cast_1(14 downto 12),
      S(3) => '0',
      S(2 downto 0) => \AddrOverFsinRegister_reg_reg[3]_2\(2 downto 0)
    );
\sine_tmp_reg[4]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \sine_tmp_reg[4]_i_2_n_0\,
      CO(2) => \sine_tmp_reg[4]_i_2_n_1\,
      CO(1) => \sine_tmp_reg[4]_i_2_n_2\,
      CO(0) => \sine_tmp_reg[4]_i_2_n_3\,
      CYINIT => \AddrOverFsinRegister_reg_reg[3]\,
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => uminus_cast_1(3 downto 0),
      S(3 downto 0) => S(3 downto 0)
    );
\sine_tmp_reg[8]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \sine_tmp_reg[4]_i_2_n_0\,
      CO(3) => \sine_tmp_reg[8]_i_2_n_0\,
      CO(2) => \sine_tmp_reg[8]_i_2_n_1\,
      CO(1) => \sine_tmp_reg[8]_i_2_n_2\,
      CO(0) => \sine_tmp_reg[8]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => uminus_cast_1(7 downto 4),
      S(3 downto 0) => \AddrOverFsinRegister_reg_reg[3]_0\(3 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_WaveformGen is
  port (
    \LUToutRegister_reg_reg[2]\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \cosine_tmp_reg[15]\ : out STD_LOGIC;
    \cosine_tmp_reg[15]_0\ : out STD_LOGIC;
    \sine_tmp_reg[15]\ : out STD_LOGIC;
    \sine_tmp_reg[15]_0\ : out STD_LOGIC;
    uminus_cast_1 : out STD_LOGIC_VECTOR ( 14 downto 0 );
    uminus_cast_3 : out STD_LOGIC_VECTOR ( 14 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    outsel_reg_reg_reg_c_1 : in STD_LOGIC;
    \LUToutRegister_reg_reg[1][0]_i_2\ : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_WaveformGen;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_WaveformGen is
  signal \AddrOverFcosRegister_reg_reg[1]_srl2_U0_u_handmadedds_u_NCO_HDL_Optimized_outsel_reg_reg_reg_c_0_i_1_n_0\ : STD_LOGIC;
  signal \AddrOverFcosRegister_reg_reg[1]_srl2_U0_u_handmadedds_u_NCO_HDL_Optimized_outsel_reg_reg_reg_c_0_n_0\ : STD_LOGIC;
  signal \AddrOverFcosRegister_reg_reg[2]_U0_u_handmadedds_u_NCO_HDL_Optimized_outsel_reg_reg_reg_c_1_n_0\ : STD_LOGIC;
  signal AddrOverFcosRegister_reg_reg_gate_n_0 : STD_LOGIC;
  signal \AddrOverFsinRegister_reg_reg[1]_srl2_U0_u_handmadedds_u_NCO_HDL_Optimized_outsel_reg_reg_reg_c_0_i_1_n_0\ : STD_LOGIC;
  signal \AddrOverFsinRegister_reg_reg[1]_srl2_U0_u_handmadedds_u_NCO_HDL_Optimized_outsel_reg_reg_reg_c_0_n_0\ : STD_LOGIC;
  signal \AddrOverFsinRegister_reg_reg[2]_U0_u_handmadedds_u_NCO_HDL_Optimized_outsel_reg_reg_reg_c_1_n_0\ : STD_LOGIC;
  signal AddrOverFsinRegister_reg_reg_gate_n_0 : STD_LOGIC;
  signal \LUToutRegister_reg_reg[0]_0\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \^lutoutregister_reg_reg[2]\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \SelsignCosRegister_reg_reg[1]_srl2_U0_u_handmadedds_u_NCO_HDL_Optimized_outsel_reg_reg_reg_c_0_n_0\ : STD_LOGIC;
  signal \SelsignCosRegister_reg_reg[2]_U0_u_handmadedds_u_NCO_HDL_Optimized_outsel_reg_reg_reg_c_1_n_0\ : STD_LOGIC;
  signal SelsignCosRegister_reg_reg_gate_n_0 : STD_LOGIC;
  signal \SelsignRegister_reg_reg[1]_srl2_U0_u_handmadedds_u_NCO_HDL_Optimized_outsel_reg_reg_reg_c_0_n_0\ : STD_LOGIC;
  signal \SelsignRegister_reg_reg[2]_U0_u_handmadedds_u_NCO_HDL_Optimized_outsel_reg_reg_reg_c_1_n_0\ : STD_LOGIC;
  signal SelsignRegister_reg_reg_gate_n_0 : STD_LOGIC;
  signal \cosine_tmp[12]_i_3_n_0\ : STD_LOGIC;
  signal \cosine_tmp[12]_i_4_n_0\ : STD_LOGIC;
  signal \cosine_tmp[12]_i_5_n_0\ : STD_LOGIC;
  signal \cosine_tmp[12]_i_6_n_0\ : STD_LOGIC;
  signal \cosine_tmp[15]_i_3_n_0\ : STD_LOGIC;
  signal \cosine_tmp[15]_i_4_n_0\ : STD_LOGIC;
  signal \cosine_tmp[15]_i_5_n_0\ : STD_LOGIC;
  signal \cosine_tmp[4]_i_3_n_0\ : STD_LOGIC;
  signal \cosine_tmp[4]_i_4_n_0\ : STD_LOGIC;
  signal \cosine_tmp[4]_i_5_n_0\ : STD_LOGIC;
  signal \cosine_tmp[4]_i_6_n_0\ : STD_LOGIC;
  signal \cosine_tmp[4]_i_7_n_0\ : STD_LOGIC;
  signal \cosine_tmp[8]_i_3_n_0\ : STD_LOGIC;
  signal \cosine_tmp[8]_i_4_n_0\ : STD_LOGIC;
  signal \cosine_tmp[8]_i_5_n_0\ : STD_LOGIC;
  signal \cosine_tmp[8]_i_6_n_0\ : STD_LOGIC;
  signal \^cosine_tmp_reg[15]_0\ : STD_LOGIC;
  signal lutaddrInReg : STD_LOGIC_VECTOR ( 13 to 13 );
  signal p_1_out : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \sine_tmp[12]_i_3_n_0\ : STD_LOGIC;
  signal \sine_tmp[12]_i_4_n_0\ : STD_LOGIC;
  signal \sine_tmp[12]_i_5_n_0\ : STD_LOGIC;
  signal \sine_tmp[12]_i_6_n_0\ : STD_LOGIC;
  signal \sine_tmp[15]_i_3_n_0\ : STD_LOGIC;
  signal \sine_tmp[15]_i_4_n_0\ : STD_LOGIC;
  signal \sine_tmp[15]_i_5_n_0\ : STD_LOGIC;
  signal \sine_tmp[4]_i_3_n_0\ : STD_LOGIC;
  signal \sine_tmp[4]_i_4_n_0\ : STD_LOGIC;
  signal \sine_tmp[4]_i_5_n_0\ : STD_LOGIC;
  signal \sine_tmp[4]_i_6_n_0\ : STD_LOGIC;
  signal \sine_tmp[4]_i_7_n_0\ : STD_LOGIC;
  signal \sine_tmp[8]_i_3_n_0\ : STD_LOGIC;
  signal \sine_tmp[8]_i_4_n_0\ : STD_LOGIC;
  signal \sine_tmp[8]_i_5_n_0\ : STD_LOGIC;
  signal \sine_tmp[8]_i_6_n_0\ : STD_LOGIC;
  signal \^sine_tmp_reg[15]_0\ : STD_LOGIC;
  attribute srl_bus_name : string;
  attribute srl_bus_name of \AddrOverFcosRegister_reg_reg[1]_srl2_U0_u_handmadedds_u_NCO_HDL_Optimized_outsel_reg_reg_reg_c_0\ : label is "\U0/u_handmadedds/u_NCO_HDL_Optimized/u_Wave_inst/AddrOverFcosRegister_reg_reg ";
  attribute srl_name : string;
  attribute srl_name of \AddrOverFcosRegister_reg_reg[1]_srl2_U0_u_handmadedds_u_NCO_HDL_Optimized_outsel_reg_reg_reg_c_0\ : label is "\U0/u_handmadedds/u_NCO_HDL_Optimized/u_Wave_inst/AddrOverFcosRegister_reg_reg[1]_srl2_U0_u_handmadedds_u_NCO_HDL_Optimized_outsel_reg_reg_reg_c_0 ";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \AddrOverFcosRegister_reg_reg[1]_srl2_U0_u_handmadedds_u_NCO_HDL_Optimized_outsel_reg_reg_reg_c_0_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of AddrOverFcosRegister_reg_reg_gate : label is "soft_lutpair9";
  attribute srl_bus_name of \AddrOverFsinRegister_reg_reg[1]_srl2_U0_u_handmadedds_u_NCO_HDL_Optimized_outsel_reg_reg_reg_c_0\ : label is "\U0/u_handmadedds/u_NCO_HDL_Optimized/u_Wave_inst/AddrOverFsinRegister_reg_reg ";
  attribute srl_name of \AddrOverFsinRegister_reg_reg[1]_srl2_U0_u_handmadedds_u_NCO_HDL_Optimized_outsel_reg_reg_reg_c_0\ : label is "\U0/u_handmadedds/u_NCO_HDL_Optimized/u_Wave_inst/AddrOverFsinRegister_reg_reg[1]_srl2_U0_u_handmadedds_u_NCO_HDL_Optimized_outsel_reg_reg_reg_c_0 ";
  attribute SOFT_HLUTNM of \AddrOverFsinRegister_reg_reg[1]_srl2_U0_u_handmadedds_u_NCO_HDL_Optimized_outsel_reg_reg_reg_c_0_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of AddrOverFsinRegister_reg_reg_gate : label is "soft_lutpair10";
  attribute srl_bus_name of \SelsignCosRegister_reg_reg[1]_srl2_U0_u_handmadedds_u_NCO_HDL_Optimized_outsel_reg_reg_reg_c_0\ : label is "\U0/u_handmadedds/u_NCO_HDL_Optimized/u_Wave_inst/SelsignCosRegister_reg_reg ";
  attribute srl_name of \SelsignCosRegister_reg_reg[1]_srl2_U0_u_handmadedds_u_NCO_HDL_Optimized_outsel_reg_reg_reg_c_0\ : label is "\U0/u_handmadedds/u_NCO_HDL_Optimized/u_Wave_inst/SelsignCosRegister_reg_reg[1]_srl2_U0_u_handmadedds_u_NCO_HDL_Optimized_outsel_reg_reg_reg_c_0 ";
  attribute SOFT_HLUTNM of SelsignCosRegister_reg_reg_gate : label is "soft_lutpair9";
  attribute srl_bus_name of \SelsignRegister_reg_reg[1]_srl2_U0_u_handmadedds_u_NCO_HDL_Optimized_outsel_reg_reg_reg_c_0\ : label is "\U0/u_handmadedds/u_NCO_HDL_Optimized/u_Wave_inst/SelsignRegister_reg_reg ";
  attribute srl_name of \SelsignRegister_reg_reg[1]_srl2_U0_u_handmadedds_u_NCO_HDL_Optimized_outsel_reg_reg_reg_c_0\ : label is "\U0/u_handmadedds/u_NCO_HDL_Optimized/u_Wave_inst/SelsignRegister_reg_reg[1]_srl2_U0_u_handmadedds_u_NCO_HDL_Optimized_outsel_reg_reg_reg_c_0 ";
  attribute SOFT_HLUTNM of SelsignRegister_reg_reg_gate : label is "soft_lutpair10";
begin
  \LUToutRegister_reg_reg[2]\(15 downto 0) <= \^lutoutregister_reg_reg[2]\(15 downto 0);
  \cosine_tmp_reg[15]_0\ <= \^cosine_tmp_reg[15]_0\;
  \sine_tmp_reg[15]_0\ <= \^sine_tmp_reg[15]_0\;
\AddrOverFcosRegister_reg_reg[1]_srl2_U0_u_handmadedds_u_NCO_HDL_Optimized_outsel_reg_reg_reg_c_0\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => \AddrOverFcosRegister_reg_reg[1]_srl2_U0_u_handmadedds_u_NCO_HDL_Optimized_outsel_reg_reg_reg_c_0_i_1_n_0\,
      Q => \AddrOverFcosRegister_reg_reg[1]_srl2_U0_u_handmadedds_u_NCO_HDL_Optimized_outsel_reg_reg_reg_c_0_n_0\
    );
\AddrOverFcosRegister_reg_reg[1]_srl2_U0_u_handmadedds_u_NCO_HDL_Optimized_outsel_reg_reg_reg_c_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \LUToutRegister_reg_reg[1][0]_i_2\,
      I1 => Q(1),
      I2 => Q(0),
      O => \AddrOverFcosRegister_reg_reg[1]_srl2_U0_u_handmadedds_u_NCO_HDL_Optimized_outsel_reg_reg_reg_c_0_i_1_n_0\
    );
\AddrOverFcosRegister_reg_reg[2]_U0_u_handmadedds_u_NCO_HDL_Optimized_outsel_reg_reg_reg_c_1\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \AddrOverFcosRegister_reg_reg[1]_srl2_U0_u_handmadedds_u_NCO_HDL_Optimized_outsel_reg_reg_reg_c_0_n_0\,
      Q => \AddrOverFcosRegister_reg_reg[2]_U0_u_handmadedds_u_NCO_HDL_Optimized_outsel_reg_reg_reg_c_1_n_0\,
      R => '0'
    );
\AddrOverFcosRegister_reg_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => AddrOverFcosRegister_reg_reg_gate_n_0,
      Q => \^cosine_tmp_reg[15]_0\
    );
AddrOverFcosRegister_reg_reg_gate: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \AddrOverFcosRegister_reg_reg[2]_U0_u_handmadedds_u_NCO_HDL_Optimized_outsel_reg_reg_reg_c_1_n_0\,
      I1 => outsel_reg_reg_reg_c_1,
      O => AddrOverFcosRegister_reg_reg_gate_n_0
    );
\AddrOverFsinRegister_reg_reg[1]_srl2_U0_u_handmadedds_u_NCO_HDL_Optimized_outsel_reg_reg_reg_c_0\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => \AddrOverFsinRegister_reg_reg[1]_srl2_U0_u_handmadedds_u_NCO_HDL_Optimized_outsel_reg_reg_reg_c_0_i_1_n_0\,
      Q => \AddrOverFsinRegister_reg_reg[1]_srl2_U0_u_handmadedds_u_NCO_HDL_Optimized_outsel_reg_reg_reg_c_0_n_0\
    );
\AddrOverFsinRegister_reg_reg[1]_srl2_U0_u_handmadedds_u_NCO_HDL_Optimized_outsel_reg_reg_reg_c_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      O => \AddrOverFsinRegister_reg_reg[1]_srl2_U0_u_handmadedds_u_NCO_HDL_Optimized_outsel_reg_reg_reg_c_0_i_1_n_0\
    );
\AddrOverFsinRegister_reg_reg[2]_U0_u_handmadedds_u_NCO_HDL_Optimized_outsel_reg_reg_reg_c_1\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \AddrOverFsinRegister_reg_reg[1]_srl2_U0_u_handmadedds_u_NCO_HDL_Optimized_outsel_reg_reg_reg_c_0_n_0\,
      Q => \AddrOverFsinRegister_reg_reg[2]_U0_u_handmadedds_u_NCO_HDL_Optimized_outsel_reg_reg_reg_c_1_n_0\,
      R => '0'
    );
\AddrOverFsinRegister_reg_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => AddrOverFsinRegister_reg_reg_gate_n_0,
      Q => \^sine_tmp_reg[15]_0\
    );
AddrOverFsinRegister_reg_reg_gate: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \AddrOverFsinRegister_reg_reg[2]_U0_u_handmadedds_u_NCO_HDL_Optimized_outsel_reg_reg_reg_c_1_n_0\,
      I1 => outsel_reg_reg_reg_c_1,
      O => AddrOverFsinRegister_reg_reg_gate_n_0
    );
\SelsignCosRegister_reg_reg[1]_srl2_U0_u_handmadedds_u_NCO_HDL_Optimized_outsel_reg_reg_reg_c_0\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => p_1_out(3),
      Q => \SelsignCosRegister_reg_reg[1]_srl2_U0_u_handmadedds_u_NCO_HDL_Optimized_outsel_reg_reg_reg_c_0_n_0\
    );
\SelsignCosRegister_reg_reg[1]_srl2_U0_u_handmadedds_u_NCO_HDL_Optimized_outsel_reg_reg_reg_c_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Q(1),
      I1 => Q(2),
      O => p_1_out(3)
    );
\SelsignCosRegister_reg_reg[2]_U0_u_handmadedds_u_NCO_HDL_Optimized_outsel_reg_reg_reg_c_1\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \SelsignCosRegister_reg_reg[1]_srl2_U0_u_handmadedds_u_NCO_HDL_Optimized_outsel_reg_reg_reg_c_0_n_0\,
      Q => \SelsignCosRegister_reg_reg[2]_U0_u_handmadedds_u_NCO_HDL_Optimized_outsel_reg_reg_reg_c_1_n_0\,
      R => '0'
    );
\SelsignCosRegister_reg_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => SelsignCosRegister_reg_reg_gate_n_0,
      Q => \cosine_tmp_reg[15]\
    );
SelsignCosRegister_reg_reg_gate: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \SelsignCosRegister_reg_reg[2]_U0_u_handmadedds_u_NCO_HDL_Optimized_outsel_reg_reg_reg_c_1_n_0\,
      I1 => outsel_reg_reg_reg_c_1,
      O => SelsignCosRegister_reg_reg_gate_n_0
    );
\SelsignRegister_reg_reg[1]_srl2_U0_u_handmadedds_u_NCO_HDL_Optimized_outsel_reg_reg_reg_c_0\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => Q(2),
      Q => \SelsignRegister_reg_reg[1]_srl2_U0_u_handmadedds_u_NCO_HDL_Optimized_outsel_reg_reg_reg_c_0_n_0\
    );
\SelsignRegister_reg_reg[2]_U0_u_handmadedds_u_NCO_HDL_Optimized_outsel_reg_reg_reg_c_1\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \SelsignRegister_reg_reg[1]_srl2_U0_u_handmadedds_u_NCO_HDL_Optimized_outsel_reg_reg_reg_c_0_n_0\,
      Q => \SelsignRegister_reg_reg[2]_U0_u_handmadedds_u_NCO_HDL_Optimized_outsel_reg_reg_reg_c_1_n_0\,
      R => '0'
    );
\SelsignRegister_reg_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => SelsignRegister_reg_reg_gate_n_0,
      Q => \sine_tmp_reg[15]\
    );
SelsignRegister_reg_reg_gate: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \SelsignRegister_reg_reg[2]_U0_u_handmadedds_u_NCO_HDL_Optimized_outsel_reg_reg_reg_c_1_n_0\,
      I1 => outsel_reg_reg_reg_c_1,
      O => SelsignRegister_reg_reg_gate_n_0
    );
\cosine_tmp[12]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^cosine_tmp_reg[15]_0\,
      I1 => \^lutoutregister_reg_reg[2]\(12),
      O => \cosine_tmp[12]_i_3_n_0\
    );
\cosine_tmp[12]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^cosine_tmp_reg[15]_0\,
      I1 => \^lutoutregister_reg_reg[2]\(11),
      O => \cosine_tmp[12]_i_4_n_0\
    );
\cosine_tmp[12]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^cosine_tmp_reg[15]_0\,
      I1 => \^lutoutregister_reg_reg[2]\(10),
      O => \cosine_tmp[12]_i_5_n_0\
    );
\cosine_tmp[12]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^cosine_tmp_reg[15]_0\,
      I1 => \^lutoutregister_reg_reg[2]\(9),
      O => \cosine_tmp[12]_i_6_n_0\
    );
\cosine_tmp[15]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^cosine_tmp_reg[15]_0\,
      I1 => \^lutoutregister_reg_reg[2]\(15),
      O => \cosine_tmp[15]_i_3_n_0\
    );
\cosine_tmp[15]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^cosine_tmp_reg[15]_0\,
      I1 => \^lutoutregister_reg_reg[2]\(14),
      O => \cosine_tmp[15]_i_4_n_0\
    );
\cosine_tmp[15]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^cosine_tmp_reg[15]_0\,
      I1 => \^lutoutregister_reg_reg[2]\(13),
      O => \cosine_tmp[15]_i_5_n_0\
    );
\cosine_tmp[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^cosine_tmp_reg[15]_0\,
      I1 => \^lutoutregister_reg_reg[2]\(0),
      O => \cosine_tmp[4]_i_3_n_0\
    );
\cosine_tmp[4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^cosine_tmp_reg[15]_0\,
      I1 => \^lutoutregister_reg_reg[2]\(4),
      O => \cosine_tmp[4]_i_4_n_0\
    );
\cosine_tmp[4]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^cosine_tmp_reg[15]_0\,
      I1 => \^lutoutregister_reg_reg[2]\(3),
      O => \cosine_tmp[4]_i_5_n_0\
    );
\cosine_tmp[4]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^cosine_tmp_reg[15]_0\,
      I1 => \^lutoutregister_reg_reg[2]\(2),
      O => \cosine_tmp[4]_i_6_n_0\
    );
\cosine_tmp[4]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^cosine_tmp_reg[15]_0\,
      I1 => \^lutoutregister_reg_reg[2]\(1),
      O => \cosine_tmp[4]_i_7_n_0\
    );
\cosine_tmp[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^cosine_tmp_reg[15]_0\,
      I1 => \^lutoutregister_reg_reg[2]\(8),
      O => \cosine_tmp[8]_i_3_n_0\
    );
\cosine_tmp[8]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^cosine_tmp_reg[15]_0\,
      I1 => \^lutoutregister_reg_reg[2]\(7),
      O => \cosine_tmp[8]_i_4_n_0\
    );
\cosine_tmp[8]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^cosine_tmp_reg[15]_0\,
      I1 => \^lutoutregister_reg_reg[2]\(6),
      O => \cosine_tmp[8]_i_5_n_0\
    );
\cosine_tmp[8]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^cosine_tmp_reg[15]_0\,
      I1 => \^lutoutregister_reg_reg[2]\(5),
      O => \cosine_tmp[8]_i_6_n_0\
    );
\sine_tmp[12]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^sine_tmp_reg[15]_0\,
      I1 => \^lutoutregister_reg_reg[2]\(12),
      O => \sine_tmp[12]_i_3_n_0\
    );
\sine_tmp[12]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^sine_tmp_reg[15]_0\,
      I1 => \^lutoutregister_reg_reg[2]\(11),
      O => \sine_tmp[12]_i_4_n_0\
    );
\sine_tmp[12]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^sine_tmp_reg[15]_0\,
      I1 => \^lutoutregister_reg_reg[2]\(10),
      O => \sine_tmp[12]_i_5_n_0\
    );
\sine_tmp[12]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^sine_tmp_reg[15]_0\,
      I1 => \^lutoutregister_reg_reg[2]\(9),
      O => \sine_tmp[12]_i_6_n_0\
    );
\sine_tmp[15]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^sine_tmp_reg[15]_0\,
      I1 => \^lutoutregister_reg_reg[2]\(15),
      O => \sine_tmp[15]_i_3_n_0\
    );
\sine_tmp[15]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^sine_tmp_reg[15]_0\,
      I1 => \^lutoutregister_reg_reg[2]\(14),
      O => \sine_tmp[15]_i_4_n_0\
    );
\sine_tmp[15]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^sine_tmp_reg[15]_0\,
      I1 => \^lutoutregister_reg_reg[2]\(13),
      O => \sine_tmp[15]_i_5_n_0\
    );
\sine_tmp[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^sine_tmp_reg[15]_0\,
      I1 => \^lutoutregister_reg_reg[2]\(0),
      O => \sine_tmp[4]_i_3_n_0\
    );
\sine_tmp[4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^sine_tmp_reg[15]_0\,
      I1 => \^lutoutregister_reg_reg[2]\(4),
      O => \sine_tmp[4]_i_4_n_0\
    );
\sine_tmp[4]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^sine_tmp_reg[15]_0\,
      I1 => \^lutoutregister_reg_reg[2]\(3),
      O => \sine_tmp[4]_i_5_n_0\
    );
\sine_tmp[4]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^sine_tmp_reg[15]_0\,
      I1 => \^lutoutregister_reg_reg[2]\(2),
      O => \sine_tmp[4]_i_6_n_0\
    );
\sine_tmp[4]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^sine_tmp_reg[15]_0\,
      I1 => \^lutoutregister_reg_reg[2]\(1),
      O => \sine_tmp[4]_i_7_n_0\
    );
\sine_tmp[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^sine_tmp_reg[15]_0\,
      I1 => \^lutoutregister_reg_reg[2]\(8),
      O => \sine_tmp[8]_i_3_n_0\
    );
\sine_tmp[8]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^sine_tmp_reg[15]_0\,
      I1 => \^lutoutregister_reg_reg[2]\(7),
      O => \sine_tmp[8]_i_4_n_0\
    );
\sine_tmp[8]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^sine_tmp_reg[15]_0\,
      I1 => \^lutoutregister_reg_reg[2]\(6),
      O => \sine_tmp[8]_i_5_n_0\
    );
\sine_tmp[8]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^sine_tmp_reg[15]_0\,
      I1 => \^lutoutregister_reg_reg[2]\(5),
      O => \sine_tmp[8]_i_6_n_0\
    );
u_CosineWave_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_LookUpTableGen
     port map (
      ADDRARDADDR(0) => lutaddrInReg(13),
      \LUToutRegister_reg_reg[0]_0\(15 downto 0) => \LUToutRegister_reg_reg[0]_0\(15 downto 0),
      \LUToutRegister_reg_reg[1][0]_i_2\ => \LUToutRegister_reg_reg[1][0]_i_2\,
      clk => clk
    );
u_SineWave_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_LookUpTableGen_0
     port map (
      ADDRARDADDR(0) => lutaddrInReg(13),
      \AddrOverFcosRegister_reg_reg[3]\ => \cosine_tmp[4]_i_3_n_0\,
      \AddrOverFcosRegister_reg_reg[3]_0\(3) => \cosine_tmp[4]_i_4_n_0\,
      \AddrOverFcosRegister_reg_reg[3]_0\(2) => \cosine_tmp[4]_i_5_n_0\,
      \AddrOverFcosRegister_reg_reg[3]_0\(1) => \cosine_tmp[4]_i_6_n_0\,
      \AddrOverFcosRegister_reg_reg[3]_0\(0) => \cosine_tmp[4]_i_7_n_0\,
      \AddrOverFcosRegister_reg_reg[3]_1\(3) => \cosine_tmp[8]_i_3_n_0\,
      \AddrOverFcosRegister_reg_reg[3]_1\(2) => \cosine_tmp[8]_i_4_n_0\,
      \AddrOverFcosRegister_reg_reg[3]_1\(1) => \cosine_tmp[8]_i_5_n_0\,
      \AddrOverFcosRegister_reg_reg[3]_1\(0) => \cosine_tmp[8]_i_6_n_0\,
      \AddrOverFcosRegister_reg_reg[3]_2\(3) => \cosine_tmp[12]_i_3_n_0\,
      \AddrOverFcosRegister_reg_reg[3]_2\(2) => \cosine_tmp[12]_i_4_n_0\,
      \AddrOverFcosRegister_reg_reg[3]_2\(1) => \cosine_tmp[12]_i_5_n_0\,
      \AddrOverFcosRegister_reg_reg[3]_2\(0) => \cosine_tmp[12]_i_6_n_0\,
      \AddrOverFcosRegister_reg_reg[3]_3\(2) => \cosine_tmp[15]_i_3_n_0\,
      \AddrOverFcosRegister_reg_reg[3]_3\(1) => \cosine_tmp[15]_i_4_n_0\,
      \AddrOverFcosRegister_reg_reg[3]_3\(0) => \cosine_tmp[15]_i_5_n_0\,
      \AddrOverFsinRegister_reg_reg[3]\ => \sine_tmp[4]_i_3_n_0\,
      \AddrOverFsinRegister_reg_reg[3]_0\(3) => \sine_tmp[8]_i_3_n_0\,
      \AddrOverFsinRegister_reg_reg[3]_0\(2) => \sine_tmp[8]_i_4_n_0\,
      \AddrOverFsinRegister_reg_reg[3]_0\(1) => \sine_tmp[8]_i_5_n_0\,
      \AddrOverFsinRegister_reg_reg[3]_0\(0) => \sine_tmp[8]_i_6_n_0\,
      \AddrOverFsinRegister_reg_reg[3]_1\(3) => \sine_tmp[12]_i_3_n_0\,
      \AddrOverFsinRegister_reg_reg[3]_1\(2) => \sine_tmp[12]_i_4_n_0\,
      \AddrOverFsinRegister_reg_reg[3]_1\(1) => \sine_tmp[12]_i_5_n_0\,
      \AddrOverFsinRegister_reg_reg[3]_1\(0) => \sine_tmp[12]_i_6_n_0\,
      \AddrOverFsinRegister_reg_reg[3]_2\(2) => \sine_tmp[15]_i_3_n_0\,
      \AddrOverFsinRegister_reg_reg[3]_2\(1) => \sine_tmp[15]_i_4_n_0\,
      \AddrOverFsinRegister_reg_reg[3]_2\(0) => \sine_tmp[15]_i_5_n_0\,
      \LUToutRegister_reg_reg[0]_0\(15 downto 0) => \LUToutRegister_reg_reg[0]_0\(15 downto 0),
      \LUToutRegister_reg_reg[2]\(15 downto 0) => \^lutoutregister_reg_reg[2]\(15 downto 0),
      Q(0) => Q(0),
      S(3) => \sine_tmp[4]_i_4_n_0\,
      S(2) => \sine_tmp[4]_i_5_n_0\,
      S(1) => \sine_tmp[4]_i_6_n_0\,
      S(0) => \sine_tmp[4]_i_7_n_0\,
      clk => clk,
      reset => reset,
      uminus_cast_1(14 downto 0) => uminus_cast_1(14 downto 0),
      uminus_cast_3(14 downto 0) => uminus_cast_3(14 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_NCO_HDL_Optimized is
  port (
    IDDS : out STD_LOGIC_VECTOR ( 15 downto 0 );
    QDDS : out STD_LOGIC_VECTOR ( 15 downto 0 );
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    \LUToutRegister_reg_reg[1][0]_i_2\ : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_NCO_HDL_Optimized;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_NCO_HDL_Optimized is
  signal \LUToutRegister_reg_reg[2]\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \accphase_reg[29]_i_2_n_0\ : STD_LOGIC;
  signal \accphase_reg[29]_i_3_n_0\ : STD_LOGIC;
  signal accphase_reg_reg : STD_LOGIC_VECTOR ( 31 downto 29 );
  signal \accphase_reg_reg[29]_i_1_n_2\ : STD_LOGIC;
  signal \accphase_reg_reg[29]_i_1_n_3\ : STD_LOGIC;
  signal \accphase_reg_reg[29]_i_1_n_5\ : STD_LOGIC;
  signal \accphase_reg_reg[29]_i_1_n_6\ : STD_LOGIC;
  signal \accphase_reg_reg[29]_i_1_n_7\ : STD_LOGIC;
  signal \outsel_reg_reg_reg[2]_srl3_U0_u_handmadedds_u_NCO_HDL_Optimized_outsel_reg_reg_reg_c_1_n_0\ : STD_LOGIC;
  signal \outsel_reg_reg_reg[3]_U0_u_handmadedds_u_NCO_HDL_Optimized_outsel_reg_reg_reg_c_2_n_0\ : STD_LOGIC;
  signal outsel_reg_reg_reg_c_0_n_0 : STD_LOGIC;
  signal outsel_reg_reg_reg_c_1_n_0 : STD_LOGIC;
  signal outsel_reg_reg_reg_c_2_n_0 : STD_LOGIC;
  signal outsel_reg_reg_reg_c_n_0 : STD_LOGIC;
  signal outsel_reg_reg_reg_gate_n_0 : STD_LOGIC;
  signal \outsel_reg_reg_reg_n_0_[4]\ : STD_LOGIC;
  signal phaseIdx : STD_LOGIC_VECTOR ( 15 downto 14 );
  signal sel0 : STD_LOGIC_VECTOR ( 13 to 13 );
  signal u_Wave_inst_n_16 : STD_LOGIC;
  signal u_Wave_inst_n_17 : STD_LOGIC;
  signal u_Wave_inst_n_18 : STD_LOGIC;
  signal u_Wave_inst_n_19 : STD_LOGIC;
  signal uminus_cast_1 : STD_LOGIC_VECTOR ( 15 downto 1 );
  signal uminus_cast_3 : STD_LOGIC_VECTOR ( 15 downto 1 );
  signal validcos : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal validsine : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \NLW_accphase_reg_reg[29]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_accphase_reg_reg[29]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cosine_tmp[0]_i_1\ : label is "soft_lutpair11";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \outsel_reg_reg_reg[2]_srl3_U0_u_handmadedds_u_NCO_HDL_Optimized_outsel_reg_reg_reg_c_1\ : label is "\U0/u_handmadedds/u_NCO_HDL_Optimized/outsel_reg_reg_reg ";
  attribute srl_name : string;
  attribute srl_name of \outsel_reg_reg_reg[2]_srl3_U0_u_handmadedds_u_NCO_HDL_Optimized_outsel_reg_reg_reg_c_1\ : label is "\U0/u_handmadedds/u_NCO_HDL_Optimized/outsel_reg_reg_reg[2]_srl3_U0_u_handmadedds_u_NCO_HDL_Optimized_outsel_reg_reg_reg_c_1 ";
  attribute SOFT_HLUTNM of \sine_tmp[0]_i_1\ : label is "soft_lutpair11";
begin
\accoffsete_reg_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => accphase_reg_reg(29),
      Q => sel0(13)
    );
\accoffsete_reg_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => accphase_reg_reg(30),
      Q => phaseIdx(14)
    );
\accoffsete_reg_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => accphase_reg_reg(31),
      Q => phaseIdx(15)
    );
\accphase_reg[29]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => accphase_reg_reg(30),
      O => \accphase_reg[29]_i_2_n_0\
    );
\accphase_reg[29]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => accphase_reg_reg(29),
      O => \accphase_reg[29]_i_3_n_0\
    );
\accphase_reg_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \accphase_reg_reg[29]_i_1_n_7\,
      Q => accphase_reg_reg(29)
    );
\accphase_reg_reg[29]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 2) => \NLW_accphase_reg_reg[29]_i_1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \accphase_reg_reg[29]_i_1_n_2\,
      CO(0) => \accphase_reg_reg[29]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0011",
      O(3) => \NLW_accphase_reg_reg[29]_i_1_O_UNCONNECTED\(3),
      O(2) => \accphase_reg_reg[29]_i_1_n_5\,
      O(1) => \accphase_reg_reg[29]_i_1_n_6\,
      O(0) => \accphase_reg_reg[29]_i_1_n_7\,
      S(3) => '0',
      S(2) => accphase_reg_reg(31),
      S(1) => \accphase_reg[29]_i_2_n_0\,
      S(0) => \accphase_reg[29]_i_3_n_0\
    );
\accphase_reg_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \accphase_reg_reg[29]_i_1_n_6\,
      Q => accphase_reg_reg(30)
    );
\accphase_reg_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \accphase_reg_reg[29]_i_1_n_5\,
      Q => accphase_reg_reg(31)
    );
\cosine_tmp[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => \outsel_reg_reg_reg_n_0_[4]\,
      I1 => u_Wave_inst_n_17,
      I2 => \LUToutRegister_reg_reg[2]\(0),
      O => validcos(0)
    );
\cosine_tmp[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA800A8"
    )
        port map (
      I0 => \outsel_reg_reg_reg_n_0_[4]\,
      I1 => u_Wave_inst_n_17,
      I2 => \LUToutRegister_reg_reg[2]\(10),
      I3 => u_Wave_inst_n_16,
      I4 => uminus_cast_3(10),
      O => validcos(10)
    );
\cosine_tmp[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA800A8"
    )
        port map (
      I0 => \outsel_reg_reg_reg_n_0_[4]\,
      I1 => u_Wave_inst_n_17,
      I2 => \LUToutRegister_reg_reg[2]\(11),
      I3 => u_Wave_inst_n_16,
      I4 => uminus_cast_3(11),
      O => validcos(11)
    );
\cosine_tmp[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA800A8"
    )
        port map (
      I0 => \outsel_reg_reg_reg_n_0_[4]\,
      I1 => u_Wave_inst_n_17,
      I2 => \LUToutRegister_reg_reg[2]\(12),
      I3 => u_Wave_inst_n_16,
      I4 => uminus_cast_3(12),
      O => validcos(12)
    );
\cosine_tmp[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA800A8"
    )
        port map (
      I0 => \outsel_reg_reg_reg_n_0_[4]\,
      I1 => u_Wave_inst_n_17,
      I2 => \LUToutRegister_reg_reg[2]\(13),
      I3 => u_Wave_inst_n_16,
      I4 => uminus_cast_3(13),
      O => validcos(13)
    );
\cosine_tmp[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA800A8"
    )
        port map (
      I0 => \outsel_reg_reg_reg_n_0_[4]\,
      I1 => u_Wave_inst_n_17,
      I2 => \LUToutRegister_reg_reg[2]\(14),
      I3 => u_Wave_inst_n_16,
      I4 => uminus_cast_3(14),
      O => validcos(14)
    );
\cosine_tmp[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA200020"
    )
        port map (
      I0 => \outsel_reg_reg_reg_n_0_[4]\,
      I1 => u_Wave_inst_n_17,
      I2 => \LUToutRegister_reg_reg[2]\(15),
      I3 => u_Wave_inst_n_16,
      I4 => uminus_cast_3(15),
      O => validcos(15)
    );
\cosine_tmp[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA800A8"
    )
        port map (
      I0 => \outsel_reg_reg_reg_n_0_[4]\,
      I1 => u_Wave_inst_n_17,
      I2 => \LUToutRegister_reg_reg[2]\(1),
      I3 => u_Wave_inst_n_16,
      I4 => uminus_cast_3(1),
      O => validcos(1)
    );
\cosine_tmp[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA800A8"
    )
        port map (
      I0 => \outsel_reg_reg_reg_n_0_[4]\,
      I1 => u_Wave_inst_n_17,
      I2 => \LUToutRegister_reg_reg[2]\(2),
      I3 => u_Wave_inst_n_16,
      I4 => uminus_cast_3(2),
      O => validcos(2)
    );
\cosine_tmp[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA800A8"
    )
        port map (
      I0 => \outsel_reg_reg_reg_n_0_[4]\,
      I1 => u_Wave_inst_n_17,
      I2 => \LUToutRegister_reg_reg[2]\(3),
      I3 => u_Wave_inst_n_16,
      I4 => uminus_cast_3(3),
      O => validcos(3)
    );
\cosine_tmp[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA800A8"
    )
        port map (
      I0 => \outsel_reg_reg_reg_n_0_[4]\,
      I1 => u_Wave_inst_n_17,
      I2 => \LUToutRegister_reg_reg[2]\(4),
      I3 => u_Wave_inst_n_16,
      I4 => uminus_cast_3(4),
      O => validcos(4)
    );
\cosine_tmp[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA800A8"
    )
        port map (
      I0 => \outsel_reg_reg_reg_n_0_[4]\,
      I1 => u_Wave_inst_n_17,
      I2 => \LUToutRegister_reg_reg[2]\(5),
      I3 => u_Wave_inst_n_16,
      I4 => uminus_cast_3(5),
      O => validcos(5)
    );
\cosine_tmp[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA800A8"
    )
        port map (
      I0 => \outsel_reg_reg_reg_n_0_[4]\,
      I1 => u_Wave_inst_n_17,
      I2 => \LUToutRegister_reg_reg[2]\(6),
      I3 => u_Wave_inst_n_16,
      I4 => uminus_cast_3(6),
      O => validcos(6)
    );
\cosine_tmp[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA800A8"
    )
        port map (
      I0 => \outsel_reg_reg_reg_n_0_[4]\,
      I1 => u_Wave_inst_n_17,
      I2 => \LUToutRegister_reg_reg[2]\(7),
      I3 => u_Wave_inst_n_16,
      I4 => uminus_cast_3(7),
      O => validcos(7)
    );
\cosine_tmp[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA800A8"
    )
        port map (
      I0 => \outsel_reg_reg_reg_n_0_[4]\,
      I1 => u_Wave_inst_n_17,
      I2 => \LUToutRegister_reg_reg[2]\(8),
      I3 => u_Wave_inst_n_16,
      I4 => uminus_cast_3(8),
      O => validcos(8)
    );
\cosine_tmp[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA800A8"
    )
        port map (
      I0 => \outsel_reg_reg_reg_n_0_[4]\,
      I1 => u_Wave_inst_n_17,
      I2 => \LUToutRegister_reg_reg[2]\(9),
      I3 => u_Wave_inst_n_16,
      I4 => uminus_cast_3(9),
      O => validcos(9)
    );
\cosine_tmp_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => validcos(0),
      Q => QDDS(0)
    );
\cosine_tmp_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => validcos(10),
      Q => QDDS(10)
    );
\cosine_tmp_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => validcos(11),
      Q => QDDS(11)
    );
\cosine_tmp_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => validcos(12),
      Q => QDDS(12)
    );
\cosine_tmp_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => validcos(13),
      Q => QDDS(13)
    );
\cosine_tmp_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => validcos(14),
      Q => QDDS(14)
    );
\cosine_tmp_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => validcos(15),
      Q => QDDS(15)
    );
\cosine_tmp_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => validcos(1),
      Q => QDDS(1)
    );
\cosine_tmp_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => validcos(2),
      Q => QDDS(2)
    );
\cosine_tmp_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => validcos(3),
      Q => QDDS(3)
    );
\cosine_tmp_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => validcos(4),
      Q => QDDS(4)
    );
\cosine_tmp_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => validcos(5),
      Q => QDDS(5)
    );
\cosine_tmp_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => validcos(6),
      Q => QDDS(6)
    );
\cosine_tmp_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => validcos(7),
      Q => QDDS(7)
    );
\cosine_tmp_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => validcos(8),
      Q => QDDS(8)
    );
\cosine_tmp_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => validcos(9),
      Q => QDDS(9)
    );
\outsel_reg_reg_reg[2]_srl3_U0_u_handmadedds_u_NCO_HDL_Optimized_outsel_reg_reg_reg_c_1\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => '1',
      Q => \outsel_reg_reg_reg[2]_srl3_U0_u_handmadedds_u_NCO_HDL_Optimized_outsel_reg_reg_reg_c_1_n_0\
    );
\outsel_reg_reg_reg[3]_U0_u_handmadedds_u_NCO_HDL_Optimized_outsel_reg_reg_reg_c_2\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \outsel_reg_reg_reg[2]_srl3_U0_u_handmadedds_u_NCO_HDL_Optimized_outsel_reg_reg_reg_c_1_n_0\,
      Q => \outsel_reg_reg_reg[3]_U0_u_handmadedds_u_NCO_HDL_Optimized_outsel_reg_reg_reg_c_2_n_0\,
      R => '0'
    );
\outsel_reg_reg_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => outsel_reg_reg_reg_gate_n_0,
      Q => \outsel_reg_reg_reg_n_0_[4]\
    );
outsel_reg_reg_reg_c: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => '1',
      Q => outsel_reg_reg_reg_c_n_0
    );
outsel_reg_reg_reg_c_0: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => outsel_reg_reg_reg_c_n_0,
      Q => outsel_reg_reg_reg_c_0_n_0
    );
outsel_reg_reg_reg_c_1: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => outsel_reg_reg_reg_c_0_n_0,
      Q => outsel_reg_reg_reg_c_1_n_0
    );
outsel_reg_reg_reg_c_2: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => outsel_reg_reg_reg_c_1_n_0,
      Q => outsel_reg_reg_reg_c_2_n_0
    );
outsel_reg_reg_reg_gate: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \outsel_reg_reg_reg[3]_U0_u_handmadedds_u_NCO_HDL_Optimized_outsel_reg_reg_reg_c_2_n_0\,
      I1 => outsel_reg_reg_reg_c_2_n_0,
      O => outsel_reg_reg_reg_gate_n_0
    );
\sine_tmp[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => \outsel_reg_reg_reg_n_0_[4]\,
      I1 => u_Wave_inst_n_19,
      I2 => \LUToutRegister_reg_reg[2]\(0),
      O => validsine(0)
    );
\sine_tmp[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA800A8"
    )
        port map (
      I0 => \outsel_reg_reg_reg_n_0_[4]\,
      I1 => u_Wave_inst_n_19,
      I2 => \LUToutRegister_reg_reg[2]\(10),
      I3 => u_Wave_inst_n_18,
      I4 => uminus_cast_1(10),
      O => validsine(10)
    );
\sine_tmp[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA800A8"
    )
        port map (
      I0 => \outsel_reg_reg_reg_n_0_[4]\,
      I1 => u_Wave_inst_n_19,
      I2 => \LUToutRegister_reg_reg[2]\(11),
      I3 => u_Wave_inst_n_18,
      I4 => uminus_cast_1(11),
      O => validsine(11)
    );
\sine_tmp[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA800A8"
    )
        port map (
      I0 => \outsel_reg_reg_reg_n_0_[4]\,
      I1 => u_Wave_inst_n_19,
      I2 => \LUToutRegister_reg_reg[2]\(12),
      I3 => u_Wave_inst_n_18,
      I4 => uminus_cast_1(12),
      O => validsine(12)
    );
\sine_tmp[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA800A8"
    )
        port map (
      I0 => \outsel_reg_reg_reg_n_0_[4]\,
      I1 => u_Wave_inst_n_19,
      I2 => \LUToutRegister_reg_reg[2]\(13),
      I3 => u_Wave_inst_n_18,
      I4 => uminus_cast_1(13),
      O => validsine(13)
    );
\sine_tmp[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA800A8"
    )
        port map (
      I0 => \outsel_reg_reg_reg_n_0_[4]\,
      I1 => u_Wave_inst_n_19,
      I2 => \LUToutRegister_reg_reg[2]\(14),
      I3 => u_Wave_inst_n_18,
      I4 => uminus_cast_1(14),
      O => validsine(14)
    );
\sine_tmp[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA200020"
    )
        port map (
      I0 => \outsel_reg_reg_reg_n_0_[4]\,
      I1 => u_Wave_inst_n_19,
      I2 => \LUToutRegister_reg_reg[2]\(15),
      I3 => u_Wave_inst_n_18,
      I4 => uminus_cast_1(15),
      O => validsine(15)
    );
\sine_tmp[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA800A8"
    )
        port map (
      I0 => \outsel_reg_reg_reg_n_0_[4]\,
      I1 => u_Wave_inst_n_19,
      I2 => \LUToutRegister_reg_reg[2]\(1),
      I3 => u_Wave_inst_n_18,
      I4 => uminus_cast_1(1),
      O => validsine(1)
    );
\sine_tmp[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA800A8"
    )
        port map (
      I0 => \outsel_reg_reg_reg_n_0_[4]\,
      I1 => u_Wave_inst_n_19,
      I2 => \LUToutRegister_reg_reg[2]\(2),
      I3 => u_Wave_inst_n_18,
      I4 => uminus_cast_1(2),
      O => validsine(2)
    );
\sine_tmp[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA800A8"
    )
        port map (
      I0 => \outsel_reg_reg_reg_n_0_[4]\,
      I1 => u_Wave_inst_n_19,
      I2 => \LUToutRegister_reg_reg[2]\(3),
      I3 => u_Wave_inst_n_18,
      I4 => uminus_cast_1(3),
      O => validsine(3)
    );
\sine_tmp[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA800A8"
    )
        port map (
      I0 => \outsel_reg_reg_reg_n_0_[4]\,
      I1 => u_Wave_inst_n_19,
      I2 => \LUToutRegister_reg_reg[2]\(4),
      I3 => u_Wave_inst_n_18,
      I4 => uminus_cast_1(4),
      O => validsine(4)
    );
\sine_tmp[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA800A8"
    )
        port map (
      I0 => \outsel_reg_reg_reg_n_0_[4]\,
      I1 => u_Wave_inst_n_19,
      I2 => \LUToutRegister_reg_reg[2]\(5),
      I3 => u_Wave_inst_n_18,
      I4 => uminus_cast_1(5),
      O => validsine(5)
    );
\sine_tmp[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA800A8"
    )
        port map (
      I0 => \outsel_reg_reg_reg_n_0_[4]\,
      I1 => u_Wave_inst_n_19,
      I2 => \LUToutRegister_reg_reg[2]\(6),
      I3 => u_Wave_inst_n_18,
      I4 => uminus_cast_1(6),
      O => validsine(6)
    );
\sine_tmp[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA800A8"
    )
        port map (
      I0 => \outsel_reg_reg_reg_n_0_[4]\,
      I1 => u_Wave_inst_n_19,
      I2 => \LUToutRegister_reg_reg[2]\(7),
      I3 => u_Wave_inst_n_18,
      I4 => uminus_cast_1(7),
      O => validsine(7)
    );
\sine_tmp[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA800A8"
    )
        port map (
      I0 => \outsel_reg_reg_reg_n_0_[4]\,
      I1 => u_Wave_inst_n_19,
      I2 => \LUToutRegister_reg_reg[2]\(8),
      I3 => u_Wave_inst_n_18,
      I4 => uminus_cast_1(8),
      O => validsine(8)
    );
\sine_tmp[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA800A8"
    )
        port map (
      I0 => \outsel_reg_reg_reg_n_0_[4]\,
      I1 => u_Wave_inst_n_19,
      I2 => \LUToutRegister_reg_reg[2]\(9),
      I3 => u_Wave_inst_n_18,
      I4 => uminus_cast_1(9),
      O => validsine(9)
    );
\sine_tmp_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => validsine(0),
      Q => IDDS(0)
    );
\sine_tmp_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => validsine(10),
      Q => IDDS(10)
    );
\sine_tmp_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => validsine(11),
      Q => IDDS(11)
    );
\sine_tmp_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => validsine(12),
      Q => IDDS(12)
    );
\sine_tmp_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => validsine(13),
      Q => IDDS(13)
    );
\sine_tmp_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => validsine(14),
      Q => IDDS(14)
    );
\sine_tmp_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => validsine(15),
      Q => IDDS(15)
    );
\sine_tmp_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => validsine(1),
      Q => IDDS(1)
    );
\sine_tmp_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => validsine(2),
      Q => IDDS(2)
    );
\sine_tmp_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => validsine(3),
      Q => IDDS(3)
    );
\sine_tmp_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => validsine(4),
      Q => IDDS(4)
    );
\sine_tmp_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => validsine(5),
      Q => IDDS(5)
    );
\sine_tmp_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => validsine(6),
      Q => IDDS(6)
    );
\sine_tmp_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => validsine(7),
      Q => IDDS(7)
    );
\sine_tmp_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => validsine(8),
      Q => IDDS(8)
    );
\sine_tmp_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => validsine(9),
      Q => IDDS(9)
    );
u_Wave_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_WaveformGen
     port map (
      \LUToutRegister_reg_reg[1][0]_i_2\ => \LUToutRegister_reg_reg[1][0]_i_2\,
      \LUToutRegister_reg_reg[2]\(15 downto 0) => \LUToutRegister_reg_reg[2]\(15 downto 0),
      Q(2 downto 1) => phaseIdx(15 downto 14),
      Q(0) => sel0(13),
      clk => clk,
      \cosine_tmp_reg[15]\ => u_Wave_inst_n_16,
      \cosine_tmp_reg[15]_0\ => u_Wave_inst_n_17,
      outsel_reg_reg_reg_c_1 => outsel_reg_reg_reg_c_1_n_0,
      reset => reset,
      \sine_tmp_reg[15]\ => u_Wave_inst_n_18,
      \sine_tmp_reg[15]_0\ => u_Wave_inst_n_19,
      uminus_cast_1(14 downto 0) => uminus_cast_1(15 downto 1),
      uminus_cast_3(14 downto 0) => uminus_cast_3(15 downto 1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_handmadedds_block is
  port (
    IDDS : out STD_LOGIC_VECTOR ( 15 downto 0 );
    QDDS : out STD_LOGIC_VECTOR ( 15 downto 0 );
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    \LUToutRegister_reg_reg[1][0]_i_2\ : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_handmadedds_block;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_handmadedds_block is
begin
u_NCO_HDL_Optimized: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_NCO_HDL_Optimized
     port map (
      IDDS(15 downto 0) => IDDS(15 downto 0),
      \LUToutRegister_reg_reg[1][0]_i_2\ => \LUToutRegister_reg_reg[1][0]_i_2\,
      QDDS(15 downto 0) => QDDS(15 downto 0),
      clk => clk,
      reset => reset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_handmadedds is
  port (
    IDDS : out STD_LOGIC_VECTOR ( 15 downto 0 );
    QDDS : out STD_LOGIC_VECTOR ( 15 downto 0 );
    doutp : out STD_LOGIC_VECTOR ( 15 downto 0 );
    doutn : out STD_LOGIC_VECTOR ( 15 downto 0 );
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    \LUToutRegister_reg_reg[1][0]_i_2\ : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_handmadedds;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_handmadedds is
  signal \^idds\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \^qdds\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal bufOut_0 : STD_LOGIC;
  signal bufOut_1 : STD_LOGIC;
  signal bufOut_10 : STD_LOGIC;
  signal bufOut_11 : STD_LOGIC;
  signal bufOut_12 : STD_LOGIC;
  signal bufOut_13 : STD_LOGIC;
  signal bufOut_14 : STD_LOGIC;
  signal bufOut_15 : STD_LOGIC;
  signal bufOut_2 : STD_LOGIC;
  signal bufOut_3 : STD_LOGIC;
  signal bufOut_4 : STD_LOGIC;
  signal bufOut_5 : STD_LOGIC;
  signal bufOut_6 : STD_LOGIC;
  signal bufOut_7 : STD_LOGIC;
  signal bufOut_8 : STD_LOGIC;
  signal bufOut_9 : STD_LOGIC;
  signal \NLW_buffGenerate[0].ODDR_inst_R_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_buffGenerate[0].ODDR_inst_S_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_buffGenerate[10].ODDR_inst_R_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_buffGenerate[10].ODDR_inst_S_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_buffGenerate[11].ODDR_inst_R_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_buffGenerate[11].ODDR_inst_S_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_buffGenerate[12].ODDR_inst_R_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_buffGenerate[12].ODDR_inst_S_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_buffGenerate[13].ODDR_inst_R_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_buffGenerate[13].ODDR_inst_S_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_buffGenerate[14].ODDR_inst_R_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_buffGenerate[14].ODDR_inst_S_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_buffGenerate[15].ODDR_inst_R_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_buffGenerate[15].ODDR_inst_S_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_buffGenerate[1].ODDR_inst_R_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_buffGenerate[1].ODDR_inst_S_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_buffGenerate[2].ODDR_inst_R_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_buffGenerate[2].ODDR_inst_S_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_buffGenerate[3].ODDR_inst_R_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_buffGenerate[3].ODDR_inst_S_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_buffGenerate[4].ODDR_inst_R_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_buffGenerate[4].ODDR_inst_S_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_buffGenerate[5].ODDR_inst_R_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_buffGenerate[5].ODDR_inst_S_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_buffGenerate[6].ODDR_inst_R_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_buffGenerate[6].ODDR_inst_S_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_buffGenerate[7].ODDR_inst_R_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_buffGenerate[7].ODDR_inst_S_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_buffGenerate[8].ODDR_inst_R_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_buffGenerate[8].ODDR_inst_S_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_buffGenerate[9].ODDR_inst_R_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_buffGenerate[9].ODDR_inst_S_UNCONNECTED\ : STD_LOGIC;
  attribute CAPACITANCE : string;
  attribute CAPACITANCE of \buffGenerate[0].OBUFDS_inst\ : label is "DONT_CARE";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \buffGenerate[0].OBUFDS_inst\ : label is "OBUFDS";
  attribute box_type : string;
  attribute box_type of \buffGenerate[0].OBUFDS_inst\ : label is "PRIMITIVE";
  attribute \__SRVAL\ : string;
  attribute \__SRVAL\ of \buffGenerate[0].ODDR_inst\ : label is "TRUE";
  attribute box_type of \buffGenerate[0].ODDR_inst\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \buffGenerate[10].OBUFDS_inst\ : label is "DONT_CARE";
  attribute XILINX_LEGACY_PRIM of \buffGenerate[10].OBUFDS_inst\ : label is "OBUFDS";
  attribute box_type of \buffGenerate[10].OBUFDS_inst\ : label is "PRIMITIVE";
  attribute \__SRVAL\ of \buffGenerate[10].ODDR_inst\ : label is "TRUE";
  attribute box_type of \buffGenerate[10].ODDR_inst\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \buffGenerate[11].OBUFDS_inst\ : label is "DONT_CARE";
  attribute XILINX_LEGACY_PRIM of \buffGenerate[11].OBUFDS_inst\ : label is "OBUFDS";
  attribute box_type of \buffGenerate[11].OBUFDS_inst\ : label is "PRIMITIVE";
  attribute \__SRVAL\ of \buffGenerate[11].ODDR_inst\ : label is "TRUE";
  attribute box_type of \buffGenerate[11].ODDR_inst\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \buffGenerate[12].OBUFDS_inst\ : label is "DONT_CARE";
  attribute XILINX_LEGACY_PRIM of \buffGenerate[12].OBUFDS_inst\ : label is "OBUFDS";
  attribute box_type of \buffGenerate[12].OBUFDS_inst\ : label is "PRIMITIVE";
  attribute \__SRVAL\ of \buffGenerate[12].ODDR_inst\ : label is "TRUE";
  attribute box_type of \buffGenerate[12].ODDR_inst\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \buffGenerate[13].OBUFDS_inst\ : label is "DONT_CARE";
  attribute XILINX_LEGACY_PRIM of \buffGenerate[13].OBUFDS_inst\ : label is "OBUFDS";
  attribute box_type of \buffGenerate[13].OBUFDS_inst\ : label is "PRIMITIVE";
  attribute \__SRVAL\ of \buffGenerate[13].ODDR_inst\ : label is "TRUE";
  attribute box_type of \buffGenerate[13].ODDR_inst\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \buffGenerate[14].OBUFDS_inst\ : label is "DONT_CARE";
  attribute XILINX_LEGACY_PRIM of \buffGenerate[14].OBUFDS_inst\ : label is "OBUFDS";
  attribute box_type of \buffGenerate[14].OBUFDS_inst\ : label is "PRIMITIVE";
  attribute \__SRVAL\ of \buffGenerate[14].ODDR_inst\ : label is "TRUE";
  attribute box_type of \buffGenerate[14].ODDR_inst\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \buffGenerate[15].OBUFDS_inst\ : label is "DONT_CARE";
  attribute XILINX_LEGACY_PRIM of \buffGenerate[15].OBUFDS_inst\ : label is "OBUFDS";
  attribute box_type of \buffGenerate[15].OBUFDS_inst\ : label is "PRIMITIVE";
  attribute \__SRVAL\ of \buffGenerate[15].ODDR_inst\ : label is "TRUE";
  attribute box_type of \buffGenerate[15].ODDR_inst\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \buffGenerate[1].OBUFDS_inst\ : label is "DONT_CARE";
  attribute XILINX_LEGACY_PRIM of \buffGenerate[1].OBUFDS_inst\ : label is "OBUFDS";
  attribute box_type of \buffGenerate[1].OBUFDS_inst\ : label is "PRIMITIVE";
  attribute \__SRVAL\ of \buffGenerate[1].ODDR_inst\ : label is "TRUE";
  attribute box_type of \buffGenerate[1].ODDR_inst\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \buffGenerate[2].OBUFDS_inst\ : label is "DONT_CARE";
  attribute XILINX_LEGACY_PRIM of \buffGenerate[2].OBUFDS_inst\ : label is "OBUFDS";
  attribute box_type of \buffGenerate[2].OBUFDS_inst\ : label is "PRIMITIVE";
  attribute \__SRVAL\ of \buffGenerate[2].ODDR_inst\ : label is "TRUE";
  attribute box_type of \buffGenerate[2].ODDR_inst\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \buffGenerate[3].OBUFDS_inst\ : label is "DONT_CARE";
  attribute XILINX_LEGACY_PRIM of \buffGenerate[3].OBUFDS_inst\ : label is "OBUFDS";
  attribute box_type of \buffGenerate[3].OBUFDS_inst\ : label is "PRIMITIVE";
  attribute \__SRVAL\ of \buffGenerate[3].ODDR_inst\ : label is "TRUE";
  attribute box_type of \buffGenerate[3].ODDR_inst\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \buffGenerate[4].OBUFDS_inst\ : label is "DONT_CARE";
  attribute XILINX_LEGACY_PRIM of \buffGenerate[4].OBUFDS_inst\ : label is "OBUFDS";
  attribute box_type of \buffGenerate[4].OBUFDS_inst\ : label is "PRIMITIVE";
  attribute \__SRVAL\ of \buffGenerate[4].ODDR_inst\ : label is "TRUE";
  attribute box_type of \buffGenerate[4].ODDR_inst\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \buffGenerate[5].OBUFDS_inst\ : label is "DONT_CARE";
  attribute XILINX_LEGACY_PRIM of \buffGenerate[5].OBUFDS_inst\ : label is "OBUFDS";
  attribute box_type of \buffGenerate[5].OBUFDS_inst\ : label is "PRIMITIVE";
  attribute \__SRVAL\ of \buffGenerate[5].ODDR_inst\ : label is "TRUE";
  attribute box_type of \buffGenerate[5].ODDR_inst\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \buffGenerate[6].OBUFDS_inst\ : label is "DONT_CARE";
  attribute XILINX_LEGACY_PRIM of \buffGenerate[6].OBUFDS_inst\ : label is "OBUFDS";
  attribute box_type of \buffGenerate[6].OBUFDS_inst\ : label is "PRIMITIVE";
  attribute \__SRVAL\ of \buffGenerate[6].ODDR_inst\ : label is "TRUE";
  attribute box_type of \buffGenerate[6].ODDR_inst\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \buffGenerate[7].OBUFDS_inst\ : label is "DONT_CARE";
  attribute XILINX_LEGACY_PRIM of \buffGenerate[7].OBUFDS_inst\ : label is "OBUFDS";
  attribute box_type of \buffGenerate[7].OBUFDS_inst\ : label is "PRIMITIVE";
  attribute \__SRVAL\ of \buffGenerate[7].ODDR_inst\ : label is "TRUE";
  attribute box_type of \buffGenerate[7].ODDR_inst\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \buffGenerate[8].OBUFDS_inst\ : label is "DONT_CARE";
  attribute XILINX_LEGACY_PRIM of \buffGenerate[8].OBUFDS_inst\ : label is "OBUFDS";
  attribute box_type of \buffGenerate[8].OBUFDS_inst\ : label is "PRIMITIVE";
  attribute \__SRVAL\ of \buffGenerate[8].ODDR_inst\ : label is "TRUE";
  attribute box_type of \buffGenerate[8].ODDR_inst\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \buffGenerate[9].OBUFDS_inst\ : label is "DONT_CARE";
  attribute XILINX_LEGACY_PRIM of \buffGenerate[9].OBUFDS_inst\ : label is "OBUFDS";
  attribute box_type of \buffGenerate[9].OBUFDS_inst\ : label is "PRIMITIVE";
  attribute \__SRVAL\ of \buffGenerate[9].ODDR_inst\ : label is "TRUE";
  attribute box_type of \buffGenerate[9].ODDR_inst\ : label is "PRIMITIVE";
begin
  IDDS(15 downto 0) <= \^idds\(15 downto 0);
  QDDS(15 downto 0) <= \^qdds\(15 downto 0);
\buffGenerate[0].OBUFDS_inst\: unisim.vcomponents.OBUFDS
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => bufOut_0,
      O => doutp(0),
      OB => doutn(0)
    );
\buffGenerate[0].ODDR_inst\: unisim.vcomponents.ODDR
    generic map(
      DDR_CLK_EDGE => "SAME_EDGE",
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      SRTYPE => "SYNC"
    )
        port map (
      C => clk,
      CE => '1',
      D1 => \^idds\(0),
      D2 => \^qdds\(0),
      Q => bufOut_0,
      R => \NLW_buffGenerate[0].ODDR_inst_R_UNCONNECTED\,
      S => \NLW_buffGenerate[0].ODDR_inst_S_UNCONNECTED\
    );
\buffGenerate[10].OBUFDS_inst\: unisim.vcomponents.OBUFDS
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => bufOut_10,
      O => doutp(10),
      OB => doutn(10)
    );
\buffGenerate[10].ODDR_inst\: unisim.vcomponents.ODDR
    generic map(
      DDR_CLK_EDGE => "SAME_EDGE",
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      SRTYPE => "SYNC"
    )
        port map (
      C => clk,
      CE => '1',
      D1 => \^idds\(10),
      D2 => \^qdds\(10),
      Q => bufOut_10,
      R => \NLW_buffGenerate[10].ODDR_inst_R_UNCONNECTED\,
      S => \NLW_buffGenerate[10].ODDR_inst_S_UNCONNECTED\
    );
\buffGenerate[11].OBUFDS_inst\: unisim.vcomponents.OBUFDS
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => bufOut_11,
      O => doutp(11),
      OB => doutn(11)
    );
\buffGenerate[11].ODDR_inst\: unisim.vcomponents.ODDR
    generic map(
      DDR_CLK_EDGE => "SAME_EDGE",
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      SRTYPE => "SYNC"
    )
        port map (
      C => clk,
      CE => '1',
      D1 => \^idds\(11),
      D2 => \^qdds\(11),
      Q => bufOut_11,
      R => \NLW_buffGenerate[11].ODDR_inst_R_UNCONNECTED\,
      S => \NLW_buffGenerate[11].ODDR_inst_S_UNCONNECTED\
    );
\buffGenerate[12].OBUFDS_inst\: unisim.vcomponents.OBUFDS
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => bufOut_12,
      O => doutp(12),
      OB => doutn(12)
    );
\buffGenerate[12].ODDR_inst\: unisim.vcomponents.ODDR
    generic map(
      DDR_CLK_EDGE => "SAME_EDGE",
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      SRTYPE => "SYNC"
    )
        port map (
      C => clk,
      CE => '1',
      D1 => \^idds\(12),
      D2 => \^qdds\(12),
      Q => bufOut_12,
      R => \NLW_buffGenerate[12].ODDR_inst_R_UNCONNECTED\,
      S => \NLW_buffGenerate[12].ODDR_inst_S_UNCONNECTED\
    );
\buffGenerate[13].OBUFDS_inst\: unisim.vcomponents.OBUFDS
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => bufOut_13,
      O => doutp(13),
      OB => doutn(13)
    );
\buffGenerate[13].ODDR_inst\: unisim.vcomponents.ODDR
    generic map(
      DDR_CLK_EDGE => "SAME_EDGE",
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      SRTYPE => "SYNC"
    )
        port map (
      C => clk,
      CE => '1',
      D1 => \^idds\(13),
      D2 => \^qdds\(13),
      Q => bufOut_13,
      R => \NLW_buffGenerate[13].ODDR_inst_R_UNCONNECTED\,
      S => \NLW_buffGenerate[13].ODDR_inst_S_UNCONNECTED\
    );
\buffGenerate[14].OBUFDS_inst\: unisim.vcomponents.OBUFDS
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => bufOut_14,
      O => doutp(14),
      OB => doutn(14)
    );
\buffGenerate[14].ODDR_inst\: unisim.vcomponents.ODDR
    generic map(
      DDR_CLK_EDGE => "SAME_EDGE",
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      SRTYPE => "SYNC"
    )
        port map (
      C => clk,
      CE => '1',
      D1 => \^idds\(14),
      D2 => \^qdds\(14),
      Q => bufOut_14,
      R => \NLW_buffGenerate[14].ODDR_inst_R_UNCONNECTED\,
      S => \NLW_buffGenerate[14].ODDR_inst_S_UNCONNECTED\
    );
\buffGenerate[15].OBUFDS_inst\: unisim.vcomponents.OBUFDS
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => bufOut_15,
      O => doutp(15),
      OB => doutn(15)
    );
\buffGenerate[15].ODDR_inst\: unisim.vcomponents.ODDR
    generic map(
      DDR_CLK_EDGE => "SAME_EDGE",
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      SRTYPE => "SYNC"
    )
        port map (
      C => clk,
      CE => '1',
      D1 => \^idds\(15),
      D2 => \^qdds\(15),
      Q => bufOut_15,
      R => \NLW_buffGenerate[15].ODDR_inst_R_UNCONNECTED\,
      S => \NLW_buffGenerate[15].ODDR_inst_S_UNCONNECTED\
    );
\buffGenerate[1].OBUFDS_inst\: unisim.vcomponents.OBUFDS
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => bufOut_1,
      O => doutp(1),
      OB => doutn(1)
    );
\buffGenerate[1].ODDR_inst\: unisim.vcomponents.ODDR
    generic map(
      DDR_CLK_EDGE => "SAME_EDGE",
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      SRTYPE => "SYNC"
    )
        port map (
      C => clk,
      CE => '1',
      D1 => \^idds\(1),
      D2 => \^qdds\(1),
      Q => bufOut_1,
      R => \NLW_buffGenerate[1].ODDR_inst_R_UNCONNECTED\,
      S => \NLW_buffGenerate[1].ODDR_inst_S_UNCONNECTED\
    );
\buffGenerate[2].OBUFDS_inst\: unisim.vcomponents.OBUFDS
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => bufOut_2,
      O => doutp(2),
      OB => doutn(2)
    );
\buffGenerate[2].ODDR_inst\: unisim.vcomponents.ODDR
    generic map(
      DDR_CLK_EDGE => "SAME_EDGE",
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      SRTYPE => "SYNC"
    )
        port map (
      C => clk,
      CE => '1',
      D1 => \^idds\(2),
      D2 => \^qdds\(2),
      Q => bufOut_2,
      R => \NLW_buffGenerate[2].ODDR_inst_R_UNCONNECTED\,
      S => \NLW_buffGenerate[2].ODDR_inst_S_UNCONNECTED\
    );
\buffGenerate[3].OBUFDS_inst\: unisim.vcomponents.OBUFDS
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => bufOut_3,
      O => doutp(3),
      OB => doutn(3)
    );
\buffGenerate[3].ODDR_inst\: unisim.vcomponents.ODDR
    generic map(
      DDR_CLK_EDGE => "SAME_EDGE",
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      SRTYPE => "SYNC"
    )
        port map (
      C => clk,
      CE => '1',
      D1 => \^idds\(3),
      D2 => \^qdds\(3),
      Q => bufOut_3,
      R => \NLW_buffGenerate[3].ODDR_inst_R_UNCONNECTED\,
      S => \NLW_buffGenerate[3].ODDR_inst_S_UNCONNECTED\
    );
\buffGenerate[4].OBUFDS_inst\: unisim.vcomponents.OBUFDS
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => bufOut_4,
      O => doutp(4),
      OB => doutn(4)
    );
\buffGenerate[4].ODDR_inst\: unisim.vcomponents.ODDR
    generic map(
      DDR_CLK_EDGE => "SAME_EDGE",
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      SRTYPE => "SYNC"
    )
        port map (
      C => clk,
      CE => '1',
      D1 => \^idds\(4),
      D2 => \^qdds\(4),
      Q => bufOut_4,
      R => \NLW_buffGenerate[4].ODDR_inst_R_UNCONNECTED\,
      S => \NLW_buffGenerate[4].ODDR_inst_S_UNCONNECTED\
    );
\buffGenerate[5].OBUFDS_inst\: unisim.vcomponents.OBUFDS
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => bufOut_5,
      O => doutp(5),
      OB => doutn(5)
    );
\buffGenerate[5].ODDR_inst\: unisim.vcomponents.ODDR
    generic map(
      DDR_CLK_EDGE => "SAME_EDGE",
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      SRTYPE => "SYNC"
    )
        port map (
      C => clk,
      CE => '1',
      D1 => \^idds\(5),
      D2 => \^qdds\(5),
      Q => bufOut_5,
      R => \NLW_buffGenerate[5].ODDR_inst_R_UNCONNECTED\,
      S => \NLW_buffGenerate[5].ODDR_inst_S_UNCONNECTED\
    );
\buffGenerate[6].OBUFDS_inst\: unisim.vcomponents.OBUFDS
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => bufOut_6,
      O => doutp(6),
      OB => doutn(6)
    );
\buffGenerate[6].ODDR_inst\: unisim.vcomponents.ODDR
    generic map(
      DDR_CLK_EDGE => "SAME_EDGE",
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      SRTYPE => "SYNC"
    )
        port map (
      C => clk,
      CE => '1',
      D1 => \^idds\(6),
      D2 => \^qdds\(6),
      Q => bufOut_6,
      R => \NLW_buffGenerate[6].ODDR_inst_R_UNCONNECTED\,
      S => \NLW_buffGenerate[6].ODDR_inst_S_UNCONNECTED\
    );
\buffGenerate[7].OBUFDS_inst\: unisim.vcomponents.OBUFDS
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => bufOut_7,
      O => doutp(7),
      OB => doutn(7)
    );
\buffGenerate[7].ODDR_inst\: unisim.vcomponents.ODDR
    generic map(
      DDR_CLK_EDGE => "SAME_EDGE",
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      SRTYPE => "SYNC"
    )
        port map (
      C => clk,
      CE => '1',
      D1 => \^idds\(7),
      D2 => \^qdds\(7),
      Q => bufOut_7,
      R => \NLW_buffGenerate[7].ODDR_inst_R_UNCONNECTED\,
      S => \NLW_buffGenerate[7].ODDR_inst_S_UNCONNECTED\
    );
\buffGenerate[8].OBUFDS_inst\: unisim.vcomponents.OBUFDS
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => bufOut_8,
      O => doutp(8),
      OB => doutn(8)
    );
\buffGenerate[8].ODDR_inst\: unisim.vcomponents.ODDR
    generic map(
      DDR_CLK_EDGE => "SAME_EDGE",
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      SRTYPE => "SYNC"
    )
        port map (
      C => clk,
      CE => '1',
      D1 => \^idds\(8),
      D2 => \^qdds\(8),
      Q => bufOut_8,
      R => \NLW_buffGenerate[8].ODDR_inst_R_UNCONNECTED\,
      S => \NLW_buffGenerate[8].ODDR_inst_S_UNCONNECTED\
    );
\buffGenerate[9].OBUFDS_inst\: unisim.vcomponents.OBUFDS
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => bufOut_9,
      O => doutp(9),
      OB => doutn(9)
    );
\buffGenerate[9].ODDR_inst\: unisim.vcomponents.ODDR
    generic map(
      DDR_CLK_EDGE => "SAME_EDGE",
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      SRTYPE => "SYNC"
    )
        port map (
      C => clk,
      CE => '1',
      D1 => \^idds\(9),
      D2 => \^qdds\(9),
      Q => bufOut_9,
      R => \NLW_buffGenerate[9].ODDR_inst_R_UNCONNECTED\,
      S => \NLW_buffGenerate[9].ODDR_inst_S_UNCONNECTED\
    );
u_handmadedds: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_handmadedds_block
     port map (
      IDDS(15 downto 0) => \^idds\(15 downto 0),
      \LUToutRegister_reg_reg[1][0]_i_2\ => \LUToutRegister_reg_reg[1][0]_i_2\,
      QDDS(15 downto 0) => \^qdds\(15 downto 0),
      clk => clk,
      reset => reset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    doutp : out STD_LOGIC_VECTOR ( 15 downto 0 );
    doutn : out STD_LOGIC_VECTOR ( 15 downto 0 );
    IDDS : out STD_LOGIC_VECTOR ( 15 downto 0 );
    QDDS : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "dac_design_handmadedds_0_0,handmadedds,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "handmadedds,Vivado 2018.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \LUToutRegister_reg_reg[1][0]_i_2_n_0\ : STD_LOGIC;
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 150000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1";
  attribute x_interface_info of reset : signal is "xilinx.com:signal:reset:1.0 reset RST";
  attribute x_interface_parameter of reset : signal is "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW";
begin
\LUToutRegister_reg_reg[1][0]_i_2\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => '1',
      Q => \LUToutRegister_reg_reg[1][0]_i_2_n_0\
    );
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_handmadedds
     port map (
      IDDS(15 downto 0) => IDDS(15 downto 0),
      \LUToutRegister_reg_reg[1][0]_i_2\ => \LUToutRegister_reg_reg[1][0]_i_2_n_0\,
      QDDS(15 downto 0) => QDDS(15 downto 0),
      clk => clk,
      doutn(15 downto 0) => doutn(15 downto 0),
      doutp(15 downto 0) => doutp(15 downto 0),
      reset => reset
    );
end STRUCTURE;
