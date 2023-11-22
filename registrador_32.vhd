----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:19:50 11/08/2023 
-- Design Name: 
-- Module Name:    registrador_32 - Behavioral 
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



entity registrador_32 is

port( Entrada : in std_logic_vector(31 downto 0);
		Clock : in std_logic;
		Enable : in std_logic;
		Clear : in std_logic;
		Saida : out std_logic_vector(31 downto 0)

);



end registrador_32;

architecture Behavioral of registrador_32 is

component flipflop_dCEBD is

	port(D,Clk,Clear,Enable : in std_logic;
			Q, Qb : out std_logic
		
);
end component;

begin


flipflopsDCEBD : for i in 0 to 31 generate
	flipflopDCEBD : flipflop_dCEBD port map(
		D => Entrada(i),
		Clk => Clock,
		Clear => Clear,
		Enable => Enable,
		Q => Saida(i)
	);
end generate;

end Behavioral;

