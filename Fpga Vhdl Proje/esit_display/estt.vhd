--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:02:54 05/18/2022
-- Design Name:   
-- Module Name:   C:/Users/kaan_/Desktop/proje/esit_display/estt.vhd
-- Project Name:  esit_display
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: esit
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
 
ENTITY estt IS
END estt;
 
ARCHITECTURE behavior OF estt IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT esit
    PORT(
         a : IN  std_logic_vector(7 downto 0);
         b : IN  std_logic_vector(7 downto 0);
         esitlik : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic_vector(7 downto 0) := (others => '0');
   signal b : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal esitlik : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
  
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: esit PORT MAP (
          a => a,
          b => b,
          esitlik => esitlik
        );

  
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

    

      -- insert stimulus here 
		a<="00000001";b<="10000000"; wait for 50 ns;
		a<="00000001";b<="00000001"; wait for 50 ns;
		a<="11000001";b<="11000001"; wait for 50 ns;
		a<="11000001";b<="11100001"; wait for 50 ns;
		

      wait;
   end process;

END;
