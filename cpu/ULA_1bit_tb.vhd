--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:41:12 12/11/2023
-- Design Name:   
-- Module Name:   /home/antoniomontgue/antoniomontgue/cpu/ULA_1bit_tb.vhd
-- Project Name:  cpu
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ULA_1bit
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
 
ENTITY ULA_1bit_tb IS
END ULA_1bit_tb;
 
ARCHITECTURE behavior OF ULA_1bit_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ULA_1bit
    PORT(
         op : IN  std_logic_vector(0 to 1);
         A : IN  std_logic;
         B : IN  std_logic;
         Less : IN  std_logic;
         Vem_1 : IN  std_logic;
         A_negado : IN  std_logic;
         B_negado : IN  std_logic;
         Vai_1 : OUT  std_logic;
         Set : OUT  std_logic;
         Resultado : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal op : std_logic_vector(0 to 1) := (others => '0');
   signal A : std_logic := '0';
   signal B : std_logic := '0';
   signal Less : std_logic := '0';
   signal Vem_1 : std_logic := '0';
   signal A_negado : std_logic := '0';
   signal B_negado : std_logic := '0';

 	--Outputs
   signal Vai_1 : std_logic;
   signal Set : std_logic;
   signal Resultado : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ULA_1bit PORT MAP (
          op => op,
          A => A,
          B => B,
          Less => Less,
          Vem_1 => Vem_1,
          A_negado => A_negado,
          B_negado => B_negado,
          Vai_1 => Vai_1,
          Set => Set,
          Resultado => Resultado
        );


   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		
		A <= '0';
		B <= '1';
		Less <= '0';
		Vem_1 <= '0';
		A_negado <= '0';
		B_negado <= '0';
		op <= "01";
      -- insert stimulus here 

      wait;
   end process;

END;
