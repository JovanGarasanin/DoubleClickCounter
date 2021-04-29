--------------------------------------------------------------------------------------------------
-- Project      : Doubleclick counter + SPI
-- Description  : Doubleclick counter with an SPI for data serialization and transfer
-- Authors      : Djordje Hadzic, Jovan Garasanin
-- File         : Preparator.vhd
-- File descrip.: This file contains an entity which regulates which row of bits is set to the SPI 
--                to be serialized. It operates similarly to the SPI itself.
----------------------------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Preparator is 
  port( 
   --Input signals
		 -- Left hand side
		 InputInfo		: in std_logic_vector(31 downto 0);
		 i_Clk			: in std_logic;
		 i_Reset			: in std_logic;
		 -- Right hand side
		 tr_end			: in std_logic;
		 
   --Output signals
   Output16bit	: out std_logic_vector(15 downto 0)
   );
end Preparator;

architecture Behavioral of Preparator is

	type state_type is ( s7, s6, s5, s4, s3, idle, --states of the FSM
								zero1, zero7, zero8,
								idleplus, idleplusplus, idle1, idle2, idle3, -- states that configure up - 10.12

								check_if_new); 
																		-- new states that define empty rows
																		-- as well as waiting states - 12.12
																		
	signal buff_reg 					: std_logic_vector(15 downto 0);
	signal buff							: std_logic_vector(5 downto 0);	
	signal ex 							: std_logic_vector(31 downto 0); -- temp signal for regulation of writing
	signal state_reg, next_state : state_type;
	
	signal timer			: integer := 0;

	signal cross			: std_logic;
	
	constant CNT_MAX : integer := 64;
	signal cnt_en : std_logic;
	signal wait_cnt : integer range 0 to CNT_MAX;

begin

	timer_gen: process(i_Clk, cross) is 
	begin
		if (i_Clk'event and i_Clk = '1') then
			if(cross = '0') then
				
				timer <= timer + 1;
				
			else 
				timer <= 0;
			end if; 
		end if;			
	end process;

state_transition: process (i_Reset, i_Clk) is
   begin
       if (i_Reset = '1') then
           state_reg <= idle;					
       elsif (rising_edge(i_Clk)) then 
           state_reg <= next_state;
       end if;
   end process;
   
	CNT_PROC: process(i_Reset, i_Clk) is
	begin
		if (i_Reset = '1') then
			cnt_en <= '0';
			wait_cnt <= 0;
		elsif rising_edge(i_Clk) then
			if (tr_end = '1') then
				cnt_en <= '1';			
			end if;
			
			if (cnt_en = '1') then
				wait_cnt <= wait_cnt + 1;
				if (wait_cnt = CNT_MAX) then
					wait_cnt <= 0;
					cnt_en <= '0';
				end if;
			end if;
			
		end if;
	
	end process CNT_PROC;
	
   next_state_logic: process (state_reg, tr_end, i_Reset, ex, InputInfo, timer, wait_cnt, cnt_en) is 
   begin
       case (state_reg) is 
				when idle =>
						next_state <= idleplus;
						cross <= '1';
				
				-- when idlepprep =>
					-- if(timer < 127) then
						-- next_state <= state_reg;
						-- cross <= '0';
					-- else
						-- next_state <= idleplus;
						-- cross <= '1';
						-- end if;				
				
				when idleplus =>	
						if (tr_end = '1') then 
--						if (wait_cnt = CNT_MAX and cnt_en = '1') then
                 next_state <= idleplusplus;
              else
                  next_state <= state_reg;
              end if;
					cross <= '1';
					
				-- when idleppprep =>
					-- if(timer < 127) then
						-- next_state <= state_reg;
						-- cross <= '0';
					-- else
						-- next_state <= idleplusplus;
						-- cross <= '1';
						-- end if;	

				when idleplusplus =>	
						if (tr_end = '1') then 
--					if (wait_cnt = CNT_MAX and cnt_en = '1') then
                 next_state <= idle1;
              else
                 next_state <= state_reg;

              end if;	
						cross <= '1';
		
		
				-- when idle1prep =>
					-- if(timer < 127) then
						-- next_state <= state_reg;
						-- cross <= '0';
					-- else
						-- next_state <= idle1;
						-- cross <= '1';
						-- end if;
		
				when idle1 =>	
						if (tr_end = '1') then 
--						if (wait_cnt = CNT_MAX and cnt_en = '1') then
                  next_state <= idle2;
              else
                  next_state <= state_reg;

              end if;
						cross <= '1';
		
		
				-- when idle2prep =>
					-- if(timer < 127) then
						-- next_state <= state_reg;
						-- cross <= '0';
					-- else
						-- next_state <= idle2;
						-- cross <= '1';
						-- end if;
				
				
				
				when idle2 =>	
						if (tr_end = '1') then 
--						if (wait_cnt = CNT_MAX and cnt_en = '1') then
                 next_state <= idle3;
              else
                  next_state <= state_reg;

              end if;	
						cross <= '1';
				
				-- when idle3prep =>
					-- if(timer < 127) then
						-- next_state <= state_reg;
						-- cross <= '0';
					-- else
						-- next_state <= idle3;
						-- cross <= '1';
						-- end if;
				
				when idle3 =>	
						if (tr_end = '1') then 
--					if (wait_cnt = CNT_MAX and cnt_en = '1') then
                 next_state <= zero1;
              else
                  next_state <= state_reg;

              end if;
						cross <= '1';
						
						
				-- when zero1prep =>
					-- if(timer < 127) then
						-- next_state <= state_reg;
						-- cross <= '0';
					-- else
						-- next_state <= zero1;
						-- cross <= '1';
						-- end if;
					 
					 
           when zero1 =>
               if (tr_end = '1') then 
--					if (wait_cnt = CNT_MAX and cnt_en = '1') then
                   next_state <= zero7;

               else
                   next_state <= state_reg;

               end if; 
						cross <= '1';

						
           -- when zero7prep =>
      			-- if(timer < 127) then
						-- next_state <= state_reg;
						-- cross <= '0';
					-- else
						-- next_state <= zero7;
						-- cross <= '1';
						-- end if;
					 

           -- upisuje nule u sedmi red, nikad se ne menja                
           when zero7 =>
               if (tr_end = '1') then 
--					if (wait_cnt = CNT_MAX and cnt_en = '1') then
                   next_state <= zero8;

               else
                   next_state <= state_reg;

               end if; 
						cross <= '1';

						
           -- when zero8prep =>
					-- if(timer < 127) then
						-- next_state <= state_reg;
						-- cross <= '0';
					-- else
						-- next_state <= zero8;
						-- cross <= '1';
						-- end if;
					 

					 
           -- upisuje nule u osmi red, nikad se ne menja            
           when zero8 =>
               if (tr_end = '1') then 
--					if (wait_cnt = CNT_MAX and cnt_en = '1') then
                   next_state <= check_if_new;

               else
                   next_state <= state_reg;

               end if; 
						cross <= '1';
				
				
           -- when checkprep =>
					-- if(timer < 127) then
						-- next_state <= state_reg;
						-- cross <= '0';
					-- else
						-- next_state <= check_if_new;
						-- cross <= '1';
						-- end if;
					 

           
           
           when check_if_new =>
               if (ex = InputInfo) then
                   next_state <= state_reg;
               else
                   next_state <= s7;
               end if;
						cross <= '1';
						

           when s7 =>
               if (tr_end = '1') then 
--					if (wait_cnt = CNT_MAX and cnt_en = '1') then
                   next_state <= s6;

               else
                   next_state <= state_reg;

               end if;
						cross <= '1';

						
           -- when s6prep =>
					-- if(timer < 127) then
						-- next_state <= state_reg;
						-- cross <= '0';
					-- else
						-- next_state <= s6;
						-- cross <= '1';
					-- end if;

           
           when s6 =>
               if (tr_end = '1') then
--			      if (wait_cnt = CNT_MAX and cnt_en = '1') then
                   next_state <= s5;

               else
                   next_state <= state_reg;

               end if; 
						cross <= '1';

						
           -- when s5prep =>
     			-- if(timer < 127) then
						-- next_state <= state_reg;
						-- cross <= '0';
					-- else
						-- next_state <= s5;
						-- cross <= '1';
						-- end if;
         
           
           when s5 =>
               if (tr_end = '1') then 
--					if (wait_cnt = CNT_MAX and cnt_en = '1') then
                   next_state <= s4;

               else
                   next_state <= state_reg;

               end if;            
						cross <= '1';
						
						
           -- when s4prep =>
					-- if(timer < 127) then
						-- next_state <= state_reg;
						-- cross <= '0';
					-- else
						-- next_state <= s4;
						-- cross <= '1';
						-- end if;
					 

           when s4 =>
               if (tr_end = '1') then 
--					if (wait_cnt = CNT_MAX and cnt_en = '1') then
                   next_state <= s3;

               else
                   next_state <= state_reg;

               end if;
						cross <= '1';
						
						
           -- when s3prep =>
					-- if(timer < 127) then
						-- next_state <= state_reg;
						-- cross <= '0';
					-- else
						-- next_state <= s3;
						-- cross <= '1';
						-- end if;
					 
                       
           when s3 =>
               if (tr_end = '1') then 
--					if (wait_cnt = CNT_MAX and cnt_en = '1') then
                   next_state <= check_if_new;
               else
                   next_state <= state_reg;

               end if;
						cross <= '1';					 
					 
       end case;    
   end process;

  ex_logic: process (i_Clk) is
       begin
			if (rising_edge(i_Clk)) then
           case (state_reg) is
					when idle =>
						ex <= x"00000000";

					when s3 => -- when all 5 regs have been written, ex becomes InputInfo 
						
						ex <= InputInfo;
                   
                   when others =>
                       ex <= ex; -- sme li ovo??????????????????????????????????????????
                                 -- ako ne sme, kako onda?
						
			   end case;
			end if;
       end process;	 
	 
	 
	 
   output_logic: process (state_reg, InputInfo, buff_reg, buff, wait_cnt) is
   begin
       case (state_reg) is

			-- states that define control registers
				when idle =>
				
					buff_reg <= x"8C00";

					if (wait_cnt /= 0 ) then
						buff_reg <= x"0000";
					end if;
				when idleplus =>
					buff_reg <= x"8000";
					
					if (wait_cnt /= 0 ) then
						buff_reg <= x"0000";
					end if;
				when idleplusplus =>
					buff_reg <= x"8A01";

					if (wait_cnt /= 0 ) then
						buff_reg <= x"0000";
					end if;
				when idle1 =>
					buff_reg <= x"8051";

					if (wait_cnt /= 0 ) then
						buff_reg <= x"0000";
					end if;
				when idle2 =>
					buff_reg <= x"8C0F";

					if (wait_cnt /= 0 ) then
						buff_reg <= x"0000";
					end if;
				when idle3 =>
					buff_reg <= x"8B01";
				
					if (wait_cnt /= 0 ) then
						buff_reg <= x"0000";
					end if;
			   when zero1 =>
               buff_reg <=x"8101";
					if (wait_cnt /= 0 ) then
						buff_reg <= x"0000";
					end if;
           when zero7 =>
               buff_reg <=x"8701";
               if (wait_cnt /= 0 ) then
						buff_reg <= x"0000";
					end if;
           when zero8 =>
               buff_reg <=x"8801";    
					if (wait_cnt /= 0 ) then
						buff_reg <= x"0000";
					end if;
				
					
           when s7 =>
					 
					 buff_reg(7 downto 5) <= InputInfo(29 downto 27);
					 buff_reg(3 downto 1) <= InputInfo(14 downto 12);
					 buff_reg(11 downto 8) <= "0010";
					 buff_reg(15 downto 12) <= x"8";
					 buff_reg(0) <= '0';
					 buff_reg(4) <= '0';
					 
					 if (wait_cnt /= 0) then
						buff_reg <= x"0000";
					end if;
					 
           when s6 =>
				    buff_reg(7 downto 5) <= InputInfo(26 downto 24);
					 buff_reg(3 downto 1) <= InputInfo(11 downto 9);
					 buff_reg(11 downto 8) <= "0011";
					 buff_reg(15 downto 12) <= x"8";
					 buff_reg(0) <= '0';
		          buff_reg(4) <= '0';
					 if (wait_cnt /= 0 ) then
						buff_reg <= x"0000";
					end if;
					 
           when s5 =>
					 buff_reg(7 downto 5) <= InputInfo(23 downto 21);
					 buff_reg(3 downto 1) <= InputInfo(8 downto 6);
					 buff_reg(11 downto 8) <= "0100";
					 buff_reg(15 downto 12) <= x"8";
					 buff_reg(0) <= '0';
					 buff_reg(4) <= '0';
					 if (wait_cnt /= 0 ) then
						buff_reg <= x"0000";
					end if;
               
           when s4 =>
					 buff_reg(7 downto 5) <= InputInfo(20 downto 18);
					 buff_reg(3 downto 1) <= InputInfo(5 downto 3);
					 buff_reg(11 downto 8) <= "0101";
					 buff_reg(15 downto 12) <= x"8";
					 buff_reg(0) <= '0';
					 buff_reg(4) <= '0';	
				    if (wait_cnt /= 0 ) then
						buff_reg <= x"0000";
					end if;
           
           when s3 =>
					 buff_reg(7 downto 5) <= InputInfo(17 downto 15);
					 buff_reg(3 downto 1) <= InputInfo(2 downto 0);
					 buff_reg(11 downto 8) <= "0110";
					 buff_reg(15 downto 12) <= x"8";
					 buff_reg(0) <= '0';
					 buff_reg(4) <= '0';
					 if (wait_cnt /= 0 ) then
						buff_reg <= x"0000";
					end if;
           
				when others => -- when ((zero1,7,8;) s6,5,4,3; check)prep states
               buff_reg <= x"0000";
					 
				
       end case;

		  
		  Output16bit(15 downto 0) <= buff_reg(15 downto 0);



		  
   end process;
   
end Behavioral;