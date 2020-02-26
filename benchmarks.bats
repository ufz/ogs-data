# --- Container benchmark runner ---
#
# Requirements:
#   - bats (https://github.com/bats-core/bats-core)
#   - Singularity OGS container, e.g. from https://www.opengeosys.org/releases/
#
# Usage:
# export SIF=./path/to/ogs-xx.sif
# export OUT=/abs/path/to/output/dir
# export SRC=/abs/path/to/ogs-source-dir
# bats benchmarks.bats

@test "benchmark - ogs-Elliptic/cube_1x1x1_GroundWaterFlow/cube_1e4_anisotropic" {
  rm -r $OUT/Elliptic/cube_1x1x1_GroundWaterFlow
  mkdir -p $OUT/Elliptic/cube_1x1x1_GroundWaterFlow
  run time singularity exec $SIF scif run ogs -o $OUT/Elliptic/cube_1x1x1_GroundWaterFlow -r $SRC/Tests/Data/Elliptic/cube_1x1x1_GroundWaterFlow $SRC/Tests/Data/Elliptic/cube_1x1x1_GroundWaterFlow/cube_1e4_anisotropic.prj
  [ "$status" -eq 0 ]
}

@test "benchmark - ogs-Mechanics/Linear/square_1e0" {
  rm -r $OUT/Mechanics/Linear
  mkdir -p $OUT/Mechanics/Linear
  run time singularity exec $SIF scif run ogs -o $OUT/Mechanics/Linear -r $SRC/Tests/Data/Mechanics/Linear $SRC/Tests/Data/Mechanics/Linear/square_1e0.prj
  [ "$status" -eq 0 ]
}

@test "benchmark - ogs-Mechanics/Linear/square_1e2" {
  rm -r $OUT/Mechanics/Linear
  mkdir -p $OUT/Mechanics/Linear
  run time singularity exec $SIF scif run ogs -o $OUT/Mechanics/Linear -r $SRC/Tests/Data/Mechanics/Linear $SRC/Tests/Data/Mechanics/Linear/square_1e2.prj
  [ "$status" -eq 0 ]
}

@test "benchmark - ogs-Mechanics/Linear/disc_with_hole" {
  rm -r $OUT/Mechanics/Linear
  mkdir -p $OUT/Mechanics/Linear
  run time singularity exec $SIF scif run ogs -o $OUT/Mechanics/Linear -r $SRC/Tests/Data/Mechanics/Linear $SRC/Tests/Data/Mechanics/Linear/disc_with_hole.prj
  [ "$status" -eq 0 ]
}

@test "benchmark - ogs-Mechanics/Linear/ElementDeactivation3D/element_deactivation_M_3D" {
  rm -r $OUT/Mechanics/Linear/ElementDeactivation3D
  mkdir -p $OUT/Mechanics/Linear/ElementDeactivation3D
  run time singularity exec $SIF scif run ogs -o $OUT/Mechanics/Linear/ElementDeactivation3D -r $SRC/Tests/Data/Mechanics/Linear/ElementDeactivation3D $SRC/Tests/Data/Mechanics/Linear/ElementDeactivation3D/element_deactivation_M_3D.prj
  [ "$status" -eq 0 ]
}

@test "benchmark - ogs-Mechanics/Linear/square_1e2_quad8_traction_top" {
  rm -r $OUT/Mechanics/Linear
  mkdir -p $OUT/Mechanics/Linear
  run time singularity exec $SIF scif run ogs -o $OUT/Mechanics/Linear -r $SRC/Tests/Data/Mechanics/Linear $SRC/Tests/Data/Mechanics/Linear/square_1e2_quad8_traction_top.prj
  [ "$status" -eq 0 ]
}

@test "benchmark - ogs-Mechanics/Linear/cube_1e0" {
  rm -r $OUT/Mechanics/Linear
  mkdir -p $OUT/Mechanics/Linear
  run time singularity exec $SIF scif run ogs -o $OUT/Mechanics/Linear -r $SRC/Tests/Data/Mechanics/Linear $SRC/Tests/Data/Mechanics/Linear/cube_1e0.prj
  [ "$status" -eq 0 ]
}

@test "benchmark - ogs-Mechanics/Linear/cube_1e0_simple_shear" {
  rm -r $OUT/Mechanics/Linear
  mkdir -p $OUT/Mechanics/Linear
  run time singularity exec $SIF scif run ogs -o $OUT/Mechanics/Linear -r $SRC/Tests/Data/Mechanics/Linear $SRC/Tests/Data/Mechanics/Linear/cube_1e0_simple_shear.prj
  [ "$status" -eq 0 ]
}

@test "benchmark - ogs-Mechanics/Linear/MaterialForces/bar" {
  rm -r $OUT/Mechanics/Linear/MaterialForces
  mkdir -p $OUT/Mechanics/Linear/MaterialForces
  run time singularity exec $SIF scif run ogs -o $OUT/Mechanics/Linear/MaterialForces -r $SRC/Tests/Data/Mechanics/Linear/MaterialForces $SRC/Tests/Data/Mechanics/Linear/MaterialForces/bar.prj
  [ "$status" -eq 0 ]
}

@test "benchmark - ogs-Mechanics/Linear/Orthotropy/cube_1e0_orthotropic_xyz" {
  rm -r $OUT/Mechanics/Linear/Orthotropy
  mkdir -p $OUT/Mechanics/Linear/Orthotropy
  run time singularity exec $SIF scif run ogs -o $OUT/Mechanics/Linear/Orthotropy -r $SRC/Tests/Data/Mechanics/Linear/Orthotropy $SRC/Tests/Data/Mechanics/Linear/Orthotropy/cube_1e0_orthotropic_xyz.prj
  [ "$status" -eq 0 ]
}

@test "benchmark - ogs-Mechanics/Linear/Orthotropy/cube_1e0_orthotropic_yzx" {
  rm -r $OUT/Mechanics/Linear/Orthotropy
  mkdir -p $OUT/Mechanics/Linear/Orthotropy
  run time singularity exec $SIF scif run ogs -o $OUT/Mechanics/Linear/Orthotropy -r $SRC/Tests/Data/Mechanics/Linear/Orthotropy $SRC/Tests/Data/Mechanics/Linear/Orthotropy/cube_1e0_orthotropic_yzx.prj
  [ "$status" -eq 0 ]
}

@test "benchmark - ogs-Mechanics/Linear/Orthotropy/cube_1e0_orthotropic_zxy" {
  rm -r $OUT/Mechanics/Linear/Orthotropy
  mkdir -p $OUT/Mechanics/Linear/Orthotropy
  run time singularity exec $SIF scif run ogs -o $OUT/Mechanics/Linear/Orthotropy -r $SRC/Tests/Data/Mechanics/Linear/Orthotropy $SRC/Tests/Data/Mechanics/Linear/Orthotropy/cube_1e0_orthotropic_zxy.prj
  [ "$status" -eq 0 ]
}

@test "benchmark - ogs-Mechanics/Linear/Orthotropy/m3_3Dshearz" {
  rm -r $OUT/Mechanics/Linear/Orthotropy
  mkdir -p $OUT/Mechanics/Linear/Orthotropy
  run time singularity exec $SIF scif run ogs -o $OUT/Mechanics/Linear/Orthotropy -r $SRC/Tests/Data/Mechanics/Linear/Orthotropy $SRC/Tests/Data/Mechanics/Linear/Orthotropy/m3_3Dshearz.prj
  [ "$status" -eq 0 ]
}

@test "benchmark - ogs-Mechanics/Linear/Orthotropy/m3_3Dshearz_rot" {
  rm -r $OUT/Mechanics/Linear/Orthotropy
  mkdir -p $OUT/Mechanics/Linear/Orthotropy
  run time singularity exec $SIF scif run ogs -o $OUT/Mechanics/Linear/Orthotropy -r $SRC/Tests/Data/Mechanics/Linear/Orthotropy $SRC/Tests/Data/Mechanics/Linear/Orthotropy/m3_3Dshearz_rot.prj
  [ "$status" -eq 0 ]
}

@test "benchmark - ogs-Mechanics/Linear/Orthotropy/m3_3Dtopload" {
  rm -r $OUT/Mechanics/Linear/Orthotropy
  mkdir -p $OUT/Mechanics/Linear/Orthotropy
  run time singularity exec $SIF scif run ogs -o $OUT/Mechanics/Linear/Orthotropy -r $SRC/Tests/Data/Mechanics/Linear/Orthotropy $SRC/Tests/Data/Mechanics/Linear/Orthotropy/m3_3Dtopload.prj
  [ "$status" -eq 0 ]
}

@test "benchmark - ogs-Mechanics/Linear/Orthotropy/m3_3Dtoploadlc" {
  rm -r $OUT/Mechanics/Linear/Orthotropy
  mkdir -p $OUT/Mechanics/Linear/Orthotropy
  run time singularity exec $SIF scif run ogs -o $OUT/Mechanics/Linear/Orthotropy -r $SRC/Tests/Data/Mechanics/Linear/Orthotropy $SRC/Tests/Data/Mechanics/Linear/Orthotropy/m3_3Dtoploadlc.prj
  [ "$status" -eq 0 ]
}

@test "benchmark - ogs-Mechanics/Linear/Orthotropy/square_1e0_orthotropic_xyz" {
  rm -r $OUT/Mechanics/Linear/Orthotropy
  mkdir -p $OUT/Mechanics/Linear/Orthotropy
  run time singularity exec $SIF scif run ogs -o $OUT/Mechanics/Linear/Orthotropy -r $SRC/Tests/Data/Mechanics/Linear/Orthotropy $SRC/Tests/Data/Mechanics/Linear/Orthotropy/square_1e0_orthotropic_xyz.prj
  [ "$status" -eq 0 ]
}

@test "benchmark - ogs-Mechanics/Linear/Orthotropy/square_1e0_orthotropic_yzx" {
  rm -r $OUT/Mechanics/Linear/Orthotropy
  mkdir -p $OUT/Mechanics/Linear/Orthotropy
  run time singularity exec $SIF scif run ogs -o $OUT/Mechanics/Linear/Orthotropy -r $SRC/Tests/Data/Mechanics/Linear/Orthotropy $SRC/Tests/Data/Mechanics/Linear/Orthotropy/square_1e0_orthotropic_yzx.prj
  [ "$status" -eq 0 ]
}

@test "benchmark - ogs-Mechanics/Linear/Orthotropy/square_1e0_orthotropic_zxy" {
  rm -r $OUT/Mechanics/Linear/Orthotropy
  mkdir -p $OUT/Mechanics/Linear/Orthotropy
  run time singularity exec $SIF scif run ogs -o $OUT/Mechanics/Linear/Orthotropy -r $SRC/Tests/Data/Mechanics/Linear/Orthotropy $SRC/Tests/Data/Mechanics/Linear/Orthotropy/square_1e0_orthotropic_zxy.prj
  [ "$status" -eq 0 ]
}

@test "benchmark - ogs-Mechanics/Linear/Orthotropy/square_1e0_orthotropic_45xy_z" {
  rm -r $OUT/Mechanics/Linear/Orthotropy
  mkdir -p $OUT/Mechanics/Linear/Orthotropy
  run time singularity exec $SIF scif run ogs -o $OUT/Mechanics/Linear/Orthotropy -r $SRC/Tests/Data/Mechanics/Linear/Orthotropy $SRC/Tests/Data/Mechanics/Linear/Orthotropy/square_1e0_orthotropic_45xy_z.prj
  [ "$status" -eq 0 ]
}

@test "benchmark - ogs-Mechanics/Linear/Orthotropy/square_1e0_orthotropic_y-xz" {
  rm -r $OUT/Mechanics/Linear/Orthotropy
  mkdir -p $OUT/Mechanics/Linear/Orthotropy
  run time singularity exec $SIF scif run ogs -o $OUT/Mechanics/Linear/Orthotropy -r $SRC/Tests/Data/Mechanics/Linear/Orthotropy $SRC/Tests/Data/Mechanics/Linear/Orthotropy/square_1e0_orthotropic_y-xz.prj
  [ "$status" -eq 0 ]
}

@test "benchmark - ogs-Mechanics/Burgers/cube_1e0" {
  rm -r $OUT/Mechanics/Burgers
  mkdir -p $OUT/Mechanics/Burgers
  run time singularity exec $SIF scif run ogs -o $OUT/Mechanics/Burgers -r $SRC/Tests/Data/Mechanics/Burgers $SRC/Tests/Data/Mechanics/Burgers/cube_1e0.prj
  [ "$status" -eq 0 ]
}

@test "benchmark - ogs-Mechanics/Ehlers/cube_1e0" {
  rm -r $OUT/Mechanics/Ehlers
  mkdir -p $OUT/Mechanics/Ehlers
  run time singularity exec $SIF scif run ogs -o $OUT/Mechanics/Ehlers -r $SRC/Tests/Data/Mechanics/Ehlers $SRC/Tests/Data/Mechanics/Ehlers/cube_1e0.prj
  [ "$status" -eq 0 ]
}

@test "benchmark - ogs-Mechanics/Ehlers/cube_1e1" {
  rm -r $OUT/Mechanics/Ehlers
  mkdir -p $OUT/Mechanics/Ehlers
  run time singularity exec $SIF scif run ogs -o $OUT/Mechanics/Ehlers -r $SRC/Tests/Data/Mechanics/Ehlers $SRC/Tests/Data/Mechanics/Ehlers/cube_1e1.prj
  [ "$status" -eq 0 ]
}

@test "benchmark - ogs-Mechanics/Ehlers/cube_1e0_dp" {
  rm -r $OUT/Mechanics/Ehlers
  mkdir -p $OUT/Mechanics/Ehlers
  run time singularity exec $SIF scif run ogs -o $OUT/Mechanics/Ehlers -r $SRC/Tests/Data/Mechanics/Ehlers $SRC/Tests/Data/Mechanics/Ehlers/cube_1e0_dp.prj
  [ "$status" -eq 0 ]
}

@test "benchmark - ogs-Mechanics/Linear/ring_plane_strain" {
  rm -r $OUT/Mechanics/Linear
  mkdir -p $OUT/Mechanics/Linear
  run time singularity exec $SIF scif run ogs -o $OUT/Mechanics/Linear -r $SRC/Tests/Data/Mechanics/Linear $SRC/Tests/Data/Mechanics/Linear/ring_plane_strain.prj
  [ "$status" -eq 0 ]
}

@test "benchmark - ogs-Mechanics/Linear/plain_strain_pipe" {
  rm -r $OUT/Mechanics/Linear
  mkdir -p $OUT/Mechanics/Linear
  run time singularity exec $SIF scif run ogs -o $OUT/Mechanics/Linear -r $SRC/Tests/Data/Mechanics/Linear $SRC/Tests/Data/Mechanics/Linear/plain_strain_pipe.prj
  [ "$status" -eq 0 ]
}

@test "benchmark - ogs-Mechanics/Linear/two_material_gravity" {
  rm -r $OUT/Mechanics/Linear
  mkdir -p $OUT/Mechanics/Linear
  run time singularity exec $SIF scif run ogs -o $OUT/Mechanics/Linear -r $SRC/Tests/Data/Mechanics/Linear $SRC/Tests/Data/Mechanics/Linear/two_material_gravity.prj
  [ "$status" -eq 0 ]
}

@test "benchmark - ogs-Mechanics/Linear/two_material_gravity_Emodulus" {
  rm -r $OUT/Mechanics/Linear
  mkdir -p $OUT/Mechanics/Linear
  run time singularity exec $SIF scif run ogs -o $OUT/Mechanics/Linear -r $SRC/Tests/Data/Mechanics/Linear $SRC/Tests/Data/Mechanics/Linear/two_material_gravity_Emodulus.prj
  [ "$status" -eq 0 ]
}

@test "benchmark - ogs-Mechanics/Linear/PressureBC/axisymmetric_pipe" {
  rm -r $OUT/Mechanics/Linear/PressureBC
  mkdir -p $OUT/Mechanics/Linear/PressureBC
  run time singularity exec $SIF scif run ogs -o $OUT/Mechanics/Linear/PressureBC -r $SRC/Tests/Data/Mechanics/Linear/PressureBC $SRC/Tests/Data/Mechanics/Linear/PressureBC/axisymmetric_pipe.prj
  [ "$status" -eq 0 ]
}

@test "benchmark - ogs-Mechanics/Linear/PressureBC/axisymmetric_sphere" {
  rm -r $OUT/Mechanics/Linear/PressureBC
  mkdir -p $OUT/Mechanics/Linear/PressureBC
  run time singularity exec $SIF scif run ogs -o $OUT/Mechanics/Linear/PressureBC -r $SRC/Tests/Data/Mechanics/Linear/PressureBC $SRC/Tests/Data/Mechanics/Linear/PressureBC/axisymmetric_sphere.prj
  [ "$status" -eq 0 ]
}

@test "benchmark - ogs-Mechanics/Linear/square_with_deactivated_hole" {
  rm -r $OUT/Mechanics/Linear
  mkdir -p $OUT/Mechanics/Linear
  run time singularity exec $SIF scif run ogs -o $OUT/Mechanics/Linear -r $SRC/Tests/Data/Mechanics/Linear $SRC/Tests/Data/Mechanics/Linear/square_with_deactivated_hole.prj
  [ "$status" -eq 0 ]
}

@test "benchmark - ogs-Mechanics/InitialStates/into_initial_state" {
  rm -r $OUT/Mechanics/InitialStates
  mkdir -p $OUT/Mechanics/InitialStates
  run time singularity exec $SIF scif run ogs -o $OUT/Mechanics/InitialStates -r $SRC/Tests/Data/Mechanics/InitialStates $SRC/Tests/Data/Mechanics/InitialStates/into_initial_state.prj
  [ "$status" -eq 0 ]
}

@test "benchmark - ogs-Mechanics/InitialStates/equilibrium_restart" {
  rm -r $OUT/Mechanics/InitialStates
  mkdir -p $OUT/Mechanics/InitialStates
  run time singularity exec $SIF scif run ogs -o $OUT/Mechanics/InitialStates -r $SRC/Tests/Data/Mechanics/InitialStates $SRC/Tests/Data/Mechanics/InitialStates/equilibrium_restart.prj
  [ "$status" -eq 0 ]
}

@test "benchmark - ogs-Mechanics/InitialStates/non_equilibrium_initial_state" {
  rm -r $OUT/Mechanics/InitialStates
  mkdir -p $OUT/Mechanics/InitialStates
  run time singularity exec $SIF scif run ogs -o $OUT/Mechanics/InitialStates -r $SRC/Tests/Data/Mechanics/InitialStates $SRC/Tests/Data/Mechanics/InitialStates/non_equilibrium_initial_state.prj
  [ "$status" -eq 0 ]
}

@test "benchmark - ogs-Mechanics/Linear/PythonPiston/piston" {
  rm -r $OUT/Mechanics/Linear/PythonPiston
  mkdir -p $OUT/Mechanics/Linear/PythonPiston
  run time singularity exec $SIF scif run ogs -o $OUT/Mechanics/Linear/PythonPiston -r $SRC/Tests/Data/Mechanics/Linear/PythonPiston $SRC/Tests/Data/Mechanics/Linear/PythonPiston/piston.prj
  [ "$status" -eq 0 ]
}

@test "benchmark - ogs-Mechanics/Linear/PythonHertzContact/hertz_contact" {
  rm -r $OUT/Mechanics/Linear/PythonHertzContact
  mkdir -p $OUT/Mechanics/Linear/PythonHertzContact
  run time singularity exec $SIF scif run ogs -o $OUT/Mechanics/Linear/PythonHertzContact -r $SRC/Tests/Data/Mechanics/Linear/PythonHertzContact $SRC/Tests/Data/Mechanics/Linear/PythonHertzContact/hertz_contact.prj
  [ "$status" -eq 0 ]
}

@test "benchmark - ogs-Mechanics/MohrCoulombAbboSloan/load_test_mc" {
  rm -r $OUT/Mechanics/MohrCoulombAbboSloan
  mkdir -p $OUT/Mechanics/MohrCoulombAbboSloan
  run time singularity exec $SIF scif run ogs -o $OUT/Mechanics/MohrCoulombAbboSloan -r $SRC/Tests/Data/Mechanics/MohrCoulombAbboSloan $SRC/Tests/Data/Mechanics/MohrCoulombAbboSloan/load_test_mc.prj
  [ "$status" -eq 0 ]
}

@test "benchmark - ogs-Mechanics/Linear/MFront/cube_1e0_orthotropic_xyz" {
  rm -r $OUT/Mechanics/Linear/MFront
  mkdir -p $OUT/Mechanics/Linear/MFront
  run time singularity exec $SIF scif run ogs -o $OUT/Mechanics/Linear/MFront -r $SRC/Tests/Data/Mechanics/Linear/MFront $SRC/Tests/Data/Mechanics/Linear/MFront/cube_1e0_orthotropic_xyz.prj
  [ "$status" -eq 0 ]
}

@test "benchmark - ogs-Mechanics/Linear/MFront/cube_1e0_orthotropic_yzx" {
  rm -r $OUT/Mechanics/Linear/MFront
  mkdir -p $OUT/Mechanics/Linear/MFront
  run time singularity exec $SIF scif run ogs -o $OUT/Mechanics/Linear/MFront -r $SRC/Tests/Data/Mechanics/Linear/MFront $SRC/Tests/Data/Mechanics/Linear/MFront/cube_1e0_orthotropic_yzx.prj
  [ "$status" -eq 0 ]
}

@test "benchmark - ogs-Mechanics/Linear/MFront/cube_1e0_orthotropic_zxy" {
  rm -r $OUT/Mechanics/Linear/MFront
  mkdir -p $OUT/Mechanics/Linear/MFront
  run time singularity exec $SIF scif run ogs -o $OUT/Mechanics/Linear/MFront -r $SRC/Tests/Data/Mechanics/Linear/MFront $SRC/Tests/Data/Mechanics/Linear/MFront/cube_1e0_orthotropic_zxy.prj
  [ "$status" -eq 0 ]
}

@test "benchmark - ogs-Mechanics/Linear/MFront/square_1e0_orthotropic_xyz" {
  rm -r $OUT/Mechanics/Linear/MFront
  mkdir -p $OUT/Mechanics/Linear/MFront
  run time singularity exec $SIF scif run ogs -o $OUT/Mechanics/Linear/MFront -r $SRC/Tests/Data/Mechanics/Linear/MFront $SRC/Tests/Data/Mechanics/Linear/MFront/square_1e0_orthotropic_xyz.prj
  [ "$status" -eq 0 ]
}

@test "benchmark - ogs-Mechanics/Linear/MFront/square_1e0_orthotropic_45xy_z" {
  rm -r $OUT/Mechanics/Linear/MFront
  mkdir -p $OUT/Mechanics/Linear/MFront
  run time singularity exec $SIF scif run ogs -o $OUT/Mechanics/Linear/MFront -r $SRC/Tests/Data/Mechanics/Linear/MFront $SRC/Tests/Data/Mechanics/Linear/MFront/square_1e0_orthotropic_45xy_z.prj
  [ "$status" -eq 0 ]
}

@test "benchmark - ogs-Mechanics/Linear/MFront/square_1e0_orthotropic_y-xz" {
  rm -r $OUT/Mechanics/Linear/MFront
  mkdir -p $OUT/Mechanics/Linear/MFront
  run time singularity exec $SIF scif run ogs -o $OUT/Mechanics/Linear/MFront -r $SRC/Tests/Data/Mechanics/Linear/MFront $SRC/Tests/Data/Mechanics/Linear/MFront/square_1e0_orthotropic_y-xz.prj
  [ "$status" -eq 0 ]
}

@test "benchmark - ogs-Mechanics/EhlersDamageNonLocal/bar/coarse/bar" {
  rm -r $OUT/Mechanics/EhlersDamageNonLocal/bar/coarse
  mkdir -p $OUT/Mechanics/EhlersDamageNonLocal/bar/coarse
  run time singularity exec $SIF scif run ogs -o $OUT/Mechanics/EhlersDamageNonLocal/bar/coarse -r $SRC/Tests/Data/Mechanics/EhlersDamageNonLocal/bar/coarse $SRC/Tests/Data/Mechanics/EhlersDamageNonLocal/bar/coarse/bar.prj
  [ "$status" -eq 0 ]
}

@test "benchmark - ogs-Mechanics/EhlersDamageNonLocal/bar/medium/bar" {
  rm -r $OUT/Mechanics/EhlersDamageNonLocal/bar/medium
  mkdir -p $OUT/Mechanics/EhlersDamageNonLocal/bar/medium
  run time singularity exec $SIF scif run ogs -o $OUT/Mechanics/EhlersDamageNonLocal/bar/medium -r $SRC/Tests/Data/Mechanics/EhlersDamageNonLocal/bar/medium $SRC/Tests/Data/Mechanics/EhlersDamageNonLocal/bar/medium/bar.prj
  [ "$status" -eq 0 ]
}

@test "benchmark - ogs-Mechanics/EhlersDamageNonLocal/bar/p1/bar" {
  rm -r $OUT/Mechanics/EhlersDamageNonLocal/bar/p1
  mkdir -p $OUT/Mechanics/EhlersDamageNonLocal/bar/p1
  run time singularity exec $SIF scif run ogs -o $OUT/Mechanics/EhlersDamageNonLocal/bar/p1 -r $SRC/Tests/Data/Mechanics/EhlersDamageNonLocal/bar/p1 $SRC/Tests/Data/Mechanics/EhlersDamageNonLocal/bar/p1/bar.prj
  [ "$status" -eq 0 ]
}

@test "benchmark - ogs-Mechanics/EhlersDamageNonLocal/bar/p2/bar" {
  rm -r $OUT/Mechanics/EhlersDamageNonLocal/bar/p2
  mkdir -p $OUT/Mechanics/EhlersDamageNonLocal/bar/p2
  run time singularity exec $SIF scif run ogs -o $OUT/Mechanics/EhlersDamageNonLocal/bar/p2 -r $SRC/Tests/Data/Mechanics/EhlersDamageNonLocal/bar/p2 $SRC/Tests/Data/Mechanics/EhlersDamageNonLocal/bar/p2/bar.prj
  [ "$status" -eq 0 ]
}

@test "benchmark - ogs-Mechanics/EhlersDamageNonLocal/bar/p3/bar" {
  rm -r $OUT/Mechanics/EhlersDamageNonLocal/bar/p3
  mkdir -p $OUT/Mechanics/EhlersDamageNonLocal/bar/p3
  run time singularity exec $SIF scif run ogs -o $OUT/Mechanics/EhlersDamageNonLocal/bar/p3 -r $SRC/Tests/Data/Mechanics/EhlersDamageNonLocal/bar/p3 $SRC/Tests/Data/Mechanics/EhlersDamageNonLocal/bar/p3/bar.prj
  [ "$status" -eq 0 ]
}

@test "benchmark - ogs-Mechanics/EhlersDamageNonLocal/bar/t1/bar" {
  rm -r $OUT/Mechanics/EhlersDamageNonLocal/bar/t1
  mkdir -p $OUT/Mechanics/EhlersDamageNonLocal/bar/t1
  run time singularity exec $SIF scif run ogs -o $OUT/Mechanics/EhlersDamageNonLocal/bar/t1 -r $SRC/Tests/Data/Mechanics/EhlersDamageNonLocal/bar/t1 $SRC/Tests/Data/Mechanics/EhlersDamageNonLocal/bar/t1/bar.prj
  [ "$status" -eq 0 ]
}

@test "benchmark - ogs-Mechanics/EhlersDamageNonLocal/bar/t2/bar" {
  rm -r $OUT/Mechanics/EhlersDamageNonLocal/bar/t2
  mkdir -p $OUT/Mechanics/EhlersDamageNonLocal/bar/t2
  run time singularity exec $SIF scif run ogs -o $OUT/Mechanics/EhlersDamageNonLocal/bar/t2 -r $SRC/Tests/Data/Mechanics/EhlersDamageNonLocal/bar/t2 $SRC/Tests/Data/Mechanics/EhlersDamageNonLocal/bar/t2/bar.prj
  [ "$status" -eq 0 ]
}

@test "benchmark - ogs-Mechanics/EhlersDamageNonLocal/beam/coarse/beam" {
  rm -r $OUT/Mechanics/EhlersDamageNonLocal/beam/coarse
  mkdir -p $OUT/Mechanics/EhlersDamageNonLocal/beam/coarse
  run time singularity exec $SIF scif run ogs -o $OUT/Mechanics/EhlersDamageNonLocal/beam/coarse -r $SRC/Tests/Data/Mechanics/EhlersDamageNonLocal/beam/coarse $SRC/Tests/Data/Mechanics/EhlersDamageNonLocal/beam/coarse/beam.prj
  [ "$status" -eq 0 ]
}

@test "benchmark - ogs-Mechanics/EhlersDamageNonLocal/beam/medium/beam" {
  rm -r $OUT/Mechanics/EhlersDamageNonLocal/beam/medium
  mkdir -p $OUT/Mechanics/EhlersDamageNonLocal/beam/medium
  run time singularity exec $SIF scif run ogs -o $OUT/Mechanics/EhlersDamageNonLocal/beam/medium -r $SRC/Tests/Data/Mechanics/EhlersDamageNonLocal/beam/medium $SRC/Tests/Data/Mechanics/EhlersDamageNonLocal/beam/medium/beam.prj
  [ "$status" -eq 0 ]
}

@test "benchmark - ogs-Mechanics/EhlersDamageNonLocal/beam/coarse_quad/beam" {
  rm -r $OUT/Mechanics/EhlersDamageNonLocal/beam/coarse_quad
  mkdir -p $OUT/Mechanics/EhlersDamageNonLocal/beam/coarse_quad
  run time singularity exec $SIF scif run ogs -o $OUT/Mechanics/EhlersDamageNonLocal/beam/coarse_quad -r $SRC/Tests/Data/Mechanics/EhlersDamageNonLocal/beam/coarse_quad $SRC/Tests/Data/Mechanics/EhlersDamageNonLocal/beam/coarse_quad/beam.prj
  [ "$status" -eq 0 ]
}

@test "benchmark - ogs-Mechanics/EhlersDamageNonLocal/beam/coarse_tria/beam" {
  rm -r $OUT/Mechanics/EhlersDamageNonLocal/beam/coarse_tria
  mkdir -p $OUT/Mechanics/EhlersDamageNonLocal/beam/coarse_tria
  run time singularity exec $SIF scif run ogs -o $OUT/Mechanics/EhlersDamageNonLocal/beam/coarse_tria -r $SRC/Tests/Data/Mechanics/EhlersDamageNonLocal/beam/coarse_tria $SRC/Tests/Data/Mechanics/EhlersDamageNonLocal/beam/coarse_tria/beam.prj
  [ "$status" -eq 0 ]
}

@test "benchmark - ogs-ThermoMechanics/CreepBGRa/Verification/m2_1D1bt/m2_1D1bt" {
  rm -r $OUT/ThermoMechanics/CreepBGRa/Verification/m2_1D1bt
  mkdir -p $OUT/ThermoMechanics/CreepBGRa/Verification/m2_1D1bt
  run time singularity exec $SIF scif run ogs -o $OUT/ThermoMechanics/CreepBGRa/Verification/m2_1D1bt -r $SRC/Tests/Data/ThermoMechanics/CreepBGRa/Verification/m2_1D1bt $SRC/Tests/Data/ThermoMechanics/CreepBGRa/Verification/m2_1D1bt/m2_1D1bt.prj
  [ "$status" -eq 0 ]
}

@test "benchmark - ogs-ThermoMechanics/CreepBGRa/Verification/m2_1D2bt/m2_1D2bt" {
  rm -r $OUT/ThermoMechanics/CreepBGRa/Verification/m2_1D2bt
  mkdir -p $OUT/ThermoMechanics/CreepBGRa/Verification/m2_1D2bt
  run time singularity exec $SIF scif run ogs -o $OUT/ThermoMechanics/CreepBGRa/Verification/m2_1D2bt -r $SRC/Tests/Data/ThermoMechanics/CreepBGRa/Verification/m2_1D2bt $SRC/Tests/Data/ThermoMechanics/CreepBGRa/Verification/m2_1D2bt/m2_1D2bt.prj
  [ "$status" -eq 0 ]
}

@test "benchmark - ogs-ThermoMechanics/CreepBGRa/Verification/m2_1Dcreep/m2_1Dcreep" {
  rm -r $OUT/ThermoMechanics/CreepBGRa/Verification/m2_1Dcreep
  mkdir -p $OUT/ThermoMechanics/CreepBGRa/Verification/m2_1Dcreep
  run time singularity exec $SIF scif run ogs -o $OUT/ThermoMechanics/CreepBGRa/Verification/m2_1Dcreep -r $SRC/Tests/Data/ThermoMechanics/CreepBGRa/Verification/m2_1Dcreep $SRC/Tests/Data/ThermoMechanics/CreepBGRa/Verification/m2_1Dcreep/m2_1Dcreep.prj
  [ "$status" -eq 0 ]
}

@test "benchmark - ogs-ThermoMechanics/CreepBGRa/Verification/m2_1Dlozenge/m2_1Dlozenge" {
  rm -r $OUT/ThermoMechanics/CreepBGRa/Verification/m2_1Dlozenge
  mkdir -p $OUT/ThermoMechanics/CreepBGRa/Verification/m2_1Dlozenge
  run time singularity exec $SIF scif run ogs -o $OUT/ThermoMechanics/CreepBGRa/Verification/m2_1Dlozenge -r $SRC/Tests/Data/ThermoMechanics/CreepBGRa/Verification/m2_1Dlozenge $SRC/Tests/Data/ThermoMechanics/CreepBGRa/Verification/m2_1Dlozenge/m2_1Dlozenge.prj
  [ "$status" -eq 0 ]
}

@test "benchmark - ogs-ThermoMechanics/CreepBGRa/Verification/m2_1Dlozengebt/m2_1Dlozengebt" {
  rm -r $OUT/ThermoMechanics/CreepBGRa/Verification/m2_1Dlozengebt
  mkdir -p $OUT/ThermoMechanics/CreepBGRa/Verification/m2_1Dlozengebt
  run time singularity exec $SIF scif run ogs -o $OUT/ThermoMechanics/CreepBGRa/Verification/m2_1Dlozengebt -r $SRC/Tests/Data/ThermoMechanics/CreepBGRa/Verification/m2_1Dlozengebt $SRC/Tests/Data/ThermoMechanics/CreepBGRa/Verification/m2_1Dlozengebt/m2_1Dlozengebt.prj
  [ "$status" -eq 0 ]
}

@test "benchmark - ogs-ThermoMechanics/CreepBGRa/Verification/m2_1Drelax/m2_1Drelax" {
  rm -r $OUT/ThermoMechanics/CreepBGRa/Verification/m2_1Drelax
  mkdir -p $OUT/ThermoMechanics/CreepBGRa/Verification/m2_1Drelax
  run time singularity exec $SIF scif run ogs -o $OUT/ThermoMechanics/CreepBGRa/Verification/m2_1Drelax -r $SRC/Tests/Data/ThermoMechanics/CreepBGRa/Verification/m2_1Drelax $SRC/Tests/Data/ThermoMechanics/CreepBGRa/Verification/m2_1Drelax/m2_1Drelax.prj
  [ "$status" -eq 0 ]
}

@test "benchmark - ogs-ThermoMechanics/CreepBGRa/Verification/m2_2Dload/m2_2Dload" {
  rm -r $OUT/ThermoMechanics/CreepBGRa/Verification/m2_2Dload
  mkdir -p $OUT/ThermoMechanics/CreepBGRa/Verification/m2_2Dload
  run time singularity exec $SIF scif run ogs -o $OUT/ThermoMechanics/CreepBGRa/Verification/m2_2Dload -r $SRC/Tests/Data/ThermoMechanics/CreepBGRa/Verification/m2_2Dload $SRC/Tests/Data/ThermoMechanics/CreepBGRa/Verification/m2_2Dload/m2_2Dload.prj
  [ "$status" -eq 0 ]
}

@test "benchmark - ogs-ThermoMechanics/CreepBGRa/Verification/m2_2Dload/m2_2Dload_ym45" {
  rm -r $OUT/ThermoMechanics/CreepBGRa/Verification/m2_2Dload
  mkdir -p $OUT/ThermoMechanics/CreepBGRa/Verification/m2_2Dload
  run time singularity exec $SIF scif run ogs -o $OUT/ThermoMechanics/CreepBGRa/Verification/m2_2Dload -r $SRC/Tests/Data/ThermoMechanics/CreepBGRa/Verification/m2_2Dload $SRC/Tests/Data/ThermoMechanics/CreepBGRa/Verification/m2_2Dload/m2_2Dload_ym45.prj
  [ "$status" -eq 0 ]
}

@test "benchmark - ogs-ThermoMechanics/CreepBGRa/Verification/m2_2Dloadbt/m2_2Dloadbt" {
  rm -r $OUT/ThermoMechanics/CreepBGRa/Verification/m2_2Dloadbt
  mkdir -p $OUT/ThermoMechanics/CreepBGRa/Verification/m2_2Dloadbt
  run time singularity exec $SIF scif run ogs -o $OUT/ThermoMechanics/CreepBGRa/Verification/m2_2Dloadbt -r $SRC/Tests/Data/ThermoMechanics/CreepBGRa/Verification/m2_2Dloadbt $SRC/Tests/Data/ThermoMechanics/CreepBGRa/Verification/m2_2Dloadbt/m2_2Dloadbt.prj
  [ "$status" -eq 0 ]
}

@test "benchmark - ogs-ThermoMechanics/CreepBGRa/Verification/m2_3Dload/m2_3Dload" {
  rm -r $OUT/ThermoMechanics/CreepBGRa/Verification/m2_3Dload
  mkdir -p $OUT/ThermoMechanics/CreepBGRa/Verification/m2_3Dload
  run time singularity exec $SIF scif run ogs -o $OUT/ThermoMechanics/CreepBGRa/Verification/m2_3Dload -r $SRC/Tests/Data/ThermoMechanics/CreepBGRa/Verification/m2_3Dload $SRC/Tests/Data/ThermoMechanics/CreepBGRa/Verification/m2_3Dload/m2_3Dload.prj
  [ "$status" -eq 0 ]
}

@test "benchmark - ogs-ThermoMechanics/CreepBGRa/Verification/m2_3Dloadbt/m2_3Dloadbt" {
  rm -r $OUT/ThermoMechanics/CreepBGRa/Verification/m2_3Dloadbt
  mkdir -p $OUT/ThermoMechanics/CreepBGRa/Verification/m2_3Dloadbt
  run time singularity exec $SIF scif run ogs -o $OUT/ThermoMechanics/CreepBGRa/Verification/m2_3Dloadbt -r $SRC/Tests/Data/ThermoMechanics/CreepBGRa/Verification/m2_3Dloadbt $SRC/Tests/Data/ThermoMechanics/CreepBGRa/Verification/m2_3Dloadbt/m2_3Dloadbt.prj
  [ "$status" -eq 0 ]
}

@test "benchmark - ogs-ThermoMechanics/InitialStates/into_initial_state" {
  rm -r $OUT/ThermoMechanics/InitialStates
  mkdir -p $OUT/ThermoMechanics/InitialStates
  run time singularity exec $SIF scif run ogs -o $OUT/ThermoMechanics/InitialStates -r $SRC/Tests/Data/ThermoMechanics/InitialStates $SRC/Tests/Data/ThermoMechanics/InitialStates/into_initial_state.prj
  [ "$status" -eq 0 ]
}

@test "benchmark - ogs-ThermoMechanics/InitialStates/equilibrium_restart" {
  rm -r $OUT/ThermoMechanics/InitialStates
  mkdir -p $OUT/ThermoMechanics/InitialStates
  run time singularity exec $SIF scif run ogs -o $OUT/ThermoMechanics/InitialStates -r $SRC/Tests/Data/ThermoMechanics/InitialStates $SRC/Tests/Data/ThermoMechanics/InitialStates/equilibrium_restart.prj
  [ "$status" -eq 0 ]
}

@test "benchmark - ogs-ThermoMechanics/InitialStates/non_equilibrium_initial_state" {
  rm -r $OUT/ThermoMechanics/InitialStates
  mkdir -p $OUT/ThermoMechanics/InitialStates
  run time singularity exec $SIF scif run ogs -o $OUT/ThermoMechanics/InitialStates -r $SRC/Tests/Data/ThermoMechanics/InitialStates $SRC/Tests/Data/ThermoMechanics/InitialStates/non_equilibrium_initial_state.prj
  [ "$status" -eq 0 ]
}

@test "benchmark - ogs-ThermoMechanics/StaggeredScheme/TM_Quad/iglu_quarter_plane_strain_quad" {
  rm -r $OUT/ThermoMechanics/StaggeredScheme/TM_Quad
  mkdir -p $OUT/ThermoMechanics/StaggeredScheme/TM_Quad
  run time singularity exec $SIF scif run ogs -o $OUT/ThermoMechanics/StaggeredScheme/TM_Quad -r $SRC/Tests/Data/ThermoMechanics/StaggeredScheme/TM_Quad $SRC/Tests/Data/ThermoMechanics/StaggeredScheme/TM_Quad/iglu_quarter_plane_strain_quad.prj
  [ "$status" -eq 0 ]
}

@test "benchmark - ogs-ThermoMechanics/StaggeredScheme/CreepAfterExcavation/CreepAfterExcavation" {
  rm -r $OUT/ThermoMechanics/StaggeredScheme/CreepAfterExcavation
  mkdir -p $OUT/ThermoMechanics/StaggeredScheme/CreepAfterExcavation
  run time singularity exec $SIF scif run ogs -o $OUT/ThermoMechanics/StaggeredScheme/CreepAfterExcavation -r $SRC/Tests/Data/ThermoMechanics/StaggeredScheme/CreepAfterExcavation $SRC/Tests/Data/ThermoMechanics/StaggeredScheme/CreepAfterExcavation/CreepAfterExcavation.prj
  [ "$status" -eq 0 ]
}

