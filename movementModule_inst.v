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
// Created on Sat Jul  6 10:15:35 2019

movementModule movementModule_inst
(
	.clk(clk_sig) ,	// input  clk_sig
	.reset(reset_sig) ,	// input  reset_sig
	.left(left_sig) ,	// input  left_sig
	.right(right_sig) ,	// input  right_sig
	.up(up_sig) ,	// input  up_sig
	.down(down_sig) ,	// input  down_sig
	.pixel_x(pixel_x_sig) ,	// input  pixel_x_sig
	.pixel_y(pixel_y_sig) ,	// input  pixel_y_sig
	.videoEnable(videoEnable_sig) ,	// input  videoEnable_sig
	.enable(enable_sig) ,	// output  enable_sig
	.address(address_sig) ,	// output [ADDRESS_MEMORY:0] address_sig
	.element(element_sig) 	// output [QTD_MEMORY_ELEMENT-1:0] element_sig
);

defparam movementModule_inst.ELEMENT = 0;
defparam movementModule_inst.QTD_MEMORY_ELEMENT = 0;
defparam movementModule_inst.ADDRESS_MEMORY = 0;