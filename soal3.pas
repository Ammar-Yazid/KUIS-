program soal3;
uses crt;

var 
    n,i : integer;
    tugas, uts, uas, semua : array [1..5] of integer;
    rata : array [1..5] of real;
begin
    clrscr;
    write('masukkan jumlah mahasiswa : ');
    readln(n);
    if (n >= 1) and (n <= 5) then 
    begin
        //nilai tugas
        for i := 1 to n do 
        begin
            write('masukkan nilai tugas mahasiswa ke-', i, '; ');
            readln(tugas[i]);
        end;

        //nilai uts
        for i := 1 to n do 
        begin
            write('masukkan nilai UTS mahasiswa ke-', i, '; ');
            readln(uts[i]);
        end;

        //nilai uas
        for i := 1 to n do 
        begin
            write('masukkan nilai UAS mahasiswa ke-', i, '; ');
            readln(uas[i]);
        end;

        //rata-rata
        for i := 1 to n do 
        begin
            semua[i] := tugas[i] + uts[i] + uas[i];
            rata[i]:= semua[i] / 3;
            writeln('   mahasiswa ke-', i);
            writeln('nilai tugas : ', tugas[i]);
            writeln('nilai uts : ', uts[i]);
            writeln('nilai uas : ', uas[i]);
            writeln('total nilai ', rata[i]:0:2);
            if rata[i] < 70 then
            begin
                writeln('status = tidak lulus');
            end
            else
            begin
                writeln('status = lulus');
            end;
        end;
    end
    else
    writeln('syarat input maksimal 5 mahasiswa');
end.
