<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="in1(3:0)" />
        <signal name="in2(3:0)" />
        <signal name="carry_in" />
        <signal name="XLXN_7" />
        <signal name="XLXN_8" />
        <signal name="XLXN_9" />
        <signal name="XLXN_10" />
        <signal name="XLXN_11" />
        <signal name="carry_out" />
        <signal name="sum_out(3)">
        </signal>
        <signal name="sum_out(2)">
        </signal>
        <signal name="sum_out(1)">
        </signal>
        <signal name="sum_out(0)">
        </signal>
        <signal name="XLXN_20" />
        <signal name="XLXN_23" />
        <signal name="XLXN_25" />
        <signal name="XLXN_26" />
        <signal name="in2(3)" />
        <signal name="in1(3)" />
        <signal name="in2(2)" />
        <signal name="in1(2)" />
        <signal name="in2(1)" />
        <signal name="in1(1)" />
        <signal name="in2(0)" />
        <signal name="in1(0)" />
        <signal name="XLXN_36" />
        <signal name="XLXN_38" />
        <signal name="XLXN_41" />
        <signal name="sum_out(3:0)" />
        <signal name="XLXN_48" />
        <signal name="XLXN_49" />
        <port polarity="Input" name="in1(3:0)" />
        <port polarity="Input" name="in2(3:0)" />
        <port polarity="Input" name="carry_in" />
        <port polarity="Output" name="carry_out" />
        <port polarity="Output" name="sum_out(3:0)" />
        <blockdef name="Volladdierer">
            <timestamp>2018-5-25T12:14:19</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="Volladdierer" name="XLXI_1">
            <blockpin signalname="in1(1)" name="in1" />
            <blockpin signalname="in2(1)" name="in2" />
            <blockpin signalname="XLXN_9" name="carry_in" />
            <blockpin signalname="sum_out(1)" name="sum_out" />
            <blockpin signalname="XLXN_10" name="carry_out" />
        </block>
        <block symbolname="Volladdierer" name="XLXI_2">
            <blockpin signalname="in1(2)" name="in1" />
            <blockpin signalname="in2(2)" name="in2" />
            <blockpin signalname="XLXN_10" name="carry_in" />
            <blockpin signalname="sum_out(2)" name="sum_out" />
            <blockpin signalname="XLXN_11" name="carry_out" />
        </block>
        <block symbolname="Volladdierer" name="XLXI_3">
            <blockpin signalname="in1(0)" name="in1" />
            <blockpin signalname="in2(0)" name="in2" />
            <blockpin signalname="carry_in" name="carry_in" />
            <blockpin signalname="sum_out(0)" name="sum_out" />
            <blockpin signalname="XLXN_9" name="carry_out" />
        </block>
        <block symbolname="Volladdierer" name="XLXI_4">
            <blockpin signalname="in1(3)" name="in1" />
            <blockpin signalname="in2(3)" name="in2" />
            <blockpin signalname="XLXN_11" name="carry_in" />
            <blockpin signalname="sum_out(3)" name="sum_out" />
            <blockpin signalname="carry_out" name="carry_out" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="carry_in">
            <wire x2="1744" y1="1040" y2="1056" x1="1744" />
            <wire x2="2224" y1="1040" y2="1040" x1="1744" />
            <wire x2="2224" y1="720" y2="1040" x1="2224" />
        </branch>
        <branch name="carry_out">
            <wire x2="352" y1="1424" y2="1616" x1="352" />
        </branch>
        <branch name="sum_out(3)">
            <attrtext style="alignment:SOFT-TVCENTER;fontsize:28;fontname:Arial" attrname="Name" x="480" y="1664" type="branch" />
            <wire x2="480" y1="1424" y2="1616" x1="480" />
            <wire x2="480" y1="1616" y2="1664" x1="480" />
            <wire x2="480" y1="1664" y2="1856" x1="480" />
        </branch>
        <branch name="sum_out(2)">
            <attrtext style="alignment:SOFT-TVCENTER;fontsize:28;fontname:Arial" attrname="Name" x="880" y="1584" type="branch" />
            <wire x2="880" y1="1440" y2="1456" x1="880" />
            <wire x2="880" y1="1456" y2="1584" x1="880" />
            <wire x2="880" y1="1584" y2="1664" x1="880" />
            <wire x2="880" y1="1664" y2="1856" x1="880" />
        </branch>
        <branch name="sum_out(1)">
            <attrtext style="alignment:SOFT-TVCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1456" y="1600" type="branch" />
            <wire x2="1456" y1="1424" y2="1440" x1="1456" />
            <wire x2="1456" y1="1440" y2="1600" x1="1456" />
            <wire x2="1456" y1="1600" y2="1664" x1="1456" />
            <wire x2="1472" y1="1664" y2="1664" x1="1456" />
            <wire x2="1472" y1="1664" y2="1856" x1="1472" />
        </branch>
        <branch name="sum_out(0)">
            <attrtext style="alignment:SOFT-TVCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1872" y="1600" type="branch" />
            <wire x2="1872" y1="1440" y2="1456" x1="1872" />
            <wire x2="1872" y1="1456" y2="1600" x1="1872" />
            <wire x2="1872" y1="1600" y2="1664" x1="1872" />
            <wire x2="1904" y1="1664" y2="1664" x1="1872" />
            <wire x2="1904" y1="1664" y2="1856" x1="1904" />
        </branch>
        <branch name="in2(3:0)">
            <wire x2="368" y1="672" y2="672" x1="240" />
            <wire x2="384" y1="672" y2="672" x1="368" />
            <wire x2="464" y1="672" y2="672" x1="384" />
            <wire x2="784" y1="672" y2="672" x1="464" />
            <wire x2="896" y1="672" y2="672" x1="784" />
            <wire x2="1328" y1="672" y2="672" x1="896" />
            <wire x2="1392" y1="672" y2="672" x1="1328" />
            <wire x2="1776" y1="672" y2="672" x1="1392" />
            <wire x2="1840" y1="672" y2="672" x1="1776" />
            <wire x2="1952" y1="672" y2="672" x1="1840" />
        </branch>
        <instance x="1712" y="1056" name="XLXI_3" orien="R90">
        </instance>
        <instance x="1296" y="1040" name="XLXI_1" orien="R90">
        </instance>
        <branch name="XLXN_9">
            <wire x2="1328" y1="976" y2="976" x1="1216" />
            <wire x2="1328" y1="976" y2="1040" x1="1328" />
            <wire x2="1216" y1="976" y2="1456" x1="1216" />
            <wire x2="1744" y1="1456" y2="1456" x1="1216" />
            <wire x2="1744" y1="1440" y2="1456" x1="1744" />
        </branch>
        <iomarker fontsize="28" x="352" y="1616" name="carry_out" orien="R90" />
        <bustap x2="384" y1="672" y2="768" x1="384" />
        <bustap x2="784" y1="672" y2="768" x1="784" />
        <bustap x2="1328" y1="672" y2="768" x1="1328" />
        <bustap x2="1776" y1="672" y2="768" x1="1776" />
        <iomarker fontsize="28" x="2224" y="720" name="carry_in" orien="R270" />
        <iomarker fontsize="28" x="240" y="672" name="in2(3:0)" orien="R180" />
        <branch name="in1(3:0)">
            <wire x2="512" y1="416" y2="416" x1="256" />
            <wire x2="528" y1="416" y2="416" x1="512" />
            <wire x2="976" y1="416" y2="416" x1="528" />
            <wire x2="1472" y1="416" y2="416" x1="976" />
            <wire x2="1888" y1="416" y2="416" x1="1472" />
            <wire x2="2048" y1="416" y2="416" x1="1888" />
        </branch>
        <bustap x2="528" y1="416" y2="512" x1="528" />
        <bustap x2="976" y1="416" y2="512" x1="976" />
        <bustap x2="1472" y1="416" y2="512" x1="1472" />
        <bustap x2="1888" y1="416" y2="512" x1="1888" />
        <branch name="in2(3)">
            <attrtext style="alignment:SOFT-TVCENTER;fontsize:28;fontname:Arial" attrname="Name" x="416" y="992" type="branch" />
            <wire x2="384" y1="768" y2="896" x1="384" />
            <wire x2="416" y1="896" y2="896" x1="384" />
            <wire x2="416" y1="896" y2="992" x1="416" />
            <wire x2="416" y1="992" y2="1040" x1="416" />
        </branch>
        <branch name="in1(3)">
            <attrtext style="alignment:SOFT-TCENTER;fontsize:28;fontname:Arial" attrname="Name" x="528" y="592" type="branch" />
            <wire x2="528" y1="592" y2="592" x1="480" />
            <wire x2="480" y1="592" y2="1040" x1="480" />
            <wire x2="528" y1="512" y2="592" x1="528" />
        </branch>
        <branch name="in2(2)">
            <attrtext style="alignment:SOFT-TVCENTER;fontsize:28;fontname:Arial" attrname="Name" x="816" y="976" type="branch" />
            <wire x2="784" y1="768" y2="896" x1="784" />
            <wire x2="816" y1="896" y2="896" x1="784" />
            <wire x2="816" y1="896" y2="976" x1="816" />
            <wire x2="816" y1="976" y2="1056" x1="816" />
        </branch>
        <branch name="in1(2)">
            <attrtext style="alignment:SOFT-TCENTER;fontsize:28;fontname:Arial" attrname="Name" x="976" y="592" type="branch" />
            <wire x2="976" y1="592" y2="592" x1="880" />
            <wire x2="880" y1="592" y2="1056" x1="880" />
            <wire x2="976" y1="512" y2="592" x1="976" />
        </branch>
        <branch name="in2(1)">
            <attrtext style="alignment:SOFT-TVCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1392" y="992" type="branch" />
            <wire x2="1328" y1="768" y2="896" x1="1328" />
            <wire x2="1392" y1="896" y2="896" x1="1328" />
            <wire x2="1392" y1="896" y2="992" x1="1392" />
            <wire x2="1392" y1="992" y2="1040" x1="1392" />
        </branch>
        <branch name="in1(1)">
            <attrtext style="alignment:SOFT-TVCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1472" y="592" type="branch" />
            <wire x2="1456" y1="768" y2="1040" x1="1456" />
            <wire x2="1472" y1="768" y2="768" x1="1456" />
            <wire x2="1472" y1="512" y2="592" x1="1472" />
            <wire x2="1472" y1="592" y2="768" x1="1472" />
        </branch>
        <branch name="in2(0)">
            <attrtext style="alignment:SOFT-TVCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1808" y="960" type="branch" />
            <wire x2="1776" y1="768" y2="912" x1="1776" />
            <wire x2="1808" y1="912" y2="912" x1="1776" />
            <wire x2="1808" y1="912" y2="960" x1="1808" />
            <wire x2="1808" y1="960" y2="1056" x1="1808" />
        </branch>
        <branch name="in1(0)">
            <attrtext style="alignment:SOFT-TVCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1888" y="608" type="branch" />
            <wire x2="1872" y1="784" y2="1056" x1="1872" />
            <wire x2="1888" y1="784" y2="784" x1="1872" />
            <wire x2="1888" y1="512" y2="608" x1="1888" />
            <wire x2="1888" y1="608" y2="784" x1="1888" />
        </branch>
        <iomarker fontsize="28" x="256" y="416" name="in1(3:0)" orien="R180" />
        <instance x="320" y="1040" name="XLXI_4" orien="R90">
        </instance>
        <branch name="XLXN_11">
            <wire x2="352" y1="1024" y2="1024" x1="256" />
            <wire x2="352" y1="1024" y2="1040" x1="352" />
            <wire x2="256" y1="1024" y2="1520" x1="256" />
            <wire x2="752" y1="1520" y2="1520" x1="256" />
            <wire x2="752" y1="1440" y2="1520" x1="752" />
        </branch>
        <instance x="720" y="1056" name="XLXI_2" orien="R90">
        </instance>
        <branch name="XLXN_10">
            <wire x2="752" y1="992" y2="1056" x1="752" />
            <wire x2="976" y1="992" y2="992" x1="752" />
            <wire x2="976" y1="992" y2="1440" x1="976" />
            <wire x2="1328" y1="1440" y2="1440" x1="976" />
            <wire x2="1328" y1="1424" y2="1440" x1="1328" />
        </branch>
        <branch name="sum_out(3:0)">
            <wire x2="480" y1="1952" y2="1952" x1="112" />
            <wire x2="880" y1="1952" y2="1952" x1="480" />
            <wire x2="1472" y1="1952" y2="1952" x1="880" />
            <wire x2="1904" y1="1952" y2="1952" x1="1472" />
            <wire x2="2000" y1="1952" y2="1952" x1="1904" />
            <wire x2="2000" y1="1936" y2="1952" x1="2000" />
        </branch>
        <iomarker fontsize="28" x="112" y="1952" name="sum_out(3:0)" orien="R180" />
        <bustap x2="480" y1="1952" y2="1856" x1="480" />
        <bustap x2="880" y1="1952" y2="1856" x1="880" />
        <bustap x2="1472" y1="1952" y2="1856" x1="1472" />
        <bustap x2="1904" y1="1952" y2="1856" x1="1904" />
    </sheet>
</drawing>