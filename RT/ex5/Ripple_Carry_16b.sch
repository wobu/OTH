<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="sum_out(15:0)" />
        <signal name="in2(15:0)" />
        <signal name="in1(15:0)" />
        <signal name="in1(3:0)" />
        <signal name="in2(3:0)" />
        <signal name="in1(7:4)" />
        <signal name="in2(7:4)" />
        <signal name="in1(11:8)" />
        <signal name="in2(11:8)" />
        <signal name="in1(15:12)" />
        <signal name="in2(15:12)" />
        <signal name="sum_out(15:12)" />
        <signal name="sum_out(11:8)" />
        <signal name="sum_out(7:4)" />
        <signal name="sum_out(3:0)" />
        <signal name="XLXN_16" />
        <signal name="XLXN_17" />
        <signal name="XLXN_18" />
        <signal name="carry_out" />
        <signal name="carry_in" />
        <port polarity="Output" name="sum_out(15:0)" />
        <port polarity="Input" name="in2(15:0)" />
        <port polarity="Input" name="in1(15:0)" />
        <port polarity="Output" name="carry_out" />
        <port polarity="Input" name="carry_in" />
        <blockdef name="Ripple_Carry_4b">
            <timestamp>2018-5-25T13:10:22</timestamp>
            <rect width="64" x="0" y="20" height="24" />
            <line x2="0" y1="32" y2="32" x1="64" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <rect width="256" x="64" y="-320" height="384" />
        </blockdef>
        <block symbolname="Ripple_Carry_4b" name="XLXI_1">
            <blockpin signalname="in1(15:12)" name="in1(3:0)" />
            <blockpin signalname="in2(15:12)" name="in2(3:0)" />
            <blockpin signalname="XLXN_18" name="carry_in" />
            <blockpin signalname="carry_out" name="carry_out" />
            <blockpin signalname="sum_out(15:12)" name="sum_out(3:0)" />
        </block>
        <block symbolname="Ripple_Carry_4b" name="XLXI_2">
            <blockpin signalname="in1(11:8)" name="in1(3:0)" />
            <blockpin signalname="in2(11:8)" name="in2(3:0)" />
            <blockpin signalname="XLXN_17" name="carry_in" />
            <blockpin signalname="XLXN_18" name="carry_out" />
            <blockpin signalname="sum_out(11:8)" name="sum_out(3:0)" />
        </block>
        <block symbolname="Ripple_Carry_4b" name="XLXI_3">
            <blockpin signalname="in1(7:4)" name="in1(3:0)" />
            <blockpin signalname="in2(7:4)" name="in2(3:0)" />
            <blockpin signalname="XLXN_16" name="carry_in" />
            <blockpin signalname="XLXN_17" name="carry_out" />
            <blockpin signalname="sum_out(7:4)" name="sum_out(3:0)" />
        </block>
        <block symbolname="Ripple_Carry_4b" name="XLXI_4">
            <blockpin signalname="in1(3:0)" name="in1(3:0)" />
            <blockpin signalname="in2(3:0)" name="in2(3:0)" />
            <blockpin signalname="carry_in" name="carry_in" />
            <blockpin signalname="XLXN_16" name="carry_out" />
            <blockpin signalname="sum_out(3:0)" name="sum_out(3:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="880" y="1568" name="XLXI_1" orien="R90">
        </instance>
        <instance x="1568" y="1584" name="XLXI_2" orien="R90">
        </instance>
        <instance x="2160" y="1568" name="XLXI_3" orien="R90">
        </instance>
        <instance x="2832" y="1568" name="XLXI_4" orien="R90">
        </instance>
        <branch name="sum_out(15:0)">
            <wire x2="816" y1="1232" y2="1232" x1="352" />
            <wire x2="1536" y1="1232" y2="1232" x1="816" />
            <wire x2="2128" y1="1232" y2="1232" x1="1536" />
            <wire x2="2768" y1="1232" y2="1232" x1="2128" />
            <wire x2="3120" y1="1232" y2="1232" x1="2768" />
            <wire x2="3120" y1="1216" y2="1232" x1="3120" />
        </branch>
        <branch name="in2(15:0)">
            <wire x2="768" y1="656" y2="656" x1="304" />
            <wire x2="1632" y1="656" y2="656" x1="768" />
            <wire x2="2288" y1="656" y2="656" x1="1632" />
            <wire x2="2720" y1="656" y2="656" x1="2288" />
            <wire x2="3088" y1="656" y2="656" x1="2720" />
            <wire x2="3088" y1="624" y2="656" x1="3088" />
        </branch>
        <branch name="in1(15:0)">
            <wire x2="944" y1="128" y2="128" x1="208" />
            <wire x2="960" y1="128" y2="128" x1="944" />
            <wire x2="1792" y1="128" y2="128" x1="960" />
            <wire x2="2480" y1="128" y2="128" x1="1792" />
            <wire x2="2896" y1="128" y2="128" x1="2480" />
            <wire x2="3120" y1="128" y2="128" x1="2896" />
            <wire x2="3120" y1="112" y2="128" x1="3120" />
        </branch>
        <iomarker fontsize="28" x="304" y="656" name="in2(15:0)" orien="R180" />
        <iomarker fontsize="28" x="352" y="1232" name="sum_out(15:0)" orien="R180" />
        <bustap x2="2896" y1="128" y2="224" x1="2896" />
        <branch name="in1(3:0)">
            <attrtext style="alignment:SOFT-TVCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2896" y="512" type="branch" />
            <wire x2="2896" y1="224" y2="512" x1="2896" />
            <wire x2="2896" y1="512" y2="1296" x1="2896" />
            <wire x2="3120" y1="1296" y2="1296" x1="2896" />
            <wire x2="3120" y1="1296" y2="1568" x1="3120" />
        </branch>
        <bustap x2="2720" y1="656" y2="752" x1="2720" />
        <bustap x2="2480" y1="128" y2="224" x1="2480" />
        <bustap x2="2288" y1="656" y2="752" x1="2288" />
        <bustap x2="1792" y1="128" y2="224" x1="1792" />
        <bustap x2="1632" y1="656" y2="752" x1="1632" />
        <bustap x2="960" y1="128" y2="224" x1="960" />
        <bustap x2="768" y1="656" y2="752" x1="768" />
        <bustap x2="816" y1="1232" y2="1328" x1="816" />
        <bustap x2="1536" y1="1232" y2="1328" x1="1536" />
        <bustap x2="2128" y1="1232" y2="1328" x1="2128" />
        <bustap x2="2768" y1="1232" y2="1328" x1="2768" />
        <branch name="in2(3:0)">
            <attrtext style="alignment:SOFT-TVCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2720" y="912" type="branch" />
            <wire x2="2720" y1="752" y2="912" x1="2720" />
            <wire x2="2720" y1="912" y2="1152" x1="2720" />
            <wire x2="2992" y1="1152" y2="1152" x1="2720" />
            <wire x2="2992" y1="1152" y2="1568" x1="2992" />
        </branch>
        <branch name="in1(7:4)">
            <attrtext style="alignment:SOFT-TVCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2480" y="480" type="branch" />
            <wire x2="2448" y1="896" y2="1568" x1="2448" />
            <wire x2="2480" y1="896" y2="896" x1="2448" />
            <wire x2="2480" y1="224" y2="480" x1="2480" />
            <wire x2="2480" y1="480" y2="896" x1="2480" />
        </branch>
        <branch name="in2(7:4)">
            <attrtext style="alignment:SOFT-TVCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2288" y="1024" type="branch" />
            <wire x2="2288" y1="752" y2="1024" x1="2288" />
            <wire x2="2288" y1="1024" y2="1152" x1="2288" />
            <wire x2="2320" y1="1152" y2="1152" x1="2288" />
            <wire x2="2320" y1="1152" y2="1568" x1="2320" />
        </branch>
        <branch name="in1(11:8)">
            <attrtext style="alignment:SOFT-TVCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1792" y="448" type="branch" />
            <wire x2="1792" y1="224" y2="448" x1="1792" />
            <wire x2="1792" y1="448" y2="896" x1="1792" />
            <wire x2="1856" y1="896" y2="896" x1="1792" />
            <wire x2="1856" y1="896" y2="1584" x1="1856" />
        </branch>
        <branch name="in2(11:8)">
            <attrtext style="alignment:SOFT-TVCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1632" y="864" type="branch" />
            <wire x2="1632" y1="752" y2="864" x1="1632" />
            <wire x2="1632" y1="864" y2="1168" x1="1632" />
            <wire x2="1728" y1="1168" y2="1168" x1="1632" />
            <wire x2="1728" y1="1168" y2="1584" x1="1728" />
        </branch>
        <branch name="in1(15:12)">
            <attrtext style="alignment:SOFT-TVCENTER;fontsize:28;fontname:Arial" attrname="Name" x="960" y="480" type="branch" />
            <wire x2="960" y1="224" y2="480" x1="960" />
            <wire x2="960" y1="480" y2="896" x1="960" />
            <wire x2="1168" y1="896" y2="896" x1="960" />
            <wire x2="1168" y1="896" y2="1568" x1="1168" />
        </branch>
        <branch name="in2(15:12)">
            <attrtext style="alignment:SOFT-TVCENTER;fontsize:28;fontname:Arial" attrname="Name" x="768" y="864" type="branch" />
            <wire x2="768" y1="752" y2="864" x1="768" />
            <wire x2="768" y1="864" y2="1152" x1="768" />
            <wire x2="1040" y1="1152" y2="1152" x1="768" />
            <wire x2="1040" y1="1152" y2="1568" x1="1040" />
        </branch>
        <branch name="sum_out(15:12)">
            <attrtext style="alignment:SOFT-TVCENTER;fontsize:28;fontname:Arial" attrname="Name" x="816" y="1360" type="branch" />
            <wire x2="816" y1="1328" y2="1360" x1="816" />
            <wire x2="816" y1="1360" y2="1440" x1="816" />
            <wire x2="848" y1="1440" y2="1440" x1="816" />
            <wire x2="848" y1="1440" y2="1568" x1="848" />
        </branch>
        <branch name="sum_out(11:8)">
            <attrtext style="alignment:SOFT-TVCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1536" y="1424" type="branch" />
            <wire x2="1536" y1="1328" y2="1424" x1="1536" />
            <wire x2="1536" y1="1424" y2="1584" x1="1536" />
        </branch>
        <branch name="sum_out(7:4)">
            <attrtext style="alignment:SOFT-TVCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2128" y="1408" type="branch" />
            <wire x2="2128" y1="1328" y2="1408" x1="2128" />
            <wire x2="2128" y1="1408" y2="1568" x1="2128" />
        </branch>
        <branch name="sum_out(3:0)">
            <attrtext style="alignment:SOFT-TVCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2768" y="1376" type="branch" />
            <wire x2="2768" y1="1328" y2="1376" x1="2768" />
            <wire x2="2768" y1="1376" y2="1440" x1="2768" />
            <wire x2="2800" y1="1440" y2="1440" x1="2768" />
            <wire x2="2800" y1="1440" y2="1568" x1="2800" />
        </branch>
        <branch name="XLXN_16">
            <wire x2="2192" y1="1488" y2="1488" x1="2016" />
            <wire x2="2192" y1="1488" y2="1568" x1="2192" />
            <wire x2="2016" y1="1488" y2="2032" x1="2016" />
            <wire x2="3120" y1="2032" y2="2032" x1="2016" />
            <wire x2="3120" y1="1952" y2="2032" x1="3120" />
        </branch>
        <branch name="XLXN_17">
            <wire x2="1600" y1="1504" y2="1504" x1="1440" />
            <wire x2="1600" y1="1504" y2="1584" x1="1600" />
            <wire x2="1440" y1="1504" y2="1984" x1="1440" />
            <wire x2="2448" y1="1984" y2="1984" x1="1440" />
            <wire x2="2448" y1="1952" y2="1984" x1="2448" />
        </branch>
        <branch name="XLXN_18">
            <wire x2="912" y1="1488" y2="1488" x1="752" />
            <wire x2="912" y1="1488" y2="1568" x1="912" />
            <wire x2="752" y1="1488" y2="2064" x1="752" />
            <wire x2="1856" y1="2064" y2="2064" x1="752" />
            <wire x2="1856" y1="1968" y2="2064" x1="1856" />
        </branch>
        <branch name="carry_out">
            <wire x2="160" y1="1936" y2="1968" x1="160" />
            <wire x2="1168" y1="1968" y2="1968" x1="160" />
            <wire x2="1168" y1="1952" y2="1968" x1="1168" />
        </branch>
        <iomarker fontsize="28" x="160" y="1936" name="carry_out" orien="R270" />
        <branch name="carry_in">
            <wire x2="3312" y1="768" y2="768" x1="2864" />
            <wire x2="2864" y1="768" y2="1568" x1="2864" />
        </branch>
        <iomarker fontsize="28" x="3312" y="768" name="carry_in" orien="R0" />
        <iomarker fontsize="28" x="208" y="128" name="in1(15:0)" orien="R180" />
    </sheet>
</drawing>