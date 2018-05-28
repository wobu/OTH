<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1" />
        <signal name="XLXN_2" />
        <signal name="in1" />
        <signal name="in2" />
        <signal name="carry_out" />
        <signal name="sum_out" />
        <port polarity="Input" name="in1" />
        <port polarity="Input" name="in2" />
        <port polarity="Output" name="carry_out" />
        <port polarity="Output" name="sum_out" />
        <blockdef name="and2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-144" x1="64" />
        </blockdef>
        <blockdef name="xor2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="60" y1="-128" y2="-128" x1="0" />
            <line x2="208" y1="-96" y2="-96" x1="256" />
            <arc ex="44" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <arc ex="64" ey="-144" sx="64" sy="-48" r="56" cx="32" cy="-96" />
            <line x2="64" y1="-144" y2="-144" x1="128" />
            <line x2="64" y1="-48" y2="-48" x1="128" />
            <arc ex="128" ey="-144" sx="208" sy="-96" r="88" cx="132" cy="-56" />
            <arc ex="208" ey="-96" sx="128" sy="-48" r="88" cx="132" cy="-136" />
        </blockdef>
        <block symbolname="and2" name="XLXI_1">
            <blockpin signalname="in2" name="I0" />
            <blockpin signalname="in1" name="I1" />
            <blockpin signalname="carry_out" name="O" />
        </block>
        <block symbolname="xor2" name="XLXI_2">
            <blockpin signalname="in2" name="I0" />
            <blockpin signalname="in1" name="I1" />
            <blockpin signalname="sum_out" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1040" y="1264" name="XLXI_1" orien="R0" />
        <instance x="1040" y="1504" name="XLXI_2" orien="R0" />
        <branch name="in1">
            <wire x2="832" y1="1136" y2="1136" x1="592" />
            <wire x2="1040" y1="1136" y2="1136" x1="832" />
            <wire x2="832" y1="1136" y2="1376" x1="832" />
            <wire x2="1040" y1="1376" y2="1376" x1="832" />
        </branch>
        <branch name="in2">
            <wire x2="752" y1="1200" y2="1200" x1="592" />
            <wire x2="1040" y1="1200" y2="1200" x1="752" />
            <wire x2="752" y1="1200" y2="1440" x1="752" />
            <wire x2="1040" y1="1440" y2="1440" x1="752" />
        </branch>
        <iomarker fontsize="28" x="592" y="1136" name="in1" orien="R180" />
        <iomarker fontsize="28" x="592" y="1200" name="in2" orien="R180" />
        <branch name="carry_out">
            <wire x2="1328" y1="1168" y2="1168" x1="1296" />
        </branch>
        <iomarker fontsize="28" x="1328" y="1168" name="carry_out" orien="R0" />
        <branch name="sum_out">
            <wire x2="1328" y1="1408" y2="1408" x1="1296" />
        </branch>
        <iomarker fontsize="28" x="1328" y="1408" name="sum_out" orien="R0" />
    </sheet>
</drawing>