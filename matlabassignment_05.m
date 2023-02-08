imp_op = detectImportOptions("C:\Users\woollastoncb\Downloads\SampleWeatherData.csv");
imp_op.SelectedVariableNames = {'DateTime','Temperature','RH','WindSpeed','WindDirection','WeatherConditions'};

tab = readtable('SampleWeatherData.csv',imp_op);