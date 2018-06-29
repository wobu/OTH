----------------------------------------------------------------------------------
-- Company: HSR
-- Engineer: Alexander Metzner
-- 
-- Create Date:    05/11/2011 
-- Design Name: 
-- Module Name:    mux4x4 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;
--use IEEE.std_logic_arith.all;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity mux4x4 is
    Port ( DataIn1 : in STD_LOGIC_VECTOR (3 downto 0);
	       DataIn2 : in STD_LOGIC_VECTOR (3 downto 0);
		   DataIn3 : in STD_LOGIC_VECTOR (3 downto 0);
		   DataIn4 : in STD_LOGIC_VECTOR (3 downto 0);
		   Sel : in std_logic_vector(1 downto 0);
           DataOut : out STD_LOGIC_VECTOR (3 downto 0));
end mux4x4;

architecture Behavioral of mux4x4 is

begin

process(DataIn1, DataIn2, Sel)
begin
  if (Sel="00") then
     DataOut <= DataIn1;
  elsif (Sel="01") then
     DataOut <= DataIn2;
  elsif (Sel="10") then
     DataOut <= DataIn3;
  else
     DataOut <= DataIn4;
  end if;
end process;

end Behavioral;

