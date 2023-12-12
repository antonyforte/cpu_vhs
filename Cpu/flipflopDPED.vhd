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

entity flipflop_DPED is

	port(D,Clk,Preset,Enable : in std_logic;
			Q, Qb : out std_logic);

end flipflop_DPED;

architecture Behavioral of flipflop_DPED is

begin

	flipflop_DPED : process(Clk,Preset)
	begin
	
	if Preset = '1' then
		Q <= '1';
		Qb <= '0';
		
	elsif rising_edge(Clk) and Enable = '1' then
		Q <= D;
	
		Qb <= not D;
		
	end if;
	end process;
		
end Behavioral;

