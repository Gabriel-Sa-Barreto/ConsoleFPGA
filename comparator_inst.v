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
// Created on Tue Jun 16 22:38:15 2020

comparator comparator_inst
(
	.rg(rg_sig) ,	// input [size_reg-1:0] rg_sig
	.check(check_sig) ,	// input [size_check-1:0] check_sig
	.compare(compare_sig) ,	// input  compare_sig
	.result(result_sig) 	// output  result_sig
);

defparam comparator_inst.size_reg = 32;
defparam comparator_inst.size_check = 20;
defparam comparator_inst.x_inicio = 19;
defparam comparator_inst.x_final = 28;
defparam comparator_inst.y_inicio = 9;
defparam comparator_inst.y_final = 18;
defparam comparator_inst.spriteLine = 20;
