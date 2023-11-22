----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:12:29 10/18/2023 
-- Design Name: 
-- Module Name:    asffd - Behavioral 
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

entity flipflop_dCEBD is

	port(D,Clk,Clear,Enable : in std_logic;
			Q, Qb : out std_logic);

end flipflop_dCEBD;

architecture Behavioral of flipflop_d is

begin

	flipflop_dCEBD : process(Clk,Clear)
	begin
	
	if Clear = '1' then
		Q <= '0';
		Qb <= '1';
		
	elsif falling_edge(Clk) and Enable = '1' then
		Q <= D;
	
		Qb <= not D;
		
	end if;
	end process;
		
end Behavioral;

