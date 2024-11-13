SetFactory("OpenCASCADE");
Merge "room_heater.brep";
//+
Physical Volume("Air_volume", 2) = {2};
//+
Physical Volume("Heater", 1) = {1};
//+
Physical Surface("Window", 1) = {13};
//+
Physical Surface("Walls", 2) = {9, 11, 8, 7, 12, 10,};
//+
Field[1] = Box;
//+
Field[1].VIn = 100;
//+
Field[1].VOut = 500;
//+
Field[1].XMax = 150;
//+
Field[1].XMin = 0;
//+
Field[1].YMax = 1200;
//+
Field[1].YMin = 200;
//+
Field[1].ZMax = -1150;
//+
Field[1].ZMin = -2650;
//+
Background Field = 1;
//+
Field[1].VIn = 100;
//+
Field[1].VOut = 200;


