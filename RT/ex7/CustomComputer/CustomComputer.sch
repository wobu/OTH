<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="aspartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <blockdef name="mem32x16">
            <timestamp>2013-6-12T18:12:49</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="regAdd4">
            <timestamp>2011-5-24T17:19:3</timestamp>
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-236" height="24" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
        </blockdef>
        <block symbolname="mem32x16" name="MicroCode">
            <blockpin name="Adr(4:0)" />
            <blockpin name="Data(15:0)" />
        </block>
        <block symbolname="mem32x16" name="OpCode">
            <blockpin name="Adr(4:0)" />
            <blockpin name="Data(15:0)" />
        </block>
        <block symbolname="regAdd4" name="XLXI_3">
            <blockpin name="CLK" />
            <blockpin name="WE" />
            <blockpin name="RESET" />
            <blockpin name="DataIn(3:0)" />
            <blockpin name="DataOut(3:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1328" y="592" name="MicroCode" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="0" type="instance" />
        </instance>
        <instance x="736" y="960" name="OpCode" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="0" type="instance" />
        </instance>
        <instance x="800" y="1696" name="XLXI_3" orien="R0">
        </instance>
    </sheet>
</drawing>