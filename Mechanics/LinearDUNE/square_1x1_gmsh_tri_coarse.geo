res = .5;

Point (0) = { 0, 0, 0, res };
Point (1) = { 1, 0, 0, res };
Point (2) = { 1, 1, 0, res };
Point (3) = { 0, 1, 0, res };
Line(0) = {0,1};
Line(1) = {1,2};
Line(2) = {2,3};
Line(3) = {3,0};

Line Loop(4) = {0,1,2,3};
Plane Surface(0) = {4};
