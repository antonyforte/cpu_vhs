----------------------------------------------------------------------------------
-- Company:
-- Engineer:
-- 
-- Create Date:    15:34:28 11/01/2023
-- Design Name:
-- Module Name:    or_32bits - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity or_32bits is
port( entrada : in std_logic_vector(31 downto 0);
saida : out std_logic);

end or_32bits;


architecture Behavioral of or_32bits is

component or_2 is
port( A, B : in std_logic;
Saida : out std_logic );
end component;

signal saidasPrimeira : std_logic_vector(15 downto 0);
signal saidasSegunda : std_logic_vector(7 downto 0);
signal saidasTerceira : std_logic_vector(3 downto 0);

begin
	primeiraColuna : for i in 0 to 15 generate
	uma_or : or_2 port map(
	A => entrada(2*i),
	B => entrada (2*i+1),
	Saida => saidasPrimeira(i)
	);
	end generate;
	segundaColuna : for i in 0 to 7 generate
	uma_or : or_2 port map(
	A => saidasPrimeira(2*i),
	B => saidasPrimeira (2*i+1),
	Saida => saidasSegunda(i)
	);
	end generate;

	terceiraColuna : for i in 0 to 3 generate
	uma_or : or_2 port map(
	A => saidasSegunda(2*i),
	B => saidasSegunda (2*i+1),
	Saida => saidasTerceira(i)
	);
end generate;

saida <= saidasTerceira(0) or saidasTerceira(1) or saidasTerceira(2) or saidasTerceira(3);

end Behavioral;