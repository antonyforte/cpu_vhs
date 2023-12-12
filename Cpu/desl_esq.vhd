----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:49:38 11/29/2023 
-- Design Name: 
-- Module Name:    desl_esq - Behavioral 
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

entity desl_esq is
	port(
		Entrada : in std_logic_vector(25 downto 0);
		Saida : out std_logic_vector(27 downto 0)
		);
end desl_esq;

architecture Behavioral of desl_esq is



begin

Saida(0) <= '0';
Saida(1) <= '0';


Saida(27 downto 2) <= Entrada;

end Behavioral;

