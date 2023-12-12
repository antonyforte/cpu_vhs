----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:36:35 11/27/2023 
-- Design Name: 
-- Module Name:    som32 - Behavioral 
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

entity som32 is
port (A : in std_logic_vector(31 downto 0);
			B : in std_logic_vector(31 downto 0);
			Vem_1: in std_logic;
			Saida : out std_logic_vector(31 downto 0));
end som32;

architecture Behavioral of som32 is

component Somador is
	
	port (A : in std_logic;
			B : in std_logic;
			Vem_1: in std_logic;
			Soma : out std_logic;
			Vai_1 : out std_logic );

end component;

	signal vai : std_logic_vector(30 downto 0);
begin
	soma32inicial : Somador port map(
			A => A(0),
			B => B(0),
			Vem_1 => '0',
			Soma => Saida(0),
			Vai_1 => vai(0)
	);
	soma32final : Somador port map(
			A => A(31),
			B => B(31),
			Vem_1 => vai(30),
			Soma => Saida(31)
	);

soma32 : for i in 30 downto 1 generate
	Somadora : Somador  port map(
				A => A(i),
				B => B(i),
				Vem_1 => vai(i-1),
				Soma => Saida(i),
				Vai_1 => vai(i)
	);
end generate; 





end Behavioral;

