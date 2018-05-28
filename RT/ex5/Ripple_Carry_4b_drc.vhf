--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : Ripple_Carry_4b_drc.vhf
-- /___/   /\     Timestamp : 05/25/2018 15:10:19
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: C:\Xilinx\14.7\ISE_DS\ISE\bin\nt64\unwrapped\sch2hdl.exe -intstyle ise -family spartan3e -flat -suppress -vhdl Ripple_Carry_4b_drc.vhf -w G:/RT/ueb5/Ripple_Carry_4b.sch
--Design Name: Ripple_Carry_4b
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

entity Halbaddierer_MUSER_Ripple_Carry_4b is
   port ( in1       : in    std_logic; 
          in2       : in    std_logic; 
          carry_out : out   std_logic; 
          sum_out   : out   std_logic);
end Halbaddierer_MUSER_Ripple_Carry_4b;

architecture BEHAVIORAL of Halbaddierer_MUSER_Ripple_Carry_4b is
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

entity Volladdierer_MUSER_Ripple_Carry_4b is
   port ( carry_in  : in    std_logic; 
          in1       : in    std_logic; 
          in2       : in    std_logic; 
          carry_out : out   std_logic; 
          sum_out   : out   std_logic);
end Volladdierer_MUSER_Ripple_Carry_4b;

architecture BEHAVIORAL of Volladdierer_MUSER_Ripple_Carry_4b is
   attribute BOX_TYPE   : string ;
   signal XLXN_4    : std_logic;
   signal XLXN_5    : std_logic;
   signal XLXN_6    : std_logic;
   component Halbaddierer_MUSER_Ripple_Carry_4b
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
   XLXI_1 : Halbaddierer_MUSER_Ripple_Carry_4b
      port map (in1=>in1,
                in2=>in2,
                carry_out=>XLXN_5,
                sum_out=>XLXN_4);
   
   XLXI_2 : Halbaddierer_MUSER_Ripple_Carry_4b
      port map (in1=>XLXN_4,
                in2=>carry_in,
                carry_out=>XLXN_6,
                sum_out=>sum_out);
   
   XLXI_3 : OR2
      port map (I0=>XLXN_6,
                I1=>XLXN_5,
                O=>carry_out);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity Ripple_Carry_4b is
   port ( carry_in  : in    std_logic; 
          in1       : in    std_logic_vector (3 downto 0); 
          in2       : in    std_logic_vector (3 downto 0); 
          carry_out : out   std_logic; 
          sum_out   : out   std_logic_vector (3 downto 0));
end Ripple_Carry_4b;

architecture BEHAVIORAL of Ripple_Carry_4b is
   signal XLXN_9    : std_logic;
   signal XLXN_10   : std_logic;
   signal XLXN_11   : std_logic;
   component Volladdierer_MUSER_Ripple_Carry_4b
      port ( in1       : in    std_logic; 
             in2       : in    std_logic; 
             carry_in  : in    std_logic; 
             sum_out   : out   std_logic; 
             carry_out : out   std_logic);
   end component;
   
begin
   XLXI_1 : Volladdierer_MUSER_Ripple_Carry_4b
      port map (carry_in=>XLXN_9,
                in1=>in1(1),
                in2=>in2(1),
                carry_out=>XLXN_10,
                sum_out=>sum_out(1));
   
   XLXI_2 : Volladdierer_MUSER_Ripple_Carry_4b
      port map (carry_in=>XLXN_10,
                in1=>in1(2),
                in2=>in2(2),
                carry_out=>XLXN_11,
                sum_out=>sum_out(2));
   
   XLXI_3 : Volladdierer_MUSER_Ripple_Carry_4b
      port map (carry_in=>carry_in,
                in1=>in1(0),
                in2=>in2(0),
                carry_out=>XLXN_9,
                sum_out=>sum_out(0));
   
   XLXI_4 : Volladdierer_MUSER_Ripple_Carry_4b
      port map (carry_in=>XLXN_11,
                in1=>in1(3),
                in2=>in2(3),
                carry_out=>carry_out,
                sum_out=>sum_out(3));
   
end BEHAVIORAL;


