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
