// Copyright (C) 2018  Intel Corporation. All rights reserved.
// Your use of Intel Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Intel Program License 
// Subscription Agreement, the Intel Quartus Prime License Agreement,
// the Intel FPGA IP License Agreement, or other applicable license
// agreement, including, without limitation, that your use is for
// the sole purpose of programming logic devices manufactured by
// Intel and sold by Intel or its authorized distributors.  Please
// refer to the applicable agreement for further details.


// Generated by Quartus Prime Version 18.1 (Build Build 625 09/12/2018)
// Created on Tue Apr 21 15:39:09 2020

decorderInstruction decorderInstruction_inst
(
	.clk(clk_sig) ,	// input  clk_sig
	.clk_en(clk_en_sig) ,	// input  clk_en_sig
	.dataA(dataA_sig) ,	// input [31:0] dataA_sig
	.dataB(dataB_sig) ,	// input [31:0] dataB_sig
	.new_instruction(new_instruction_sig) ,	// input  new_instruction_sig
	.reset(reset_sig) ,	// input  reset_sig
	.out_opcode(out_opcode_sig) ,	// output [1:0] out_opcode_sig
	.out_register(out_register_sig) ,	// output [17:0] out_register_sig
	.out_data(out_data_sig) 	// output [31:0] out_data_sig
);

