----------------------------------------------------------------------------------
-- Company: HSR
-- Engineer: Alexander Metzner
-- 
-- Create Date:    05/11/2011 
-- Design Name: 
-- Module Name:    registerfile4x4RP1WP1 - Behavioral 
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

entity registerfile4x4RP1WP1 is
    Port ( CLK : in std_logic;
	       RPAdr : in std_logic_vector(1 downto 0);
		   WRAdr : in std_logic_vector(1 downto 0);
		   WE : in std_logic;
	       DataIn : in  STD_LOGIC_VECTOR (3 downto 0);
           DataOut : out  STD_LOGIC_VECTOR (3 downto 0));
end registerfile4x4RP1WP1;

architecture Behavioral of registerfile4x4RP1WP1 is

signal r0,r1,r2,r3 : std_logic_vector(3 downto 0);

begin

r0 <= "0000";

process(RPAdr,r0,r1,r2,r3)
begin
   if (RPAdr="00") then
      DataOut <= r0;
   elsif (RPAdr="01") then
      DataOut <= r1;
   elsif (RPAdr="10") then
      DataOut <= r2;
   elsif (RPAdr="11") then
      DataOut <= r3;
   else
      DataOut <= "XXXX";
   end if;
end process;



process(CLK)
begin
  if (CLK'event and CLK='1') then
     if (WE='1') then
	    if (WRAdr="01") then
	       r1 <= DataIn;
		elsif (WRAdr="10") then
		   r2 <= DataIn;
		elsif (WRAdr="11") then
		   r3 <= DataIn;
		end if;
	 end if;
  end if;
end process;

end Behavioral;

