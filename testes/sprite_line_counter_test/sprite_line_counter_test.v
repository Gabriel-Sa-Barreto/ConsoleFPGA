module sprite_line_counter_test;
integer contagem;
integer sprite_size = 20;
/*----------Registros de entrada----------------*/
reg        clk_pixel;
reg [9:0]  pixel_x;
reg [8:0]  pixel_y;
reg [8:0]  n_sprite;
reg [31:0] sprite_datas;
reg        sprite_on;
reg        reset;
/*---------------------------------------------*/

/*-------------------Saídas--------------------*/
wire [16:0] memory_address;
wire        count_finished;
/*---------------------------------------------*/


always begin //frequência de geração dos pixeis (25 MHz)
	clk_pixel = 1'b1;
	#20;
	clk_pixel = 1'b0;
	#20;
end


initial begin
		reset = 1'b0;  										//reseta o módulo
		#40;           										//espera 40 nanosegundos, que corresponde a 1 pulso de clock.
		reset        = 1'b1;
		sprite_on    = 1'b0;            					//desativa a contagem
		pixel_x      = 10'b0000100000;  					//32
		pixel_y      = 9'b000100000;    					//32
		n_sprite     = 9'b000001000;                        //8
		sprite_datas = {pixel_x,pixel_y,n_sprite};
		#40;                                                //delay de 40 nanosegundos
		sprite_on    = 1'b1;            					//ativa a contagem

		for(contagem = 1; contagem < sprite_size; contagem = contagem + 1) begin
			#40;
			pixel_x = pixel_x + 1;
		end
		#40;                                                //delay de espera para que a última saída de endereço seja gerada.
		sprite_on    = 1'b0;            					//desativa a contagem
		#80;

		pixel_y      =  9'b000110000;                       //48
		pixel_x      = 10'b0000100000;  					//32
		sprite_datas = {pixel_x,pixel_y,n_sprite};
		sprite_on    = 1'b1;            					//ativa a contagem

		for(contagem = 1; contagem < sprite_size; contagem = contagem + 1) begin
			#40;
			pixel_x = pixel_x + 1;
		end
		#40;
		sprite_on    = 1'b0;            					//desativa a contagem


		$monitor("Memory_address: %b | Count_Finished: %b ",memory_address, count_finished);
		#1200; //espera 1200 nanosegundos.
		$stop; //encerra a simulação.
end

sprite_line_counter #(.size_x(10), .size_y(9), .size_address(17), .size_line(20) )
sprite_line_counter_inst
(
	.clk_pixel(clk_pixel) ,				// input  clk_pixel_sig
	.pixel_x(pixel_x) ,					// input [size_x-1:0] pixel_x_sig
	.pixel_y(pixel_y) ,					// input [size_y-1:0] pixel_y_sig
	.sprite_datas(sprite_datas) ,		// input [31:0] sprite_datas_sig
	.sprite_on(sprite_on) ,				// input  sprite_on_sig
	.reset(reset) ,						// input  reset_sig
	.memory_address(memory_address) ,	// output [size_address-1:0] memory_address_sig
	.count_finished(count_finished) 	// output  count_finished_sig
);

endmodule






