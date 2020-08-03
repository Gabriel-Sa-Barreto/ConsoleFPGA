	component collenda is
		port (
			buttonmov_export                     : in  std_logic_vector(1 downto 0) := (others => 'X'); -- export
			check_printting_export               : in  std_logic                    := 'X';             -- export
			clk_clk                              : in  std_logic                    := 'X';             -- clk
			color_b_readdata                     : out std_logic_vector(2 downto 0);                    -- readdata
			color_g_readdata                     : out std_logic_vector(2 downto 0);                    -- readdata
			color_r_readdata                     : out std_logic_vector(2 downto 0);                    -- readdata
			hsync_writeresponsevalid_n           : out std_logic;                                       -- writeresponsevalid_n
			printtingscreen_writeresponsevalid_n : out std_logic;                                       -- writeresponsevalid_n
			switchcor_export                     : in  std_logic_vector(3 downto 0) := (others => 'X'); -- export
			vsync_writeresponsevalid_n           : out std_logic                                        -- writeresponsevalid_n
		);
	end component collenda;

	u0 : component collenda
		port map (
			buttonmov_export                     => CONNECTED_TO_buttonmov_export,                     --       buttonmov.export
			check_printting_export               => CONNECTED_TO_check_printting_export,               -- check_printting.export
			clk_clk                              => CONNECTED_TO_clk_clk,                              --             clk.clk
			color_b_readdata                     => CONNECTED_TO_color_b_readdata,                     --         color_b.readdata
			color_g_readdata                     => CONNECTED_TO_color_g_readdata,                     --         color_g.readdata
			color_r_readdata                     => CONNECTED_TO_color_r_readdata,                     --         color_r.readdata
			hsync_writeresponsevalid_n           => CONNECTED_TO_hsync_writeresponsevalid_n,           --           hsync.writeresponsevalid_n
			printtingscreen_writeresponsevalid_n => CONNECTED_TO_printtingscreen_writeresponsevalid_n, -- printtingscreen.writeresponsevalid_n
			switchcor_export                     => CONNECTED_TO_switchcor_export,                     --       switchcor.export
			vsync_writeresponsevalid_n           => CONNECTED_TO_vsync_writeresponsevalid_n            --           vsync.writeresponsevalid_n
		);

