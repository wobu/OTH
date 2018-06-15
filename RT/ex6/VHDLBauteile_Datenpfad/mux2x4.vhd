----------------------------------------------------------------------------------
-- Company: HSR
-- Engineer: Alexander Metzner
-- 
-- Create Date:    05/11/2011 
-- Design Name: 
-- Module Name:    mux2x4 - Behavioral 
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

entity mux2x4 is
    Port ( DataIn1 : in STD_LOGIC_VECTOR (3 downto 0);
	       DataIn2 : in STD_LOGIC_VECTOR (3 downto 0);
		   Sel : in std_logic;
           DataOut : out STD_LOGIC_VECTOR (3 downto 0));
end mux2x4;

architecture Behavioral of mux2x4 is

begin

process(DataIn1, DataIn2, Sel)
begin
  if (Sel='0') then
     DataOut <= DataIn1;
  else
     DataOut <= DataIn2;
  end if;
end process;

end Behavioral;

