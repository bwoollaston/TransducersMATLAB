rawTable = readtable('C:\Users\woollastoncb\Documents\lab01.xlsx','sheet','sheet1');
ax = get(gca);

x = rawTable.R_t;
y1 = rawTable.Case1;
y2 = rawTable.Case2;

figure;
p = plot(x/1000,y1,x/1000,y2);
title('V_o_u_t vs. Thermistor Resistance');
xlabel('Resistance (kohm)');
ylabel('Voltage (V)');
ax.xaxis.Exponent = 3;