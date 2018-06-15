<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="clk" />
        <signal name="Mem_Data(1)" />
        <signal name="Mem_Data(0)" />
        <signal name="XLXN_10" />
        <signal name="XLXN_11" />
        <signal name="rst_n" />
        <signal name="XLXN_30" />
        <signal name="InvalidCounter(3:0)" />
        <signal name="ValidCounter(3:0)" />
        <signal name="Mem_Data(5:0)" />
        <signal name="Mem_Data(5:2)" />
        <signal name="Eingang(7:0)" />
        <signal name="Eingang(4:1)" />
        <signal name="Eingang(0)" />
        <signal name="XLXN_47(7:0)" />
        <signal name="XLXN_47(4:0)" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="rst_n" />
        <blockdef name="regAdd4">
            <timestamp>2018-6-8T12:3:52</timestamp>
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-236" height="24" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
        </blockdef>
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
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <blockdef name="busConnector4">
            <timestamp>2018-6-15T11:27:52</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="reg8">
            <timestamp>2018-6-15T11:48:56</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <blockdef name="mem32x6">
            <timestamp>2018-6-15T11:5:50</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="regAdd4" name="XLXI_2">
            <blockpin signalname="clk" name="CLK" />
            <blockpin signalname="XLXN_10" name="WE" />
            <blockpin signalname="XLXN_30" name="RESET" />
            <blockpin signalname="ValidCounter(3:0)" name="DataIn(3:0)" />
            <blockpin signalname="ValidCounter(3:0)" name="DataOut(3:0)" />
        </block>
        <block symbolname="regAdd4" name="XLXI_3">
            <blockpin signalname="clk" name="CLK" />
            <blockpin signalname="XLXN_11" name="WE" />
            <blockpin signalname="XLXN_30" name="RESET" />
            <blockpin signalname="InvalidCounter(3:0)" name="DataIn(3:0)" />
            <blockpin signalname="InvalidCounter(3:0)" name="DataOut(3:0)" />
        </block>
        <block symbolname="and2" name="XLXI_4">
            <blockpin signalname="Mem_Data(0)" name="I0" />
            <blockpin signalname="Mem_Data(1)" name="I1" />
            <blockpin signalname="XLXN_10" name="O" />
        </block>
        <block symbolname="xor2" name="XLXI_5">
            <blockpin signalname="Mem_Data(0)" name="I0" />
            <blockpin signalname="Mem_Data(1)" name="I1" />
            <blockpin signalname="XLXN_11" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_8">
            <blockpin signalname="rst_n" name="I" />
            <blockpin signalname="XLXN_30" name="O" />
        </block>
        <block symbolname="reg8" name="XLXI_12">
            <blockpin signalname="clk" name="CLK" />
            <blockpin signalname="Eingang(7:0)" name="DataIn(7:0)" />
            <blockpin signalname="XLXN_47(7:0)" name="DataOut(7:0)" />
        </block>
        <block symbolname="mem32x6" name="XLXI_14">
            <blockpin signalname="XLXN_47(4:0)" name="Adr(4:0)" />
            <blockpin signalname="Mem_Data(5:0)" name="Data(5:0)" />
        </block>
        <block symbolname="busConnector4" name="XLXI_15">
            <blockpin signalname="Mem_Data(5:2)" name="DataIn(3:0)" />
            <blockpin signalname="Eingang(4:1)" name="DataOut(3:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="2048" y="2048" name="XLXI_3" orien="R0">
        </instance>
        <instance x="2064" y="736" name="XLXI_2" orien="R0">
        </instance>
        <branch name="clk">
            <wire x2="528" y1="896" y2="896" x1="448" />
            <wire x2="448" y1="896" y2="1120" x1="448" />
            <wire x2="1168" y1="1120" y2="1120" x1="448" />
            <wire x2="1168" y1="1120" y2="1200" x1="1168" />
            <wire x2="1056" y1="1200" y2="1200" x1="848" />
            <wire x2="1168" y1="1200" y2="1200" x1="1056" />
            <wire x2="1056" y1="1200" y2="1824" x1="1056" />
            <wire x2="1104" y1="1824" y2="1824" x1="1056" />
            <wire x2="2048" y1="1824" y2="1824" x1="1104" />
            <wire x2="1056" y1="512" y2="512" x1="1040" />
            <wire x2="2064" y1="512" y2="512" x1="1056" />
            <wire x2="1056" y1="512" y2="1200" x1="1056" />
        </branch>
        <iomarker fontsize="28" x="848" y="1200" name="clk" orien="R180" />
        <iomarker fontsize="28" x="848" y="1264" name="rst_n" orien="R180" />
        <branch name="Mem_Data(1)">
            <wire x2="1552" y1="1152" y2="1200" x1="1552" />
            <wire x2="1680" y1="1200" y2="1200" x1="1552" />
            <wire x2="1888" y1="1200" y2="1200" x1="1680" />
            <wire x2="1680" y1="1200" y2="1456" x1="1680" />
            <wire x2="1616" y1="1152" y2="1152" x1="1552" />
            <wire x2="1648" y1="848" y2="848" x1="1568" />
            <wire x2="1568" y1="848" y2="944" x1="1568" />
            <wire x2="1680" y1="944" y2="944" x1="1568" />
            <wire x2="1680" y1="944" y2="1200" x1="1680" />
            <wire x2="1584" y1="1456" y2="1536" x1="1584" />
            <wire x2="1664" y1="1536" y2="1536" x1="1584" />
            <wire x2="1680" y1="1456" y2="1456" x1="1584" />
            <wire x2="1616" y1="1120" y2="1152" x1="1616" />
        </branch>
        <branch name="Mem_Data(0)">
            <wire x2="1552" y1="1216" y2="1328" x1="1552" />
            <wire x2="1712" y1="1328" y2="1328" x1="1552" />
            <wire x2="1888" y1="1328" y2="1328" x1="1712" />
            <wire x2="1712" y1="1328" y2="1472" x1="1712" />
            <wire x2="1664" y1="1216" y2="1216" x1="1552" />
            <wire x2="1648" y1="912" y2="912" x1="1584" />
            <wire x2="1584" y1="912" y2="976" x1="1584" />
            <wire x2="1712" y1="976" y2="976" x1="1584" />
            <wire x2="1712" y1="976" y2="1328" x1="1712" />
            <wire x2="1600" y1="1472" y2="1600" x1="1600" />
            <wire x2="1664" y1="1600" y2="1600" x1="1600" />
            <wire x2="1712" y1="1472" y2="1472" x1="1600" />
            <wire x2="1664" y1="1120" y2="1216" x1="1664" />
        </branch>
        <instance x="1648" y="976" name="XLXI_4" orien="R0" />
        <instance x="1664" y="1664" name="XLXI_5" orien="R0" />
        <branch name="XLXN_10">
            <wire x2="1984" y1="880" y2="880" x1="1904" />
            <wire x2="1984" y1="576" y2="880" x1="1984" />
            <wire x2="2064" y1="576" y2="576" x1="1984" />
        </branch>
        <branch name="XLXN_11">
            <wire x2="1984" y1="1568" y2="1568" x1="1920" />
            <wire x2="1984" y1="1568" y2="1888" x1="1984" />
            <wire x2="2048" y1="1888" y2="1888" x1="1984" />
        </branch>
        <instance x="736" y="1552" name="XLXI_8" orien="R0" />
        <branch name="rst_n">
            <wire x2="464" y1="1088" y2="1520" x1="464" />
            <wire x2="736" y1="1520" y2="1520" x1="464" />
            <wire x2="1040" y1="1088" y2="1088" x1="464" />
            <wire x2="1040" y1="1088" y2="1264" x1="1040" />
            <wire x2="1168" y1="1264" y2="1264" x1="1040" />
            <wire x2="1040" y1="1264" y2="1264" x1="848" />
        </branch>
        <branch name="XLXN_30">
            <wire x2="2064" y1="640" y2="640" x1="944" />
            <wire x2="944" y1="640" y2="1376" x1="944" />
            <wire x2="1504" y1="1376" y2="1376" x1="944" />
            <wire x2="1504" y1="1376" y2="1520" x1="1504" />
            <wire x2="1504" y1="1520" y2="1952" x1="1504" />
            <wire x2="2048" y1="1952" y2="1952" x1="1504" />
            <wire x2="1504" y1="1520" y2="1520" x1="960" />
        </branch>
        <branch name="InvalidCounter(3:0)">
            <wire x2="2048" y1="2016" y2="2016" x1="1984" />
            <wire x2="1984" y1="2016" y2="2112" x1="1984" />
            <wire x2="2512" y1="2112" y2="2112" x1="1984" />
            <wire x2="2512" y1="1824" y2="1824" x1="2432" />
            <wire x2="2512" y1="1824" y2="2112" x1="2512" />
        </branch>
        <branch name="ValidCounter(3:0)">
            <wire x2="2000" y1="400" y2="704" x1="2000" />
            <wire x2="2064" y1="704" y2="704" x1="2000" />
            <wire x2="2512" y1="400" y2="400" x1="2000" />
            <wire x2="2512" y1="400" y2="512" x1="2512" />
            <wire x2="2512" y1="512" y2="512" x1="2448" />
        </branch>
        <branch name="Mem_Data(5:0)">
            <wire x2="1552" y1="1024" y2="1024" x1="1520" />
            <wire x2="1616" y1="1024" y2="1024" x1="1552" />
            <wire x2="1664" y1="1024" y2="1024" x1="1616" />
            <wire x2="1808" y1="1024" y2="1024" x1="1664" />
        </branch>
        <bustap x2="1616" y1="1024" y2="1120" x1="1616" />
        <bustap x2="1664" y1="1024" y2="1120" x1="1664" />
        <bustap x2="1552" y1="1024" y2="928" x1="1552" />
        <branch name="Mem_Data(5:2)">
            <wire x2="1552" y1="816" y2="816" x1="1520" />
            <wire x2="1552" y1="816" y2="928" x1="1552" />
        </branch>
        <instance x="528" y="992" name="XLXI_12" orien="R0">
        </instance>
        <branch name="Eingang(7:0)">
            <wire x2="240" y1="960" y2="960" x1="176" />
            <wire x2="320" y1="960" y2="960" x1="240" />
            <wire x2="528" y1="960" y2="960" x1="320" />
        </branch>
        <bustap x2="320" y1="960" y2="864" x1="320" />
        <bustap x2="240" y1="960" y2="1056" x1="240" />
        <branch name="Eingang(4:1)">
            <wire x2="1136" y1="816" y2="816" x1="320" />
            <wire x2="320" y1="816" y2="864" x1="320" />
        </branch>
        <branch name="Eingang(0)">
            <wire x2="240" y1="1056" y2="1424" x1="240" />
        </branch>
        <branch name="XLXN_47(7:0)">
            <wire x2="1088" y1="896" y2="896" x1="912" />
            <wire x2="1376" y1="896" y2="896" x1="1088" />
        </branch>
        <bustap x2="1088" y1="896" y2="992" x1="1088" />
        <branch name="XLXN_47(4:0)">
            <wire x2="1088" y1="992" y2="1024" x1="1088" />
            <wire x2="1136" y1="1024" y2="1024" x1="1088" />
        </branch>
        <instance x="1136" y="1056" name="XLXI_14" orien="R0">
        </instance>
        <instance x="1520" y="784" name="XLXI_15" orien="R180">
        </instance>
    </sheet>
</drawing>