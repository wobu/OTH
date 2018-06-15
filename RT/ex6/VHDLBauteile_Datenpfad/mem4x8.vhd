----------------------------------------------------------------------------------
-- Company: HSR
-- Engineer: Alexander Metzner
-- 
-- Create Date:    05/11/2011 
-- Design Name: 
-- Module Name:    mem4x8 - Behavioral 
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
use std.textio.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity mem4x8 is
    generic (FileName : STRING := "prom.txt");
    Port ( Adr : in  STD_LOGIC_VECTOR (1 downto 0);
           Data : out  STD_LOGIC_VECTOR (7 downto 0));
end mem4x8;

architecture Behavioral of mem4x8 is

type memtype is array (natural range <>) of std_logic_vector(7 downto 0);


begin

process(Adr)
  file f : TEXT;
  variable mem : memtype(0 to 3);
  variable first : boolean := true;
  variable cnt : natural;
  variable l : line; -- std_logic_vector(7 downto 0);
  variable bw : bit_vector(7 downto 0);
begin
   if (first=true) then
	   first := false;
		cnt := 0;
		FILE_OPEN(f,FileName);
		while ((not ENDFILE(f)) and (cnt<=3)) loop
		    READLINE(f,l);
			 READ(l,bw);
			 mem(cnt) := to_Stdlogicvector(bw);
			 cnt := cnt+1;
		end loop;
	end if;
	Data <= mem(to_integer(unsigned(Adr)));
end process;

end Behavioral;

