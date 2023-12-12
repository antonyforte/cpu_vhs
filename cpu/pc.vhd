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



entity pc is

port( Entrada : in std_logic_vector(31 downto 0);
		Clock : in std_logic;
		Enable : in std_logic;
		Clear : in std_logic;
		Saida : out std_logic_vector(31 downto 0)

);



end pc;

architecture Behavioral of pc is

component flipflop_dCEBS is

	port(D,Clk,Clear,Enable : in std_logic;
			Q, Qb : out std_logic
		
);
end component;

component flipflop_dPED is 
	port(D,Clk,Preset,Enable : in std_logic;
			Q, Qb : out std_logic);
end component;

begin


flipflopsDCEBS1 : for i in 0 to 21 generate
	flipflopDCEBS1 : flipflop_dCEBS port map(
		D => Entrada(i),
		Clk => Clock,
		Clear => Clear,
		Enable => Enable,
		Q => Saida(i)
	);
	

end generate;

flipflopsDPED : flipflop_dPED port map(
	D => Entrada(22),
	Clk => Clock,
	Preset => Clear,
	Enable => Enable,
	Q => Saida(22)
);

flipflopsDCEBS2 : for i in 23 to 31 generate
	flipflopDCEBS2 : flipflop_dCEBS port map(
		D => Entrada(i),
		Clk => Clock,
		Clear => Clear,
		Enable => Enable,
		Q => Saida(i)
	);
	

end generate;

end Behavioral;

