e=actxserver('LabVIEW.Application');
vipath='C:\Users\woollastoncb\Documents\TransducersMATLAB\labviewFunc.vi';
vi=invoke(e,'GetVIReference',vipath);
!start C:\Users\woollastoncb\Documents\TransducersMATLAB\labviewFunc.vi
disp(vi.ExecState);
vi.Run;
disp(vi.ExecState);