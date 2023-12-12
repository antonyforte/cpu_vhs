--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:42:50 12/04/2023
-- Design Name:   
-- Module Name:   /home/antoniomontgue/antoniomontgue/cpu/Unidade_controle_tb.vhd
-- Project Name:  cpu
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Unidade_controle
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
 
ENTITY Unidade_controle_tb IS
END Unidade_controle_tb;
 
ARCHITECTURE behavior OF Unidade_controle_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Unidade_controle
    PORT(
         A : IN  std_logic_vector(5 downto 0);
         aluop : OUT  std_logic_vector(1 downto 0);
         regwrite : OUT  std_logic;
         regdst : OUT  std_logic;
         aluscr : OUT  std_logic;
         branch : OUT  std_logic;
         memwrite : OUT  std_logic;
         memtoreg : OUT  std_logic;
         jump : OUT  std_logic;
         memread : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(5 downto 0) := (others => '0');

 	--Outputs
   signal aluop : std_logic_vector(1 downto 0);
   signal regwrite : std_logic;
   signal regdst : std_logic;
   signal aluscr : std_logic;
   signal branch : std_logic;
   signal memwrite : std_logic;
   signal memtoreg : std_logic;
   signal jump : std_logic;
   signal memread : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Unidade_controle PORT MAP (
          A => A,
          aluop => aluop,
          regwrite => regwrite,
          regdst => regdst,
          aluscr => aluscr,
          branch => branch,
          memwrite => memwrite,
          memtoreg => memtoreg,
          jump => jump,
          memread => memread
        );


 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		A <= "000000";


      -- insert stimulus here 

      wait;
   end process;

END;
