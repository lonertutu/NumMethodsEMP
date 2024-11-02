// Параметры комнаты
room_width = 5.6;
room_depth = 3.8;
room_height = 3.1;

// Параметры окна
window_width = 1.6;
window_height = 1.5;
window_offset = 1.0;

// Параметры радиатора
heater_width = 1.5;
heater_depth = 0.14;
heater_height = 1.0;
heater_offset = 0.2;

// Создание комнаты как параллелепипеда
room = newv;
Box(room) = {0, 0, 0, room_width, room_depth, room_height};

// Создание окна на одной из стен
x_window = (room_width - window_width) / 2;
y_window = room_depth;
z_window = window_offset;
window = newv;
Box(window) = {x_window, y_window, z_window, window_width, 0.1, window_height};

// Создание радиатора под окном
x_heater = x_window;
y_heater = y_window - 0.14;
z_heater = heater_offset;
heater = newv;
Box(heater) = {x_heater, y_heater, z_heater, heater_width, heater_depth, heater_height};

// Вырезание окна из комнаты
BooleanDifference{ Volume{room}; Delete; }{ Volume{window}; Delete; };
BooleanDifference{ Volume{room}; Delete; }{ Volume{heater}; };

// Настройка полей размеров для детализированной сетки вокруг радиатора
heater_distance_field = Distance{ Volume{heater}; };
Field[1] = Threshold;
Field[1].InField = heater_distance_field;
Field[1].SizeMin = 0.05; // Минимальный размер ячейки возле радиатора
Field[1].SizeMax = 0.5;  // Максимальный размер ячейки вдали от радиатора
Field[1].DistMin = 0.2;  // Дистанция, на которой будет минимальный размер
Field[1].DistMax = 1.0;  // Дистанция, на которой будет максимальный размер

// Устанавливаем поле как фоновое для генерации сетки
Background Field = 1;

// Генерация объёмной сетки
Mesh.Algorithm3D = 4;
Mesh.CharacteristicLengthMax = 1.0; // Общий максимальный размер ячейки, если нужен