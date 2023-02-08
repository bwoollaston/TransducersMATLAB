%This program creates a timetable to hold similated experimental data,
%similar to how you will in future labs save experimental data acquired
%using a data acquisition board. Use the MATLAB documentation to study the
%functions such as timetable, datetime, etc. Also look up the documentation regarding MATLAB cell array data types.
%They are used very often. When running this program, place breakpoints after each line of code to stop the program so that you
%can examine the effect of each line on the variables, which can be observed in the workspace.

%Step 1: Create empty vectors for each measured variable. The variable names will serve as the names of the timetable columns.
VT=[]; VP=[]; Vreg=[]; T=[];P=[]; Z=[];

%Step 2: Create an empty timetable containing 6 columns for the 6 measured
%quantitites, along with a datetime variable to record the date/time of
%each measurement. The timetable will be updated every one second in the
%for loop.
%Note: Since the first column will contain datetimes, I created an empty
%datetime variable to initialize the timetable by creating a NaT (not a
%time) function. I created a NaT array of 0 rows and 1 column, which in effect is an empty datetime.
AllDataTimeTable=timetable(NaT(0,1),VT,VP,Vreg,T,P,Z);

%Step 3: Generate random #s for each variable every 1 second for 10 seconds
%to simulate data acquisition. Append each new row of measurements to the
%timetable
for i=1:10
    VT=randn; VP=randn; Vreg=randn; T=randn;P=randn; Z=randn; %Generates a random number, similating acquisition of a datapoint
    newdata=timetable(datetime('now'),VT,VP,Vreg,T,P,Z);
    AllDataTimeTable=vertcat(AllDataTimeTable,newdata); %Adds the new data as another row to the timetable.  
    pause(1); %Pause the program for 1 second before acquiring the next round of data points.
end

%Step 4: Write the timetable of data to output file. First change directory
%to the folder where you would like the file saved. Put in the path on your
%laptop/PC
outfilepathname='TimetableOutput_Ex1Problem5.csv';   
cd C:\Users\shermanjp\Documents\Teaching\SensorsClass\Spring2023\MATLABExercises
writetimetable(AllDataTimeTable, outfilepathname); 
