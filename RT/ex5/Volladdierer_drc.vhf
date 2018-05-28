--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : Volladdierer_drc.vhf
-- /___/   /\     Timestamp : 05/25/2018 14:14:16
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: C:\Xilinx\14.7\ISE_DS\ISE\bin\nt64\unwrapped\sch2hdl.exe -intstyle ise -family spartan3e -flat -suppress -vhdl Volladdierer_drc.vhf -w G:/RT/ueb5/Volladdierer.sch
--Design Name: Volladdierer
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

entity Halbaddierer_MUSER_Volladdierer is
   port ( in1       : in    std_logic; 
          in2       : in    std_logic; 
          carry_out : out   std_logic; 
          sum_out   : out   std_logic);
end Halbaddierer_MUSER_Volladdierer;

architecture BEHAVIORAL of Halbaddierer_MUSER_Volladdierer is
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



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity Volladdierer is
   port ( carry_in  : in    std_logic; 
          in1       : in    std_logic; 
          in2       : in    std_logic; 
          carry_out : out   std_logic; 
          sum_out   : out   std_logic);
end Volladdierer;

architecture BEHAVIORAL of Volladdierer is
   attribute BOX_TYPE   : string ;
   signal XLXN_4    : std_logic;
   signal XLXN_5    : std_logic;
   signal XLXN_6    : std_logic;
   component Halbaddierer_MUSER_Volladdierer
      port ( in1       : in    std_logic; 
             in2       : in    std_logic; 
             carry_out : out   std_logic; 
             sum_out   : out   std_logic);
   end component;
   
   component OR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2 : component is "BLACK_BOX";
   
begin
   XLXI_1 : Halbaddierer_MUSER_Volladdierer
      port map (in1=>in1,
                in2=>in2,
                carry_out=>XLXN_5,
                sum_out=>XLXN_4);
   
   XLXI_2 : Halbaddierer_MUSER_Volladdierer
      port map (in1=>XLXN_4,
                in2=>carry_in,
                carry_out=>XLXN_6,
                sum_out=>sum_out);
   
   XLXI_3 : OR2
      port map (I0=>XLXN_6,
                I1=>XLXN_5,
                O=>carry_out);
   
end BEHAVIORAL;


