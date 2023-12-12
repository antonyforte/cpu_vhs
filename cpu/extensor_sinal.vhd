----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:39:11 11/27/2023 
-- Design Name: 
-- Module Name:    extensor_sinal - Behavioral 
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

entity extensor_sinal is
	port(
			Entrada: in std_logic_vector(15 downto 0);
			Saida: out std_logic_vector(31 downto 0)
	);
end extensor_sinal;

architecture Behavioral of extensor_sinal is



begin
--decod : process(Entrada) begin
--	for i in 0 to 31 loop
	--	if to_integer(unsigned(Entrada)) = i then
		--	Saida(i) <= '1';
		--else
			--Saida(i) <= '0';
		--end if;
	--end loop;
--end process;
--end Behavioral;

extensor : process(Entrada) begin
	for i in 0 to 31 loop
		if i < 16 then
			Saida(i) <= Entrada(i);
		else
			Saida(i) <= Entrada(15);
		end if;
	end loop;
end process;
end Behavioral;

