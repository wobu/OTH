----------------------------------------------------------------------------------
-- Company: HSR
-- Engineer: Alexander Metzner
-- 
-- Create Date:    05/11/2011 
-- Design Name: 
-- Module Name:    reg12WE - Behavioral 
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

entity reg12WE is
    Port ( CLK : in std_logic;
	       WE : in std_logic;
	       DataIn : in  STD_LOGIC_VECTOR (11 downto 0);
           DataOut : out  STD_LOGIC_VECTOR (11 downto 0));
end reg12WE;

architecture Behavioral of reg12WE is

begin

process(CLK)
begin
  if (CLK'event and CLK='1') then
     if (WE='1') then
	    DataOut <= DataIn;
	 end if;
  end if;
end process;

end Behavioral;

