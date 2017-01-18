<?xml version="1.0" encoding="ISO-8859-1"?>
<?xml-stylesheet type="text/xsl" href="OpenGeoSysGLI.xsl"?>

<OpenGeoSysGLI xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:noNamespaceSchemaLocation="http://www.opengeosys.org/images/xsd/OpenGeoSysGLI.xsd" xmlns:ogs="http://www.opengeosys.org">
    <name>gravity_dr2D</name>
    <points>
        <point id="0" x="0" y="1" z="0" name="tp1"/>
        <point id="1" x="1" y="1" z="0" name="tp2"/>
        <point id="2" x="0" y="0" z="0" name="tp3"/>
        <point id="3" x="1" y="0" z="0" name="tp4"/>
    </points>
     <polylines>
        <polyline id="0" name="top">
            <pnt>0</pnt>
            <pnt>1</pnt>
        </polyline>
        <polyline id="1" name="left">
            <pnt>2</pnt>
            <pnt>0</pnt>
        </polyline>
        <polyline id="2" name="right">
            <pnt>3</pnt>
            <pnt>1</pnt>
        </polyline>
     </polyline>
</OpenGeoSysGLI>
