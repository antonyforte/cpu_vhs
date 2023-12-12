--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:32:24 12/11/2023
-- Design Name:   
-- Module Name:   /home/antoniomontgue/antoniomontgue/cpu/ULA32bit_tb.vhd
-- Project Name:  cpu
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ULA32bit
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
 
ENTITY ULA32bit_tb IS
END ULA32bit_tb;
 
ARCHITECTURE behavior OF ULA32bit_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ULA32bit
    PORT(
         A : IN  std_logic_vector(31 downto 0);
         B : IN  std_logic_vector(31 downto 0);
         op : IN  std_logic_vector(0 to 1);
         A_negado : IN  std_logic;
         B_negado : IN  std_logic;
         Resultado : OUT  std_logic_vector(31 downto 0);
         zero : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(31 downto 0) := (others => '0');
   signal B : std_logic_vector(31 downto 0) := (others => '0');
   signal op : std_logic_vector(0 to 1) := (others => '0');
   signal A_negado : std_logic := '0';
   signal B_negado : std_logic := '0';

 	--Outputs
   signal Resultado : std_logic_vector(31 downto 0);
   signal zero : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ULA32bit PORT MAP (
          A => A,
          B => B,
          op => op,
          A_negado => A_negado,
          B_negado => B_negado,
          Resultado => Resultado,
          zero => zero
        );

   -- Clock process definitions

 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		A <= "00000000000000000000000000000001";
		B <= "10000000000000000000000000000000";
		op <= "01";
		A_negado <= '0';
		B_negado <= '0';
		

      -- insert stimulus here 

      wait;
   end process;

END;
