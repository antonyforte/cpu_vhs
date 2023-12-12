--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:00:42 11/08/2023
-- Design Name:   
-- Module Name:   /home/antoniomontgue/antoniomontgue/cpu/registrador_32_tb.vhd
-- Project Name:  cpu
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: registrador_32
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY registrador_32_tb IS
END registrador_32_tb;
 
ARCHITECTURE behavior OF registrador_32_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT registrador_32
    PORT(
         Entrada : IN  std_logic_vector(31 downto 0);
         Clock : IN  std_logic;
         Enable : IN  std_logic;
         Clear : IN  std_logic;
         Saida : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Entrada : std_logic_vector(31 downto 0) := (others => '0');
   signal Clock : std_logic := '0';
   signal Enable : std_logic := '0';
   signal Clear : std_logic := '0';

 	--Outputs
   signal Saida : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant Clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: registrador_32 PORT MAP (
          Entrada => Entrada,
          Clock => Clock,
          Enable => Enable,
          Clear => Clear,
          Saida => Saida
        );

   -- Clock process definitions
   Clock_process :process
   begin
		Clock <= '0';
		wait for Clock_period/2;
		Clock <= '1';
		wait for Clock_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		Clear <= '1';
      wait for Clock_period*10;
		Clear <= '0';
		Entrada <= "11111111111111111111111111111111";
		wait for Clock_period*10;
		Enable <= '1';
      -- insert stimulus here 

      wait;
   end process;

END;
