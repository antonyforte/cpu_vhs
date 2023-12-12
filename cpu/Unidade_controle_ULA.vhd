----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:46:23 12/04/2023 
-- Design Name: 
-- Module Name:    Unidade_controle_ULA - Behavioral 
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

entity Unidade_controle_ULA is
	port(
			A : in std_logic_vector(5 downto 0);
			sel : in std_logic_vector(1 downto 0);
			Ainvertido,
			Binvertido,
			primvem1 : out std_logic;
			op : out std_logic_vector(1 downto 0)

	);
end Unidade_controle_ULA;

architecture Behavioral of Unidade_controle_ULA is
begin

controle_ula : process(A) begin
	if sel = "10" then
	--soma
		if A = "100000" then
			Ainvertido <= '0';
			Binvertido <= '0';
			primvem1 <= '0';
			op <= "10";
			--and
		elsif A = "100100" then
			Ainvertido <= '0';
			Binvertido <= '0';
			primvem1 <= '0';
			op <= "00";
			--sub
		elsif A = "100010" then
			Ainvertido <= '0';
			Binvertido <= '1';
			primvem1 <= '1';
			op <= "10";
			--nor
		elsif A = "100111" then
			Ainvertido <= '1';
			Binvertido <= '1';
			primvem1 <= '0';
			op <= "00";
			--or
		elsif A = "100101" then
			Ainvertido <= '0';
			Binvertido <= '0';
			primvem1 <= '0';
			op <= "01";
			--slt
		elsif A = "101010" then
			Ainvertido <= '0';
			Binvertido <= '1';
			primvem1 <= '1';
			op <= "11";
		end if;
	--lw
	elsif sel = "00" then
		Ainvertido <= '0';
		Binvertido <= '0';
		primvem1 <= '0';
		op <= "10";
		--beq
	elsif sel = "01" then
		Ainvertido <= '0';
		Binvertido <= '1';
		primvem1 <= '1';
		op <= "00";
	end if;
	
end process;




end Behavioral;

