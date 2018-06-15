<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="clk" />
        <signal name="rst_n" />
        <signal name="a" />
        <signal name="counter" />
        <signal name="valid" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="rst_n" />
        <port polarity="Input" name="a" />
        <port polarity="Output" name="counter" />
        <port polarity="Output" name="valid" />
        <blockdef name="BCD_check">
            <timestamp>2018-6-8T11:48:55</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="BCD_check" name="XLXI_2">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="rst_n" name="rst_n" />
            <blockpin signalname="a" name="a" />
            <blockpin signalname="valid" name="valid" />
            <blockpin signalname="counter" name="counter" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="clk">
            <wire x2="1264" y1="1056" y2="1056" x1="928" />
        </branch>
        <iomarker fontsize="28" x="928" y="1056" name="clk" orien="R180" />
        <branch name="rst_n">
            <wire x2="1264" y1="1120" y2="1120" x1="912" />
        </branch>
        <branch name="a">
            <wire x2="1264" y1="1184" y2="1184" x1="928" />
        </branch>
        <iomarker fontsize="28" x="912" y="1120" name="rst_n" orien="R180" />
        <iomarker fontsize="28" x="928" y="1184" name="a" orien="R180" />
        <iomarker fontsize="28" x="1920" y="1056" name="valid" orien="R0" />
        <instance x="1264" y="1216" name="XLXI_2" orien="R0">
        </instance>
        <iomarker fontsize="28" x="2208" y="1184" name="counter" orien="R0" />
        <branch name="counter">
            <wire x2="2208" y1="1184" y2="1184" x1="1648" />
        </branch>
        <branch name="valid">
            <wire x2="1920" y1="1056" y2="1056" x1="1648" />
        </branch>
    </sheet>
</drawing>