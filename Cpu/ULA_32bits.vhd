----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:08:20 10/25/2023 
-- Design Name: 
-- Module Name:    ULA_4bits - Behavioral 
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


entity ULA_32bits is

	port (
	A, B : in std_logic_vector (31 downto 0);
	op : in std_logic_vector (1 downto 0);
	A_negado, B_negado : in std_logic;
	Resultado : out std_logic_vector (31 downto 0)
	);

end ULA_32bits;

architecture Behavioral of ULA_32bits is

	component ULA_1bit is
		port (
			op : in std_logic_vector(0 to 1);
			A, B, Less, Vem_1, A_negado, B_negado : in std_logic;
			Vai_1, Set, Resultado : out std_logic
		);
	end component;
		
	signal slt : std_logic;
	signal vem_vai : std_logic_vector (0 to 31);
	
begin

	ULA_0 : ULA_1bit port map(
		A => A(0),
		B => B(0),
		Less => slt,
		Vem_1 => B_negado,
		A_negado => A_negado,
		B_negado => B_negado,
		op => op,
		Vai_1 => vem_vai(0),
		Resultado => Resultado(0)
	);

	ula_generate : for i in 1 downto 30 generate
		ULA_32bits : ULA_1bit port map (
			A => A(i),
			B => B(i),
			Less => '0',
			Vem_1 => vem_vai(i-1),
			A_negado => A_negado,
			B_negado => B_negado,
			op => op,
			Vai_1 => vem_vai(i),
			Resultado => Resultado(i)
		);
		end generate;

	ULA_31 : ULA_1bit port map(
		A => A(31),
		B => B(31),
		Less => '0',
		Vem_1 => vem_vai(30),
		A_negado => A_negado,
		B_negado => B_negado,
		op => op,
		Set => slt,
		Resultado => Resultado(31)
	);

-- TERMINAR A PARTE DO OR32bits !!!

	
end Behavioral;
