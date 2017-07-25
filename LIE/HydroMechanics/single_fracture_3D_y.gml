<?xml version="1.0" encoding="utf-8"?>
<OpenGeoSysGLI>
    <name>single_fracture_3D</name>
    <points>
        <point id="0" x="0" y="0" z="0"/>
        <point id="1" x="0" y="0" z="1"/>
        <point id="2" x="1" y="0" z="1"/>
        <point id="3" x="1" y="0" z="0"/>

        <point id="4" x="0" y="25" z="0"/>
        <point id="5" x="0" y="25" z="1"/>
        <point id="6" x="1" y="25" z="1"/>
        <point id="7" x="1" y="25" z="0"/>

        <point id="8" x="0.5" y="0" z="0"/>
        <point id="9" x="0.5" y="0" z="1"/>
        <point id="10" x="0.5" y="25" z="1"/>
        <point id="11" x="0.5" y="25" z="0"/>

    </points>
    <polylines>
        <polyline id="0" name="inlet">
            <pnt>8</pnt>
            <pnt>9</pnt>
        </polyline>
        <polyline id="1" name="outlet">
            <pnt>10</pnt>
            <pnt>11</pnt>
        </polyline>
    </polylines>
    <surfaces>
        <surface id="0" name="left">
            <element p1="0" p2="3" p3="2"/>
            <element p1="0" p2="2" p3="1"/>
        </surface>
        <surface id="0" name="right">
            <element p1="4" p2="7" p3="6"/>
            <element p1="4" p2="6" p3="5"/>
        </surface>
        <surface id="0" name="front">
            <element p1="0" p2="3" p3="7"/>
            <element p1="4" p2="7" p3="0"/>
        </surface>
        <surface id="0" name="back">
            <element p1="1" p2="2" p3="6"/>
            <element p1="5" p2="6" p3="1"/>
        </surface>
        <surface id="0" name="bottom">
            <element p1="0" p2="4" p3="5"/>
            <element p1="0" p2="5" p3="1"/>
        </surface>
        <surface id="0" name="top">
            <element p1="3" p2="7" p3="6"/>
            <element p1="3" p2="6" p3="2"/>
        </surface>
    </surfaces>
</OpenGeoSysGLI>
