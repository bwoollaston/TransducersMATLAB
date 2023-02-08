imp_op = detectImportOptions("C:\Users\woollastoncb\Downloads\SampleWeatherData.csv");
imp_op.SelectedVariableNames = {'DateTime','Temperature','RH','WindSpeed','WindDirection','WeatherConditions'};

% tab = readtable('SampleWeatherData.csv',imp_op);

imp_op = setvartype(imp_op,{'WindDirection','WeatherConditions'},'categorical');
imp_op = setvaropts(imp_op,{'Temperature','RH','WindSpeed'},"FillValue",nan);
imp_op = setvaropts(imp_op,{'WindDirection','WeatherConditions'},"FillValue",'No Data');

readtimetable('C:\Users\woollastoncb\Downloads\SampleWeatherData.csv',imp_op);
