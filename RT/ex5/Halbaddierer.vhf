--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : Halbaddierer.vhf
-- /___/   /\     Timestamp : 05/25/2018 14:17:21
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3e -flat -suppress -vhdl G:/RT/ueb5/Halbaddierer.vhf -w G:/RT/ueb5/Halbaddierer.sch
--Design Name: Halbaddierer
--Device: spartan3e
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity Halbaddierer is
   port ( in1       : in    std_logic; 
          in2       : in    std_logic; 
          carry_out : out   std_logic; 
          sum_out   : out   std_logic);
end Halbaddierer;

architecture BEHAVIORAL of Halbaddierer is
   attribute BOX_TYPE   : string ;
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
   component XOR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of XOR2 : component is "BLACK_BOX";
   
begin
   XLXI_1 : AND2
      port map (I0=>in2,
                I1=>in1,
                O=>carry_out);
   
   XLXI_2 : XOR2
      port map (I0=>in2,
                I1=>in1,
                O=>sum_out);
   
end BEHAVIORAL;


