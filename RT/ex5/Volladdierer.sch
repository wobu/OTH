<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="in1" />
        <signal name="in2" />
        <signal name="carry_in" />
        <signal name="XLXN_4" />
        <signal name="XLXN_5" />
        <signal name="XLXN_6" />
        <signal name="sum_out" />
        <signal name="XLXN_11" />
        <signal name="carry_out" />
        <port polarity="Input" name="in1" />
        <port polarity="Input" name="in2" />
        <port polarity="Input" name="carry_in" />
        <port polarity="Output" name="sum_out" />
        <port polarity="Output" name="carry_out" />
        <blockdef name="Halbaddierer">
            <timestamp>2018-5-25T12:10:58</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="or2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="192" ey="-96" sx="112" sy="-48" r="88" cx="116" cy="-136" />
            <arc ex="48" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <line x2="48" y1="-144" y2="-144" x1="112" />
            <arc ex="112" ey="-144" sx="192" sy="-96" r="88" cx="116" cy="-56" />
            <line x2="48" y1="-48" y2="-48" x1="112" />
        </blockdef>
        <block symbolname="Halbaddierer" name="XLXI_1">
            <blockpin signalname="in1" name="in1" />
            <blockpin signalname="in2" name="in2" />
            <blockpin signalname="XLXN_5" name="carry_out" />
            <blockpin signalname="XLXN_4" name="sum_out" />
        </block>
        <block symbolname="Halbaddierer" name="XLXI_2">
            <blockpin signalname="XLXN_4" name="in1" />
            <blockpin signalname="carry_in" name="in2" />
            <blockpin signalname="XLXN_6" name="carry_out" />
            <blockpin signalname="sum_out" name="sum_out" />
        </block>
        <block symbolname="or2" name="XLXI_3">
            <blockpin signalname="XLXN_6" name="I0" />
            <blockpin signalname="XLXN_5" name="I1" />
            <blockpin signalname="carry_out" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1120" y="1552" name="XLXI_1" orien="R0">
        </instance>
        <instance x="1600" y="1776" name="XLXI_2" orien="R0">
        </instance>
        <branch name="in1">
            <wire x2="1120" y1="1456" y2="1456" x1="848" />
        </branch>
        <branch name="in2">
            <wire x2="1120" y1="1520" y2="1520" x1="848" />
        </branch>
        <branch name="carry_in">
            <wire x2="1600" y1="1744" y2="1744" x1="848" />
        </branch>
        <branch name="XLXN_4">
            <wire x2="1552" y1="1520" y2="1520" x1="1504" />
            <wire x2="1552" y1="1520" y2="1680" x1="1552" />
            <wire x2="1600" y1="1680" y2="1680" x1="1552" />
        </branch>
        <branch name="XLXN_5">
            <wire x2="2080" y1="1456" y2="1456" x1="1504" />
        </branch>
        <branch name="sum_out">
            <wire x2="2128" y1="1744" y2="1744" x1="1984" />
        </branch>
        <iomarker fontsize="28" x="848" y="1456" name="in1" orien="R180" />
        <iomarker fontsize="28" x="848" y="1520" name="in2" orien="R180" />
        <iomarker fontsize="28" x="848" y="1744" name="carry_in" orien="R180" />
        <iomarker fontsize="28" x="2128" y="1744" name="sum_out" orien="R0" />
        <branch name="carry_out">
            <wire x2="2384" y1="1488" y2="1488" x1="2336" />
        </branch>
        <iomarker fontsize="28" x="2384" y="1488" name="carry_out" orien="R0" />
        <instance x="2080" y="1584" name="XLXI_3" orien="R0" />
        <branch name="XLXN_6">
            <wire x2="2000" y1="1680" y2="1680" x1="1984" />
            <wire x2="2080" y1="1520" y2="1520" x1="2000" />
            <wire x2="2000" y1="1520" y2="1680" x1="2000" />
        </branch>
    </sheet>
</drawing>