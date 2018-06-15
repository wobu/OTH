----------------------------------------------------------------------------------
-- Company: HSR
-- Engineer: Alexander Metzner
-- 
-- Create Date:    05/11/2011 
-- Design Name: 
-- Module Name:    regWRWE2 - Behavioral 
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

entity reg2WRWE is
    Port ( CLK : in std_logic;
	       WE : in std_logic;
		   RESET : in std_logic;
	       DataIn : in  STD_LOGIC_VECTOR (1 downto 0);
           DataOut : out  STD_LOGIC_VECTOR (1 downto 0));
end reg2WRWE;

architecture Behavioral of reg2WRWE is

begin

process(CLK,RESET)
begin
  if (RESET='1') then
     DataOut <= "00";
  elsif (CLK'event and CLK='1') then
     if (WE='1') then
	    DataOut <= DataIn;
	 end if;
  end if;
end process;

end Behavioral;

