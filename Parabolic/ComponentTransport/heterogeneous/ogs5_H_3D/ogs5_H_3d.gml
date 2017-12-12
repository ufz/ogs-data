<?xml version="1.0" encoding="ISO-8859-1"?>
<?xml-stylesheet type="text/xsl" href="OpenGeoSysGLI.xsl"?>

<OpenGeoSysGLI xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:noNamespaceSchemaLocation="http://www.opengeosys.org/images/xsd/OpenGeoSysGLI.xsd" xmlns:ogs="http://www.opengeosys.org">
    <name>geometry</name>
    <points>
        <point id="0" x="0" y="0" z="0"/>
        <point id="1" x="0" y="100" z="0"/>
        <point id="2" x="0" y="100" z="50"/>
        <point id="3" x="0" y="0" z="50"/>
        <point id="4" x="100" y="0" z="0"/>
        <point id="5" x="100" y="100" z="0"/>
        <point id="6" x="100" y="100" z="50"/>
        <point id="7" x="100" y="0" z="50"/>
    </points>

<!--     <polylines>
        <polyline id="0" name="left">
            <pnt>0</pnt>
            <pnt>1</pnt>
        </polyline>
        <polyline id="1" name="right">
            <pnt>2</pnt>
            <pnt>3</pnt>
        </polyline>
    </polylines> -->

    <surfaces>
        <surface id="0" name="left">
            <element p1="0" p2="1" p3="3"/>
            <element p1="1" p2="3" p3="2"/>
        </surface>
        <surface id="0" name="right">
            <element p1="4" p2="5" p3="7"/>
            <element p1="5" p2="7" p3="6"/>
        </surface>
    </surfaces>

</OpenGeoSysGLI>
