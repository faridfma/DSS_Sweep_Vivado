// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Thu Dec  5 18:18:11 2024
// Host        : DVANOFFICE-071 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ dds_compiler_0_sim_netlist.v
// Design      : dds_compiler_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k325tlffg676-2L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dds_compiler_0,dds_compiler_v6_0_17,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dds_compiler_v6_0_17,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (aclk,
    s_axis_phase_tvalid,
    s_axis_phase_tdata,
    m_axis_data_tvalid,
    m_axis_data_tdata);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 aclk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME aclk_intf, ASSOCIATED_BUSIF M_AXIS_PHASE:S_AXIS_CONFIG:M_AXIS_DATA:S_AXIS_PHASE, ASSOCIATED_RESET aresetn, ASSOCIATED_CLKEN aclken, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0" *) input aclk;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS_PHASE TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXIS_PHASE, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_phase_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS_PHASE TDATA" *) input [31:0]s_axis_phase_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS_DATA TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME M_AXIS_DATA, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_data_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS_DATA TDATA" *) output [7:0]m_axis_data_tdata;

  wire aclk;
  wire [7:0]m_axis_data_tdata;
  wire m_axis_data_tvalid;
  wire [31:0]s_axis_phase_tdata;
  wire s_axis_phase_tvalid;
  wire NLW_U0_debug_axi_resync_in_UNCONNECTED;
  wire NLW_U0_debug_core_nd_UNCONNECTED;
  wire NLW_U0_debug_phase_nd_UNCONNECTED;
  wire NLW_U0_event_phase_in_invalid_UNCONNECTED;
  wire NLW_U0_event_pinc_invalid_UNCONNECTED;
  wire NLW_U0_event_poff_invalid_UNCONNECTED;
  wire NLW_U0_event_s_config_tlast_missing_UNCONNECTED;
  wire NLW_U0_event_s_config_tlast_unexpected_UNCONNECTED;
  wire NLW_U0_event_s_phase_chanid_incorrect_UNCONNECTED;
  wire NLW_U0_event_s_phase_tlast_missing_UNCONNECTED;
  wire NLW_U0_event_s_phase_tlast_unexpected_UNCONNECTED;
  wire NLW_U0_m_axis_data_tlast_UNCONNECTED;
  wire NLW_U0_m_axis_phase_tlast_UNCONNECTED;
  wire NLW_U0_m_axis_phase_tvalid_UNCONNECTED;
  wire NLW_U0_s_axis_config_tready_UNCONNECTED;
  wire NLW_U0_s_axis_phase_tready_UNCONNECTED;
  wire [0:0]NLW_U0_debug_axi_chan_in_UNCONNECTED;
  wire [27:0]NLW_U0_debug_axi_pinc_in_UNCONNECTED;
  wire [27:0]NLW_U0_debug_axi_poff_in_UNCONNECTED;
  wire [27:0]NLW_U0_debug_phase_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_data_tuser_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_phase_tdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_phase_tuser_UNCONNECTED;

  (* C_ACCUMULATOR_WIDTH = "28" *) 
  (* C_AMPLITUDE = "0" *) 
  (* C_CHANNELS = "1" *) 
  (* C_CHAN_WIDTH = "1" *) 
  (* C_DEBUG_INTERFACE = "0" *) 
  (* C_HAS_ACLKEN = "0" *) 
  (* C_HAS_ARESETN = "0" *) 
  (* C_HAS_M_DATA = "1" *) 
  (* C_HAS_M_PHASE = "0" *) 
  (* C_HAS_PHASEGEN = "1" *) 
  (* C_HAS_PHASE_OUT = "0" *) 
  (* C_HAS_SINCOS = "1" *) 
  (* C_HAS_S_CONFIG = "0" *) 
  (* C_HAS_S_PHASE = "1" *) 
  (* C_HAS_TLAST = "0" *) 
  (* C_HAS_TREADY = "0" *) 
  (* C_LATENCY = "3" *) 
  (* C_MEM_TYPE = "1" *) 
  (* C_MODE_OF_OPERATION = "0" *) 
  (* C_MODULUS = "9" *) 
  (* C_M_DATA_HAS_TUSER = "0" *) 
  (* C_M_DATA_TDATA_WIDTH = "8" *) 
  (* C_M_DATA_TUSER_WIDTH = "1" *) 
  (* C_M_PHASE_HAS_TUSER = "0" *) 
  (* C_M_PHASE_TDATA_WIDTH = "1" *) 
  (* C_M_PHASE_TUSER_WIDTH = "1" *) 
  (* C_NEGATIVE_COSINE = "0" *) 
  (* C_NEGATIVE_SINE = "0" *) 
  (* C_NOISE_SHAPING = "0" *) 
  (* C_OPTIMISE_GOAL = "0" *) 
  (* C_OUTPUTS_REQUIRED = "0" *) 
  (* C_OUTPUT_FORM = "0" *) 
  (* C_OUTPUT_WIDTH = "8" *) 
  (* C_PHASE_ANGLE_WIDTH = "8" *) 
  (* C_PHASE_INCREMENT = "3" *) 
  (* C_PHASE_INCREMENT_VALUE = "0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0" *) 
  (* C_PHASE_OFFSET = "0" *) 
  (* C_PHASE_OFFSET_VALUE = "0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0" *) 
  (* C_POR_MODE = "0" *) 
  (* C_RESYNC = "0" *) 
  (* C_S_CONFIG_SYNC_MODE = "0" *) 
  (* C_S_CONFIG_TDATA_WIDTH = "1" *) 
  (* C_S_PHASE_HAS_TUSER = "0" *) 
  (* C_S_PHASE_TDATA_WIDTH = "32" *) 
  (* C_S_PHASE_TUSER_WIDTH = "1" *) 
  (* C_USE_DSP48 = "0" *) 
  (* C_XDEVICEFAMILY = "kintex7l" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dds_compiler_v6_0_17 U0
       (.aclk(aclk),
        .aclken(1'b1),
        .aresetn(1'b1),
        .debug_axi_chan_in(NLW_U0_debug_axi_chan_in_UNCONNECTED[0]),
        .debug_axi_pinc_in(NLW_U0_debug_axi_pinc_in_UNCONNECTED[27:0]),
        .debug_axi_poff_in(NLW_U0_debug_axi_poff_in_UNCONNECTED[27:0]),
        .debug_axi_resync_in(NLW_U0_debug_axi_resync_in_UNCONNECTED),
        .debug_core_nd(NLW_U0_debug_core_nd_UNCONNECTED),
        .debug_phase(NLW_U0_debug_phase_UNCONNECTED[27:0]),
        .debug_phase_nd(NLW_U0_debug_phase_nd_UNCONNECTED),
        .event_phase_in_invalid(NLW_U0_event_phase_in_invalid_UNCONNECTED),
        .event_pinc_invalid(NLW_U0_event_pinc_invalid_UNCONNECTED),
        .event_poff_invalid(NLW_U0_event_poff_invalid_UNCONNECTED),
        .event_s_config_tlast_missing(NLW_U0_event_s_config_tlast_missing_UNCONNECTED),
        .event_s_config_tlast_unexpected(NLW_U0_event_s_config_tlast_unexpected_UNCONNECTED),
        .event_s_phase_chanid_incorrect(NLW_U0_event_s_phase_chanid_incorrect_UNCONNECTED),
        .event_s_phase_tlast_missing(NLW_U0_event_s_phase_tlast_missing_UNCONNECTED),
        .event_s_phase_tlast_unexpected(NLW_U0_event_s_phase_tlast_unexpected_UNCONNECTED),
        .m_axis_data_tdata(m_axis_data_tdata),
        .m_axis_data_tlast(NLW_U0_m_axis_data_tlast_UNCONNECTED),
        .m_axis_data_tready(1'b0),
        .m_axis_data_tuser(NLW_U0_m_axis_data_tuser_UNCONNECTED[0]),
        .m_axis_data_tvalid(m_axis_data_tvalid),
        .m_axis_phase_tdata(NLW_U0_m_axis_phase_tdata_UNCONNECTED[0]),
        .m_axis_phase_tlast(NLW_U0_m_axis_phase_tlast_UNCONNECTED),
        .m_axis_phase_tready(1'b0),
        .m_axis_phase_tuser(NLW_U0_m_axis_phase_tuser_UNCONNECTED[0]),
        .m_axis_phase_tvalid(NLW_U0_m_axis_phase_tvalid_UNCONNECTED),
        .s_axis_config_tdata(1'b0),
        .s_axis_config_tlast(1'b0),
        .s_axis_config_tready(NLW_U0_s_axis_config_tready_UNCONNECTED),
        .s_axis_config_tvalid(1'b0),
        .s_axis_phase_tdata(s_axis_phase_tdata),
        .s_axis_phase_tlast(1'b0),
        .s_axis_phase_tready(NLW_U0_s_axis_phase_tready_UNCONNECTED),
        .s_axis_phase_tuser(1'b0),
        .s_axis_phase_tvalid(s_axis_phase_tvalid));
endmodule

(* C_ACCUMULATOR_WIDTH = "28" *) (* C_AMPLITUDE = "0" *) (* C_CHANNELS = "1" *) 
(* C_CHAN_WIDTH = "1" *) (* C_DEBUG_INTERFACE = "0" *) (* C_HAS_ACLKEN = "0" *) 
(* C_HAS_ARESETN = "0" *) (* C_HAS_M_DATA = "1" *) (* C_HAS_M_PHASE = "0" *) 
(* C_HAS_PHASEGEN = "1" *) (* C_HAS_PHASE_OUT = "0" *) (* C_HAS_SINCOS = "1" *) 
(* C_HAS_S_CONFIG = "0" *) (* C_HAS_S_PHASE = "1" *) (* C_HAS_TLAST = "0" *) 
(* C_HAS_TREADY = "0" *) (* C_LATENCY = "3" *) (* C_MEM_TYPE = "1" *) 
(* C_MODE_OF_OPERATION = "0" *) (* C_MODULUS = "9" *) (* C_M_DATA_HAS_TUSER = "0" *) 
(* C_M_DATA_TDATA_WIDTH = "8" *) (* C_M_DATA_TUSER_WIDTH = "1" *) (* C_M_PHASE_HAS_TUSER = "0" *) 
(* C_M_PHASE_TDATA_WIDTH = "1" *) (* C_M_PHASE_TUSER_WIDTH = "1" *) (* C_NEGATIVE_COSINE = "0" *) 
(* C_NEGATIVE_SINE = "0" *) (* C_NOISE_SHAPING = "0" *) (* C_OPTIMISE_GOAL = "0" *) 
(* C_OUTPUTS_REQUIRED = "0" *) (* C_OUTPUT_FORM = "0" *) (* C_OUTPUT_WIDTH = "8" *) 
(* C_PHASE_ANGLE_WIDTH = "8" *) (* C_PHASE_INCREMENT = "3" *) (* C_PHASE_INCREMENT_VALUE = "0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0" *) 
(* C_PHASE_OFFSET = "0" *) (* C_PHASE_OFFSET_VALUE = "0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0" *) (* C_POR_MODE = "0" *) 
(* C_RESYNC = "0" *) (* C_S_CONFIG_SYNC_MODE = "0" *) (* C_S_CONFIG_TDATA_WIDTH = "1" *) 
(* C_S_PHASE_HAS_TUSER = "0" *) (* C_S_PHASE_TDATA_WIDTH = "32" *) (* C_S_PHASE_TUSER_WIDTH = "1" *) 
(* C_USE_DSP48 = "0" *) (* C_XDEVICEFAMILY = "kintex7l" *) (* downgradeipidentifiedwarnings = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dds_compiler_v6_0_17
   (aclk,
    aclken,
    aresetn,
    s_axis_phase_tvalid,
    s_axis_phase_tready,
    s_axis_phase_tdata,
    s_axis_phase_tlast,
    s_axis_phase_tuser,
    s_axis_config_tvalid,
    s_axis_config_tready,
    s_axis_config_tdata,
    s_axis_config_tlast,
    m_axis_data_tvalid,
    m_axis_data_tready,
    m_axis_data_tdata,
    m_axis_data_tlast,
    m_axis_data_tuser,
    m_axis_phase_tvalid,
    m_axis_phase_tready,
    m_axis_phase_tdata,
    m_axis_phase_tlast,
    m_axis_phase_tuser,
    event_pinc_invalid,
    event_poff_invalid,
    event_phase_in_invalid,
    event_s_phase_tlast_missing,
    event_s_phase_tlast_unexpected,
    event_s_phase_chanid_incorrect,
    event_s_config_tlast_missing,
    event_s_config_tlast_unexpected,
    debug_axi_pinc_in,
    debug_axi_poff_in,
    debug_axi_resync_in,
    debug_axi_chan_in,
    debug_core_nd,
    debug_phase,
    debug_phase_nd);
  input aclk;
  input aclken;
  input aresetn;
  input s_axis_phase_tvalid;
  output s_axis_phase_tready;
  input [31:0]s_axis_phase_tdata;
  input s_axis_phase_tlast;
  input [0:0]s_axis_phase_tuser;
  input s_axis_config_tvalid;
  output s_axis_config_tready;
  input [0:0]s_axis_config_tdata;
  input s_axis_config_tlast;
  output m_axis_data_tvalid;
  input m_axis_data_tready;
  output [7:0]m_axis_data_tdata;
  output m_axis_data_tlast;
  output [0:0]m_axis_data_tuser;
  output m_axis_phase_tvalid;
  input m_axis_phase_tready;
  output [0:0]m_axis_phase_tdata;
  output m_axis_phase_tlast;
  output [0:0]m_axis_phase_tuser;
  output event_pinc_invalid;
  output event_poff_invalid;
  output event_phase_in_invalid;
  output event_s_phase_tlast_missing;
  output event_s_phase_tlast_unexpected;
  output event_s_phase_chanid_incorrect;
  output event_s_config_tlast_missing;
  output event_s_config_tlast_unexpected;
  output [27:0]debug_axi_pinc_in;
  output [27:0]debug_axi_poff_in;
  output debug_axi_resync_in;
  output [0:0]debug_axi_chan_in;
  output debug_core_nd;
  output [27:0]debug_phase;
  output debug_phase_nd;

  wire \<const0> ;
  wire \<const1> ;
  wire aclk;
  wire event_s_phase_tlast_missing;
  wire [7:0]m_axis_data_tdata;
  wire m_axis_data_tvalid;
  wire [31:0]s_axis_phase_tdata;
  wire s_axis_phase_tvalid;
  wire NLW_i_synth_debug_axi_resync_in_UNCONNECTED;
  wire NLW_i_synth_debug_core_nd_UNCONNECTED;
  wire NLW_i_synth_debug_phase_nd_UNCONNECTED;
  wire NLW_i_synth_event_phase_in_invalid_UNCONNECTED;
  wire NLW_i_synth_event_pinc_invalid_UNCONNECTED;
  wire NLW_i_synth_event_poff_invalid_UNCONNECTED;
  wire NLW_i_synth_event_s_config_tlast_missing_UNCONNECTED;
  wire NLW_i_synth_event_s_config_tlast_unexpected_UNCONNECTED;
  wire NLW_i_synth_event_s_phase_chanid_incorrect_UNCONNECTED;
  wire NLW_i_synth_event_s_phase_tlast_unexpected_UNCONNECTED;
  wire NLW_i_synth_m_axis_data_tlast_UNCONNECTED;
  wire NLW_i_synth_m_axis_phase_tlast_UNCONNECTED;
  wire NLW_i_synth_m_axis_phase_tvalid_UNCONNECTED;
  wire NLW_i_synth_s_axis_config_tready_UNCONNECTED;
  wire NLW_i_synth_s_axis_phase_tready_UNCONNECTED;
  wire [0:0]NLW_i_synth_debug_axi_chan_in_UNCONNECTED;
  wire [27:0]NLW_i_synth_debug_axi_pinc_in_UNCONNECTED;
  wire [27:0]NLW_i_synth_debug_axi_poff_in_UNCONNECTED;
  wire [27:0]NLW_i_synth_debug_phase_UNCONNECTED;
  wire [0:0]NLW_i_synth_m_axis_data_tuser_UNCONNECTED;
  wire [0:0]NLW_i_synth_m_axis_phase_tdata_UNCONNECTED;
  wire [0:0]NLW_i_synth_m_axis_phase_tuser_UNCONNECTED;

  assign debug_axi_chan_in[0] = \<const0> ;
  assign debug_axi_pinc_in[27] = \<const0> ;
  assign debug_axi_pinc_in[26] = \<const0> ;
  assign debug_axi_pinc_in[25] = \<const0> ;
  assign debug_axi_pinc_in[24] = \<const0> ;
  assign debug_axi_pinc_in[23] = \<const0> ;
  assign debug_axi_pinc_in[22] = \<const0> ;
  assign debug_axi_pinc_in[21] = \<const0> ;
  assign debug_axi_pinc_in[20] = \<const0> ;
  assign debug_axi_pinc_in[19] = \<const0> ;
  assign debug_axi_pinc_in[18] = \<const0> ;
  assign debug_axi_pinc_in[17] = \<const0> ;
  assign debug_axi_pinc_in[16] = \<const0> ;
  assign debug_axi_pinc_in[15] = \<const0> ;
  assign debug_axi_pinc_in[14] = \<const0> ;
  assign debug_axi_pinc_in[13] = \<const0> ;
  assign debug_axi_pinc_in[12] = \<const0> ;
  assign debug_axi_pinc_in[11] = \<const0> ;
  assign debug_axi_pinc_in[10] = \<const0> ;
  assign debug_axi_pinc_in[9] = \<const0> ;
  assign debug_axi_pinc_in[8] = \<const0> ;
  assign debug_axi_pinc_in[7] = \<const0> ;
  assign debug_axi_pinc_in[6] = \<const0> ;
  assign debug_axi_pinc_in[5] = \<const0> ;
  assign debug_axi_pinc_in[4] = \<const0> ;
  assign debug_axi_pinc_in[3] = \<const0> ;
  assign debug_axi_pinc_in[2] = \<const0> ;
  assign debug_axi_pinc_in[1] = \<const0> ;
  assign debug_axi_pinc_in[0] = \<const0> ;
  assign debug_axi_poff_in[27] = \<const0> ;
  assign debug_axi_poff_in[26] = \<const0> ;
  assign debug_axi_poff_in[25] = \<const0> ;
  assign debug_axi_poff_in[24] = \<const0> ;
  assign debug_axi_poff_in[23] = \<const0> ;
  assign debug_axi_poff_in[22] = \<const0> ;
  assign debug_axi_poff_in[21] = \<const0> ;
  assign debug_axi_poff_in[20] = \<const0> ;
  assign debug_axi_poff_in[19] = \<const0> ;
  assign debug_axi_poff_in[18] = \<const0> ;
  assign debug_axi_poff_in[17] = \<const0> ;
  assign debug_axi_poff_in[16] = \<const0> ;
  assign debug_axi_poff_in[15] = \<const0> ;
  assign debug_axi_poff_in[14] = \<const0> ;
  assign debug_axi_poff_in[13] = \<const0> ;
  assign debug_axi_poff_in[12] = \<const0> ;
  assign debug_axi_poff_in[11] = \<const0> ;
  assign debug_axi_poff_in[10] = \<const0> ;
  assign debug_axi_poff_in[9] = \<const0> ;
  assign debug_axi_poff_in[8] = \<const0> ;
  assign debug_axi_poff_in[7] = \<const0> ;
  assign debug_axi_poff_in[6] = \<const0> ;
  assign debug_axi_poff_in[5] = \<const0> ;
  assign debug_axi_poff_in[4] = \<const0> ;
  assign debug_axi_poff_in[3] = \<const0> ;
  assign debug_axi_poff_in[2] = \<const0> ;
  assign debug_axi_poff_in[1] = \<const0> ;
  assign debug_axi_poff_in[0] = \<const0> ;
  assign debug_axi_resync_in = \<const0> ;
  assign debug_core_nd = \<const0> ;
  assign debug_phase[27] = \<const0> ;
  assign debug_phase[26] = \<const0> ;
  assign debug_phase[25] = \<const0> ;
  assign debug_phase[24] = \<const0> ;
  assign debug_phase[23] = \<const0> ;
  assign debug_phase[22] = \<const0> ;
  assign debug_phase[21] = \<const0> ;
  assign debug_phase[20] = \<const0> ;
  assign debug_phase[19] = \<const0> ;
  assign debug_phase[18] = \<const0> ;
  assign debug_phase[17] = \<const0> ;
  assign debug_phase[16] = \<const0> ;
  assign debug_phase[15] = \<const0> ;
  assign debug_phase[14] = \<const0> ;
  assign debug_phase[13] = \<const0> ;
  assign debug_phase[12] = \<const0> ;
  assign debug_phase[11] = \<const0> ;
  assign debug_phase[10] = \<const0> ;
  assign debug_phase[9] = \<const0> ;
  assign debug_phase[8] = \<const0> ;
  assign debug_phase[7] = \<const0> ;
  assign debug_phase[6] = \<const0> ;
  assign debug_phase[5] = \<const0> ;
  assign debug_phase[4] = \<const0> ;
  assign debug_phase[3] = \<const0> ;
  assign debug_phase[2] = \<const0> ;
  assign debug_phase[1] = \<const0> ;
  assign debug_phase[0] = \<const0> ;
  assign debug_phase_nd = \<const0> ;
  assign event_phase_in_invalid = \<const0> ;
  assign event_pinc_invalid = \<const0> ;
  assign event_poff_invalid = \<const0> ;
  assign event_s_config_tlast_missing = \<const0> ;
  assign event_s_config_tlast_unexpected = \<const0> ;
  assign event_s_phase_chanid_incorrect = \<const0> ;
  assign event_s_phase_tlast_unexpected = \<const0> ;
  assign m_axis_data_tlast = \<const0> ;
  assign m_axis_data_tuser[0] = \<const0> ;
  assign m_axis_phase_tdata[0] = \<const0> ;
  assign m_axis_phase_tlast = \<const0> ;
  assign m_axis_phase_tuser[0] = \<const0> ;
  assign m_axis_phase_tvalid = \<const0> ;
  assign s_axis_config_tready = \<const1> ;
  assign s_axis_phase_tready = \<const0> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  (* C_ACCUMULATOR_WIDTH = "28" *) 
  (* C_AMPLITUDE = "0" *) 
  (* C_CHANNELS = "1" *) 
  (* C_CHAN_WIDTH = "1" *) 
  (* C_DEBUG_INTERFACE = "0" *) 
  (* C_HAS_ACLKEN = "0" *) 
  (* C_HAS_ARESETN = "0" *) 
  (* C_HAS_M_DATA = "1" *) 
  (* C_HAS_M_PHASE = "0" *) 
  (* C_HAS_PHASEGEN = "1" *) 
  (* C_HAS_PHASE_OUT = "0" *) 
  (* C_HAS_SINCOS = "1" *) 
  (* C_HAS_S_CONFIG = "0" *) 
  (* C_HAS_S_PHASE = "1" *) 
  (* C_HAS_TLAST = "0" *) 
  (* C_HAS_TREADY = "0" *) 
  (* C_LATENCY = "3" *) 
  (* C_MEM_TYPE = "1" *) 
  (* C_MODE_OF_OPERATION = "0" *) 
  (* C_MODULUS = "9" *) 
  (* C_M_DATA_HAS_TUSER = "0" *) 
  (* C_M_DATA_TDATA_WIDTH = "8" *) 
  (* C_M_DATA_TUSER_WIDTH = "1" *) 
  (* C_M_PHASE_HAS_TUSER = "0" *) 
  (* C_M_PHASE_TDATA_WIDTH = "1" *) 
  (* C_M_PHASE_TUSER_WIDTH = "1" *) 
  (* C_NEGATIVE_COSINE = "0" *) 
  (* C_NEGATIVE_SINE = "0" *) 
  (* C_NOISE_SHAPING = "0" *) 
  (* C_OPTIMISE_GOAL = "0" *) 
  (* C_OUTPUTS_REQUIRED = "0" *) 
  (* C_OUTPUT_FORM = "0" *) 
  (* C_OUTPUT_WIDTH = "8" *) 
  (* C_PHASE_ANGLE_WIDTH = "8" *) 
  (* C_PHASE_INCREMENT = "3" *) 
  (* C_PHASE_INCREMENT_VALUE = "0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0" *) 
  (* C_PHASE_OFFSET = "0" *) 
  (* C_PHASE_OFFSET_VALUE = "0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0" *) 
  (* C_POR_MODE = "0" *) 
  (* C_RESYNC = "0" *) 
  (* C_S_CONFIG_SYNC_MODE = "0" *) 
  (* C_S_CONFIG_TDATA_WIDTH = "1" *) 
  (* C_S_PHASE_HAS_TUSER = "0" *) 
  (* C_S_PHASE_TDATA_WIDTH = "32" *) 
  (* C_S_PHASE_TUSER_WIDTH = "1" *) 
  (* C_USE_DSP48 = "0" *) 
  (* C_XDEVICEFAMILY = "kintex7l" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dds_compiler_v6_0_17_viv i_synth
       (.aclk(aclk),
        .aclken(1'b0),
        .aresetn(1'b0),
        .debug_axi_chan_in(NLW_i_synth_debug_axi_chan_in_UNCONNECTED[0]),
        .debug_axi_pinc_in(NLW_i_synth_debug_axi_pinc_in_UNCONNECTED[27:0]),
        .debug_axi_poff_in(NLW_i_synth_debug_axi_poff_in_UNCONNECTED[27:0]),
        .debug_axi_resync_in(NLW_i_synth_debug_axi_resync_in_UNCONNECTED),
        .debug_core_nd(NLW_i_synth_debug_core_nd_UNCONNECTED),
        .debug_phase(NLW_i_synth_debug_phase_UNCONNECTED[27:0]),
        .debug_phase_nd(NLW_i_synth_debug_phase_nd_UNCONNECTED),
        .event_phase_in_invalid(NLW_i_synth_event_phase_in_invalid_UNCONNECTED),
        .event_pinc_invalid(NLW_i_synth_event_pinc_invalid_UNCONNECTED),
        .event_poff_invalid(NLW_i_synth_event_poff_invalid_UNCONNECTED),
        .event_s_config_tlast_missing(NLW_i_synth_event_s_config_tlast_missing_UNCONNECTED),
        .event_s_config_tlast_unexpected(NLW_i_synth_event_s_config_tlast_unexpected_UNCONNECTED),
        .event_s_phase_chanid_incorrect(NLW_i_synth_event_s_phase_chanid_incorrect_UNCONNECTED),
        .event_s_phase_tlast_missing(event_s_phase_tlast_missing),
        .event_s_phase_tlast_unexpected(NLW_i_synth_event_s_phase_tlast_unexpected_UNCONNECTED),
        .m_axis_data_tdata(m_axis_data_tdata),
        .m_axis_data_tlast(NLW_i_synth_m_axis_data_tlast_UNCONNECTED),
        .m_axis_data_tready(1'b0),
        .m_axis_data_tuser(NLW_i_synth_m_axis_data_tuser_UNCONNECTED[0]),
        .m_axis_data_tvalid(m_axis_data_tvalid),
        .m_axis_phase_tdata(NLW_i_synth_m_axis_phase_tdata_UNCONNECTED[0]),
        .m_axis_phase_tlast(NLW_i_synth_m_axis_phase_tlast_UNCONNECTED),
        .m_axis_phase_tready(1'b0),
        .m_axis_phase_tuser(NLW_i_synth_m_axis_phase_tuser_UNCONNECTED[0]),
        .m_axis_phase_tvalid(NLW_i_synth_m_axis_phase_tvalid_UNCONNECTED),
        .s_axis_config_tdata(1'b0),
        .s_axis_config_tlast(1'b0),
        .s_axis_config_tready(NLW_i_synth_s_axis_config_tready_UNCONNECTED),
        .s_axis_config_tvalid(1'b0),
        .s_axis_phase_tdata({1'b0,1'b0,1'b0,1'b0,s_axis_phase_tdata[27:0]}),
        .s_axis_phase_tlast(1'b0),
        .s_axis_phase_tready(NLW_i_synth_s_axis_phase_tready_UNCONNECTED),
        .s_axis_phase_tuser(1'b0),
        .s_axis_phase_tvalid(s_axis_phase_tvalid));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
gl8oTb3yK39LjDQS0B4PYP+vte8cGiBpEmJ9JLxCkI04rBQJe5sCt4dvUGvg1Ga0GoPkN0BTvh6i
v1YMWuZiJg==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
LV5tnIhV6fXU4gAQOLXCxdxya9doivJt+Y+5yV24zJ1I56Mu4gOTYyKzdDBlwz49as5fPNOvHvtM
FEjflUU6R2Yh76tXBr2An7Tc7qdcv/WUX57JWpXSPQfxdtsoJzfNEA5lf9cFyHWa+eE27NH4fCIB
fHvZTqNYCqZpO8hMEWo=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
CtefK+dE5tJYyIkOlXrI1GU3HbXkaFgSREpPJj1NZdNualyVqOHiPJK5xJ71xxO6zkXYtBYfzkxn
9Eqf7SpqFizTSC3YZVNAp0ix3wloJ2xu9/08YGAzwYtrD72s/REOd9GdOS5BW5KfXcLDWxJnWFK3
mjj+cPJfHeoGuNLu6gH6HD/lNP6geaOelYYVD/TVk4P/j6qWfCikFKKuomVo3jbRD7F7QdkJDCeh
d5Xc8VxEXSaKIjFRuMTWZtjAQjFH5UpSMVhxV/fXhvzSM6V5P4QZA+memX692B8GYsTFU76iMlss
d7ocDlaRWbY0BTXFb2HZNfGcl+sqYKs8PYn/UA==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
UTuJ2/FiXz7w8k47LqoJjpB8chaAWEBjYpgn4jj1PBd2l6Nj6avA0We0iYNi5AJkwcUofxaNsFtE
+sVWsmGPk/0vN5Q90wbwbfGu18ni9SqWiSNRSUzzfB9h0bol599BuMG2pbcdYlanUIn9oPi4ZKeJ
2M667aoQ2BTcU/o1U8nn5wuoiboeNIqzcJS0jj+j6J5UYz5aHgwMcFlCGUwSQuAp+2VIulW4T1IV
NW+4iXCF7wife+1/XS6RYcYu+n4km8U2A8z/nLIuNXSO1T2HaR6rR3YxTorPEFUQnfrre1FxRLzT
6pi4dXPFPyG1bXISdn2AleLyNN3VFQjTEgHwsA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2017_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
FMUkchj5p9XvgJ9tR5grSuP9aw5xa30l1YgNWO9WvtYYjYtQnsPBns5ryDL+PXPqQYQ3i0NvbEVZ
mN4H44H269BdOgH+vRRI3SR79goz8NqADp1QSv06wD02bUASlMq9aM6Phdxmqoalzn7A7dWDa+nU
2QokmpYQQylaKE1ZbXrz6loBY1IeoaMxbsQcvxJcI2aG1HO9NfyR9d5i3K9UmO1t9jFA+8k+GsKj
kNnLxX6I0J9fN8wKc7D007S9DgoQs6+WuCL6CudeG25OH6Gy/uLkY2Udzdpodegx89FgRLo92dDh
+0eWKh3H5TN2vtQ9mtD1iH6zm1l1IqnYy2G06A==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
IjA88m1asiYMyCqMLSP/pVhA6mm9v8t5bFtEAMOvlQO8WTy5Vpca8kFPPuhuf6voqy+zwcLXRU9a
5UwLvCxgOEOo68GA3l4AR9WaPmcxPTPUwChO8zkHIDrS0eoDFMY1OTr1Lv8pbJknphtPExopREwk
KuHbtq4Mg3zw+se7q5E=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
nZ0uDa4zhbQfoZoNpOAKrHOsOrOlSYjg5j1zWlifZ7mksZmmo1GUwbu4BrFKsE9nPAJUOa85AaS6
3sPqXGDLUL68TzDI06mN0/idhoIRBSJNinUfJpw4Ro9h/zNx1E//RfaHklSArW0rHrP6JnabQq/E
ywpKofyKtfWBjZrTJqD+xFD3BsXO9W35e9lAY/pTqzN6C7dC2o6xELYMw7a37e+7TEDqEPb1kk1i
VC/DX7v1veomIkT4wlTej+pa1pSQH6uN/huOhLuz4yEz/zZdnoDInKQyuWaZgdQV+2dfYBgbf+po
404pK0Ii/DBBTh6IKooZGzVmsyG/5MKNX6F9vw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
h4Ywilwy5sxEJuoAl2mWaPsD3CHtwolrqyMSp+xnE6BEd7ewg6B9aHsejSZgufwkCc3JOZntjUEw
VmaZI6KpTcRBiIr77pCiTQCD8MUDda8TICT6opoiGSVKBdF7AdW1emRRBIeaTCyIsKzljjUa6Yef
iskykDhdXZkj/pS8Jg6JlvXW2RXYnqJHsVSMJ+/xGFoWY6HpfuWXl5Qis3sG3V6vRndvId1DwmcC
TIcBZ1CZrkaB50u34sjzEffc6pCRkwXGZhLLiKAY/tMreJWcW/FXbIZv+TRwtpKr4X1r1WX2DHPN
HIGOUmv1sd+5xmce/cAL9Asb2bb5MShs3Pdezg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
NYqNguBQNzDAye9J9vfHyJP/60Gm8pJ4yhF7PG+b1CC4xooYvIBcw5nyvBZbMisya1POLSrs3IsP
9J1zyN1/uu8ZJK3gY/twIbdYpSZwhvNyBq1m1J+QVYKe2R1NmRkuSU/cF6Zdaep32DPMiQEWzhJh
aiH2HYTIxWGDtg7n4IJ/36VFXSHNyV770w1TIXZ6HoqbmaODwnaI8gH8DXRwGe1ywm6l2TLZCTx7
55nZ1ofGqA7vI6kbeAgqZ05H63ffJsjYXhGTiy/RqxXA85On605Iu/IeqE52izWHitkg48LhWKM0
QA9CEK+iAZjEZGOQLBlqNuKzybQp+khGHbl5EQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 54720)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
