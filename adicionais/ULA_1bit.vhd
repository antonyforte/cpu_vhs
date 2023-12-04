----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:40:03 10/25/2023 
-- Design Name: 
-- Module Name:    ULA_1bit - Behavioral 
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

entity ULA_1bit is

	port (
	op : in std_logic_vector(0 to 1);
	A, B, Less, Vem_1, A_negado, B_negado : in std_logic;
	Vai_1, Set, Resultado : out std_logic
	);

end ULA_1bit;

architecture Behavioral of ULA_1bit is

	component mux2 is
		port(
		e  : in std_logic_vector(0 to 1);
		sel : in std_logic;
		saida : out std_logic 
		);
	end component;
	component mux4 is
		port(
			e : std_logic_vector(0 to 3);
			sel : in std_logic_vector(1 downto 0);
	      saida : out std_logic
		);
	end component;
	component Somador is
		port(
			A : in std_logic;
			B : in std_logic;
			Vem_1: in std_logic;
			Soma : out std_logic;
			Vai_1 : out std_logic
		);
	end component;

signal SaidaA, SaidaB, SaidaAnd, SaidaOr, SaidaSomador : std_logic;

begin

	mux2A : mux2 port map(
	e(0) => A,
	e(1) => not A,
	sel => A_negado,
	saida => SaidaA
	);
	mux2B : mux2 port map (
	e(0) => B,
	e(1) => not B,
	sel => B_negado,
	saida => SaidaB
	);

	SaidaAnd <= SaidaA and SaidaB;
	SaidaOr <= SaidaA or SaidaB;
	
	SomadorULA : Somador port map (
	A => SaidaA,
	B => SaidaB,
	Vem_1 => Vem_1,
	Vai_1 => Vai_1,
	Soma => SaidaSomador
	);
	
	mux4ULA : mux4 port map (
	e(0) => SaidaAnd,
	e(1) => SaidaOr,
	e(2) => SaidaSomador,
	e(3) => less,
	sel => op,
	saida => Resultado
	);
	
	Set <= SaidaSomador;

end Behavioral;

