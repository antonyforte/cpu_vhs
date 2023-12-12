--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:42:09 12/06/2023
-- Design Name:   
-- Module Name:   /home/antoniomontgue/antoniomontgue/cpu/ULA_32bits_tb.vhd
-- Project Name:  cpu
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ULA_32bits
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
 
ENTITY ULA_32bits_tb IS
END ULA_32bits_tb;
 
ARCHITECTURE behavior OF ULA_32bits_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ULA_32bits
    PORT(
         A : IN  std_logic_vector(31 downto 0);
         B : IN  std_logic_vector(31 downto 0);
         op : IN  std_logic_vector(1 downto 0);
         A_negado : IN  std_logic;
         B_negado : IN  std_logic;
         Resultado : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(31 downto 0) := (others => '0');
   signal B : std_logic_vector(31 downto 0) := (others => '0');
   signal op : std_logic_vector(1 downto 0) := (others => '0');
   signal A_negado : std_logic := '0';
   signal B_negado : std_logic := '0';

 	--Outputs
   signal Resultado : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ULA_32bits PORT MAP (
          A => A,
          B => B,
          op => op,
          A_negado => A_negado,
          B_negado => B_negado,
          Resultado => Resultado
        );

   -- Clock process definitions

 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	


      -- insert stimulus here
		A <= "10001000100010001000100010001000";
		B <= "00010001000100010001000100010001";
		op <= "10";
		A_negado <= '0';
		B_negado <= '0';

      wait;
   end process;

END;
