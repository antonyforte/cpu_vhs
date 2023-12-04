----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:39:59 11/22/2023 
-- Design Name: 
-- Module Name:    bancoR - Behavioral 
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
use work.tipo;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity bancoR is 
	port(
		Escrita : in std_logic;
		NumReg : in std_logic_vector(4 downto 0);
		DadosReg : in std_logic_vector(31 downto 0);
		RegLeitura1 : in std_logic_vector(4 downto 0);
		RegLeitura2 : in std_logic_vector(4 downto 0);
		clock : in std_logic;
		clear : in std_logic;
		DadosLeitura1 : out std_logic_vector(31 downto 0);
		DadosLeitura2 : out std_logic_vector(31 downto 0)
		
	);
end bancoR;

architecture Behavioral of bancoR is

	component registrador_32 is
		port( Entrada : in std_logic_vector(31 downto 0);
				Clock : in std_logic;
				Enable : in std_logic;
				Clear : in std_logic;
				Saida : out std_logic_vector(31 downto 0)

		);

	end component;


	component decod5_32 is
		port(
				Entrada : in std_logic_vector(4 downto 0);
				Saida : out std_logic_vector(31 downto 0)
			);

	end component;

	component mux_32_x_32 is
		port (
			entrada : in tipo.vetor_de_palavras(0 to 31);
			selecao : in std_logic_vector(4 downto 0);
			saida : out std_logic_vector(31 downto 0)
			);
	end component;
	signal decodSaida, saidaAnd : std_logic_vector(31 downto 0);
	signal regsaida :  tipo.vetor_de_palavras(0 to 31);

begin


decod532 : decod5_32 port map(
	Entrada => NumReg,
	Saida => decodSaida 
);

registrador : for i in 0 to 31 generate
	saidaAnd(i) <= Escrita and decodSaida(i);
	registrador : registrador_32	port map(
		Entrada => DadosReg,
		Clock => clock,
		Enable => saidaAnd(i),
		Clear => clear,
		Saida => regsaida(i)
		
	);
end generate;
mux_32_x_32_1: mux_32_x_32 port map(
	entrada => regsaida,
	selecao => RegLeitura1,
	saida => DadosLeitura1
); 

mux_32_x_32_2: mux_32_x_32 port map(
	entrada => regsaida,
	selecao => RegLeitura2,
	saida => DadosLeitura2
); 

end Behavioral;

