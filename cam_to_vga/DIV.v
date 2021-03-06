// megafunction wizard: %LPM_DIVIDE%
// GENERATION: STANDARD
// VERSION: WM1.0
// MODULE: lpm_divide 

// ============================================================
// File Name: DIV.v
// Megafunction Name(s):
// 			lpm_divide
// ============================================================
// ************************************************************
// THIS IS A WIZARD-GENERATED FILE. DO NOT EDIT THIS FILE!
//
// 6.0 Build 202 06/20/2006 SP 1 SJ Full Version
// ************************************************************


//Copyright (C) 1991-2006 Altera Corporation
//Your use of Altera Corporation's design tools, logic functions 
//and other software and tools, and its AMPP partner logic 
//functions, and any output files any of the foregoing 
//(including device programming or simulation files), and any 
//associated documentation or information are expressly subject 
//to the terms and conditions of the Altera Program License 
//Subscription Agreement, Altera MegaCore Function License 
//Agreement, or other applicable license agreement, including, 
//without limitation, that your use is for the sole purpose of 
//programming logic devices manufactured by Altera and sold by 
//Altera or its authorized distributors.  Please refer to the 
//applicable agreement for further details.


// synopsys translate_off
`timescale 1 ps / 1 ps
// synopsys translate_on
module DIV (
	aclr,
	clock,
	denom,
	numer,
	quotient,
	remain);

	input	  aclr;
	input	  clock;
	input	[3:0]  denom;
	input	[9:0]  numer;
	output	[9:0]  quotient;
	output	[3:0]  remain;

	wire [9:0] sub_wire0;
	wire [3:0] sub_wire1;
	wire [9:0] quotient = sub_wire0[9:0];
	wire [3:0] remain = sub_wire1[3:0];

	lpm_divide	lpm_divide_component (
				.denom (denom),
				.aclr (aclr),
				.clock (clock),
				.numer (numer),
				.quotient (sub_wire0),
				.remain (sub_wire1),
				.clken (1'b1));
	defparam
		lpm_divide_component.lpm_drepresentation = "UNSIGNED",
		lpm_divide_component.lpm_hint = "LPM_REMAINDERPOSITIVE=TRUE",
		lpm_divide_component.lpm_nrepresentation = "UNSIGNED",
		lpm_divide_component.lpm_pipeline = 1,
		lpm_divide_component.lpm_type = "LPM_DIVIDE",
		lpm_divide_component.lpm_widthd = 4,
		lpm_divide_component.lpm_widthn = 10;


endmodule

// ============================================================
// CNX file retrieval info
// ============================================================
// Retrieval info: PRIVATE: PRIVATE_LPM_REMAINDERPOSITIVE STRING "TRUE"
// Retrieval info: PRIVATE: PRIVATE_MAXIMIZE_SPEED NUMERIC "-1"
// Retrieval info: PRIVATE: USING_PIPELINE NUMERIC "1"
// Retrieval info: PRIVATE: VERSION_NUMBER NUMERIC "2"
// Retrieval info: CONSTANT: LPM_DREPRESENTATION STRING "UNSIGNED"
// Retrieval info: CONSTANT: LPM_HINT STRING "LPM_REMAINDERPOSITIVE=TRUE"
// Retrieval info: CONSTANT: LPM_NREPRESENTATION STRING "UNSIGNED"
// Retrieval info: CONSTANT: LPM_PIPELINE NUMERIC "1"
// Retrieval info: CONSTANT: LPM_TYPE STRING "LPM_DIVIDE"
// Retrieval info: CONSTANT: LPM_WIDTHD NUMERIC "4"
// Retrieval info: CONSTANT: LPM_WIDTHN NUMERIC "10"
// Retrieval info: USED_PORT: aclr 0 0 0 0 INPUT NODEFVAL aclr
// Retrieval info: USED_PORT: clock 0 0 0 0 INPUT NODEFVAL clock
// Retrieval info: USED_PORT: denom 0 0 4 0 INPUT NODEFVAL denom[3..0]
// Retrieval info: USED_PORT: numer 0 0 10 0 INPUT NODEFVAL numer[9..0]
// Retrieval info: USED_PORT: quotient 0 0 10 0 OUTPUT NODEFVAL quotient[9..0]
// Retrieval info: USED_PORT: remain 0 0 4 0 OUTPUT NODEFVAL remain[3..0]
// Retrieval info: CONNECT: @numer 0 0 10 0 numer 0 0 10 0
// Retrieval info: CONNECT: @denom 0 0 4 0 denom 0 0 4 0
// Retrieval info: CONNECT: quotient 0 0 10 0 @quotient 0 0 10 0
// Retrieval info: CONNECT: remain 0 0 4 0 @remain 0 0 4 0
// Retrieval info: CONNECT: @clock 0 0 0 0 clock 0 0 0 0
// Retrieval info: CONNECT: @aclr 0 0 0 0 aclr 0 0 0 0
// Retrieval info: LIBRARY: lpm lpm.lpm_components.all
// Retrieval info: GEN_FILE: TYPE_NORMAL DIV.v TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL DIV.inc FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL DIV.cmp FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL DIV.bsf FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL DIV_inst.v FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL DIV_bb.v FALSE
