----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:15:09 11/22/2023 
-- Design Name: 
-- Module Name:    decod5_32 - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity decod5_32 is
	port(
		Entrada : in std_logic_vector(4 downto 0);
		Saida : out std_logic_vector(31 downto 0)
	);
end decod5_32;

architecture Behavioral of decod5_32 is

begin

decod : process(Entrada) begin
	for i in 0 to 31 loop
		if to_integer(unsigned(Entrada)) = i then
			Saida(i) <= '1';
		else
			Saida(i) <= '0';
		end if;
	end loop;
end process;
end Behavioral;

