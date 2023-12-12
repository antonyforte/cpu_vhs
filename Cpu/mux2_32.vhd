----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:31:20 09/27/2023 
-- Design Name: 
-- Module Name:    mux5 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux2_32 is
	port( e : std_logic_vector(0 to 31);
			e1 : std_logic_vector(0 to 31);
			sel : in std_logic;
	      saida : out std_logic_vector(0 to 31)
	);
end mux2_32;

architecture Behavioral of mux2_32 is
	component mux2 is
		port (e  : in std_logic_vector(0 to 1);
				--e1  : in std_logic;
				sel : in std_logic;
				saida : out std_logic );
	end component;
	signal s13, s23 : std_logic;
begin

mux2_32 : for i in 0 to 31 generate
	mux2_5 : mux2	port map(
		e(0) => e(i),
		e(1) => e1(i),
		sel => sel,
		saida => saida(i)
		
	);
end generate;
	

end Behavioral;

