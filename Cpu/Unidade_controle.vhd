----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:20:07 12/04/2023 
-- Design Name: 
-- Module Name:    Unidade_controle - Behavioral 
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

entity Unidade_controle is
	port(
		A : in std_logic_vector(5 downto 0);
		
		aluop : out std_logic_vector(1 downto 0);
		regwrite,
		regdst,
		aluscr,
		branch,
		memwrite,
		memtoreg,
		jump,
		memread : out std_logic
	);
end Unidade_controle;

architecture Behavioral of Unidade_controle is

begin
controle : process(A) begin
	if A = "000000" then
			aluop <= "10";
			regwrite <= '1';
			regdst <= '1';
			aluscr <= '0';
			branch <= '0';
			memwrite <= '0';
			memtoreg <= '0';
			jump <= '0';
			memread <= '0';
	elsif A = "001000" then
			aluop <= "00";
			regwrite <= '1';
			regdst <= '0';
			aluscr <= '1';
			branch <= '0';
			memwrite <= '0';
			memtoreg <= '0';
			jump <= '0';
			memread <= '0';
	elsif A = "100011" then
			aluop <= "00";
			regwrite <= '1';
			regdst <= '0';
			aluscr <= '1';
			branch <= '0';
			memwrite <= '0';
			memtoreg <= '1';
			jump <= '0';
			memread <= '1';
	elsif A = "101011" then
				aluop <= "00";
				regwrite <= '0';
				regdst <= '0';
				aluscr <= '1';
				branch <= '0';
				memwrite <= '1';
				memtoreg <= '0';
				jump <= '0';
				memread <= '0';
	elsif A = "000100" then
				aluop <= "01";
				regwrite <= '0';
				regdst <= '0';
				aluscr <= '0';
				branch <= '1';
				memwrite <= '0';
				memtoreg <= '0';
				jump <= '0';
				memread <= '0';
	elsif A = "000010" then
				aluop <= "00";
				regwrite <= '0';
				regdst <= '0';
				aluscr <= '0';
				branch <= '0';
				memwrite <= '0';
				memtoreg <= '0';
				jump <= '1';
				memread <= '0';			
	end if;
end process;

end Behavioral;

