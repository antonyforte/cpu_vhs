--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:14:40 12/04/2023
-- Design Name:   
-- Module Name:   /home/antoniomontgue/antoniomontgue/cpu/mux2_32_tb.vhd
-- Project Name:  cpu
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: mux2_32
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
 
ENTITY mux2_32_tb IS
END mux2_32_tb;
 
ARCHITECTURE behavior OF mux2_32_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT mux2_32
    PORT(
         e : IN  std_logic_vector(0 to 31);
         e1 : IN  std_logic_vector(0 to 31);
         sel : IN  std_logic;
         saida : OUT  std_logic_vector(0 to 31)
        );
    END COMPONENT;
    

   --Inputs
   signal e : std_logic_vector(0 to 31) := (others => '0');
   signal e1 : std_logic_vector(0 to 31) := (others => '0');
   signal sel : std_logic := '0';

 	--Outputs
   signal saida : std_logic_vector(0 to 31);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: mux2_32 PORT MAP (
          e => e,
          e1 => e1,
          sel => sel,
          saida => saida
        );

   -- Clock process definitions
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		e <= "00000000000000000000000000000000";
		e1 <= "11111111111111111111111111111111";
		sel <= '0';
		
		wait for 100 ns;
		sel <= '1';

      -- insert stimulus here 

      wait;
   end process;

END;
