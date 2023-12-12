--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:57:12 11/29/2023
-- Design Name:   
-- Module Name:   /home/antoniomontgue/antoniomontgue/cpu/desl_esq_tb.vhd
-- Project Name:  cpu
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: desl_esq
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
 
ENTITY desl_esq_tb IS
END desl_esq_tb;
 
ARCHITECTURE behavior OF desl_esq_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT desl_esq
    PORT(
         Entrada : IN  std_logic_vector(25 downto 0);
         Saida : OUT  std_logic_vector(27 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Entrada : std_logic_vector(25 downto 0) := (others => '0');

 	--Outputs
   signal Saida : std_logic_vector(27 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: desl_esq PORT MAP (
          Entrada => Entrada,
          Saida => Saida
        );   -- Stimulus process
   stim_proc: process
   begin	
		Entrada <= "111111111111111111111111";
      -- hold reset state for 100 ns.
      wait for 100 ns;	      -- insert stimulus here 

      wait;
   end process;

END;
