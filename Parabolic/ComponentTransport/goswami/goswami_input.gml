<?xml version="1.0" encoding="ISO-8859-1"?>
<?xml-stylesheet type="text/xsl" href="OpenGeoSysGLI.xsl"?>

<OpenGeoSysGLI xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:noNamespaceSchemaLocation="https://www.opengeosys.org/images/xsd/OpenGeoSysGLI.xsd" xmlns:ogs="http://www.opengeosys.org">
    <name>goswami_mesh</name>
    <points>
        <point id="0" x="0" y="0" z="0"/>
        <point id="1" x="0" y="0.26" z="0" name="p1"/>
        <point id="2" x="0.53" y="0" z="0"/>
        <point id="3" x="0.53" y="0.26" z="0"/>
        <point id="4" x="-0.1" y="0.26" z="0" name="p4"/>
        <point id="5" x="-0.00" y="0.26" z="0"/>
        <point id="6" x="0.53" y="0.26" z="0"/>
        <point id="7" x="0.63" y="0.26" z="0"/>
    </points>

    <polylines>
        <polyline id="0" name="left">
            <pnt>0</pnt>
            <pnt>1</pnt>
        </polyline>
        <polyline id="1" name="right">
            <pnt>2</pnt>
            <pnt>3</pnt>
        </polyline>
        <polyline id="2" name="topleft">
            <pnt>5</pnt>
            <pnt>4</pnt>
        </polyline>
        <polyline id="3" name="topright">
            <pnt>6</pnt>
            <pnt>7</pnt>
        </polyline>
    </polylines>
</OpenGeoSysGLI>
