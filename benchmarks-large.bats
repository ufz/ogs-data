# --- see benchmarks.bats for usage ---
@test "benchmark - ogs-Mechanics/Linear/square_1e5-LARGE" {
  rm -r $OUT/Mechanics/Linear
  mkdir -p $OUT/Mechanics/Linear
  run time singularity exec $SIF scif run ogs -o $OUT/Mechanics/Linear -r $SRC/Tests/Data/Mechanics/Linear $SRC/Tests/Data/Mechanics/Linear/square_1e5.prj
  [ "$status" -eq 0 ]
}

@test "benchmark - ogs-Mechanics/Linear/MaterialForces/bar_3D-LARGE" {
  rm -r $OUT/Mechanics/Linear/MaterialForces
  mkdir -p $OUT/Mechanics/Linear/MaterialForces
  run time singularity exec $SIF scif run ogs -o $OUT/Mechanics/Linear/MaterialForces -r $SRC/Tests/Data/Mechanics/Linear/MaterialForces $SRC/Tests/Data/Mechanics/Linear/MaterialForces/bar_3D.prj
  [ "$status" -eq 0 ]
}

@test "benchmark - ogs-Mechanics/Burgers/cube_1e3-LARGE" {
  rm -r $OUT/Mechanics/Burgers
  mkdir -p $OUT/Mechanics/Burgers
  run time singularity exec $SIF scif run ogs -o $OUT/Mechanics/Burgers -r $SRC/Tests/Data/Mechanics/Burgers $SRC/Tests/Data/Mechanics/Burgers/cube_1e3.prj
  [ "$status" -eq 0 ]
}

@test "benchmark - ogs-Mechanics/Ehlers/cube_1e3-LARGE" {
  rm -r $OUT/Mechanics/Ehlers
  mkdir -p $OUT/Mechanics/Ehlers
  run time singularity exec $SIF scif run ogs -o $OUT/Mechanics/Ehlers -r $SRC/Tests/Data/Mechanics/Ehlers $SRC/Tests/Data/Mechanics/Ehlers/cube_1e3.prj
  [ "$status" -eq 0 ]
}

@test "benchmark - ogs-Mechanics/Linear/PressureBC/hollow_sphere-LARGE" {
  rm -r $OUT/Mechanics/Linear/PressureBC
  mkdir -p $OUT/Mechanics/Linear/PressureBC
  run time singularity exec $SIF scif run ogs -o $OUT/Mechanics/Linear/PressureBC -r $SRC/Tests/Data/Mechanics/Linear/PressureBC $SRC/Tests/Data/Mechanics/Linear/PressureBC/hollow_sphere.prj
  [ "$status" -eq 0 ]
}

@test "benchmark - ogs-Mechanics/Ehlers/axisymmetric_sphere_pl-LARGE" {
  rm -r $OUT/Mechanics/Ehlers
  mkdir -p $OUT/Mechanics/Ehlers
  run time singularity exec $SIF scif run ogs -o $OUT/Mechanics/Ehlers -r $SRC/Tests/Data/Mechanics/Ehlers $SRC/Tests/Data/Mechanics/Ehlers/axisymmetric_sphere_pl.prj
  [ "$status" -eq 0 ]
}

@test "benchmark - ogs-Mechanics/EhlersDamageNonLocal/bar/coarse_elastic_tangent/bar-LARGE" {
  rm -r $OUT/Mechanics/EhlersDamageNonLocal/bar/coarse_elastic_tangent
  mkdir -p $OUT/Mechanics/EhlersDamageNonLocal/bar/coarse_elastic_tangent
  run time singularity exec $SIF scif run ogs -o $OUT/Mechanics/EhlersDamageNonLocal/bar/coarse_elastic_tangent -r $SRC/Tests/Data/Mechanics/EhlersDamageNonLocal/bar/coarse_elastic_tangent $SRC/Tests/Data/Mechanics/EhlersDamageNonLocal/bar/coarse_elastic_tangent/bar.prj
  [ "$status" -eq 0 ]
}

@test "benchmark - ogs-Mechanics/EhlersDamageNonLocal/bar/fine/bar-LARGE" {
  rm -r $OUT/Mechanics/EhlersDamageNonLocal/bar/fine
  mkdir -p $OUT/Mechanics/EhlersDamageNonLocal/bar/fine
  run time singularity exec $SIF scif run ogs -o $OUT/Mechanics/EhlersDamageNonLocal/bar/fine -r $SRC/Tests/Data/Mechanics/EhlersDamageNonLocal/bar/fine $SRC/Tests/Data/Mechanics/EhlersDamageNonLocal/bar/fine/bar.prj
  [ "$status" -eq 0 ]
}

@test "benchmark - ogs-Mechanics/EhlersDamageNonLocal/bar/veryfine/bar-LARGE" {
  rm -r $OUT/Mechanics/EhlersDamageNonLocal/bar/veryfine
  mkdir -p $OUT/Mechanics/EhlersDamageNonLocal/bar/veryfine
  run time singularity exec $SIF scif run ogs -o $OUT/Mechanics/EhlersDamageNonLocal/bar/veryfine -r $SRC/Tests/Data/Mechanics/EhlersDamageNonLocal/bar/veryfine $SRC/Tests/Data/Mechanics/EhlersDamageNonLocal/bar/veryfine/bar.prj
  [ "$status" -eq 0 ]
}

@test "benchmark - ogs-Mechanics/EhlersDamageNonLocal/beam/fine/beam-LARGE" {
  rm -r $OUT/Mechanics/EhlersDamageNonLocal/beam/fine
  mkdir -p $OUT/Mechanics/EhlersDamageNonLocal/beam/fine
  run time singularity exec $SIF scif run ogs -o $OUT/Mechanics/EhlersDamageNonLocal/beam/fine -r $SRC/Tests/Data/Mechanics/EhlersDamageNonLocal/beam/fine $SRC/Tests/Data/Mechanics/EhlersDamageNonLocal/beam/fine/beam.prj
  [ "$status" -eq 0 ]
}

@test "benchmark - ogs-Mechanics/EhlersDamageNonLocal/beam/3D_hexa/beam-LARGE" {
  rm -r $OUT/Mechanics/EhlersDamageNonLocal/beam/3D_hexa
  mkdir -p $OUT/Mechanics/EhlersDamageNonLocal/beam/3D_hexa
  run time singularity exec $SIF scif run ogs -o $OUT/Mechanics/EhlersDamageNonLocal/beam/3D_hexa -r $SRC/Tests/Data/Mechanics/EhlersDamageNonLocal/beam/3D_hexa $SRC/Tests/Data/Mechanics/EhlersDamageNonLocal/beam/3D_hexa/beam.prj
  [ "$status" -eq 0 ]
}

@test "benchmark - ogs-Mechanics/EhlersDamageNonLocal/beam/3D_tetr/beam-LARGE" {
  rm -r $OUT/Mechanics/EhlersDamageNonLocal/beam/3D_tetr
  mkdir -p $OUT/Mechanics/EhlersDamageNonLocal/beam/3D_tetr
  run time singularity exec $SIF scif run ogs -o $OUT/Mechanics/EhlersDamageNonLocal/beam/3D_tetr -r $SRC/Tests/Data/Mechanics/EhlersDamageNonLocal/beam/3D_tetr $SRC/Tests/Data/Mechanics/EhlersDamageNonLocal/beam/3D_tetr/beam.prj
  [ "$status" -eq 0 ]
}

@test "benchmark - ogs-Mechanics/EhlersDamageNonLocal/holed_beam/holed_beam-LARGE" {
  rm -r $OUT/Mechanics/EhlersDamageNonLocal/holed_beam
  mkdir -p $OUT/Mechanics/EhlersDamageNonLocal/holed_beam
  run time singularity exec $SIF scif run ogs -o $OUT/Mechanics/EhlersDamageNonLocal/holed_beam -r $SRC/Tests/Data/Mechanics/EhlersDamageNonLocal/holed_beam $SRC/Tests/Data/Mechanics/EhlersDamageNonLocal/holed_beam/holed_beam.prj
  [ "$status" -eq 0 ]
}

