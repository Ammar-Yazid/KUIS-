program enam;
uses crt;

var
    a, b, c : array[1..5,1..5] of integer;
    m, n, o, p, i, j : integer;

begin
    clrscr;

    write('Masukkan jumlah baris matriks A (MAKS 5) : ');
    readln(m);
    write('Masukkan jumlah Kolom matriks A (MAKS 5) : ');
    readln(n);
    write('Masukkan jumlah baris matriks B (MAKS 5) : ');
    readln(o);
    write('Masukkan jumlah Kolom matriks B (MAKS 5) : ');
    readln(p);

    if (m = o) and (n = p) then
    begin
        for i := 1 to m do
            for j := 1 to n do
            begin
                write('MATRIX A ', i, ' ', j, ' : ');
                readln(a[i,j]);
            end;

        for i := 1 to m do
            for j := 1 to n do
            begin
                write('MATRIX B ', i, ' ', j, ' : ');
                readln(b[i,j]);
            end;

        for i := 1 to m do
            for j := 1 to n do
                c[i,j] := a[i,j] + b[i,j];

        writeln;
        for i := 1 to m do
        begin
            for j := 1 to n do
                write(c[i,j], ' ');
            writeln;
        end;
    end
    else
        writeln('MATRIX TIDAK DAPAT DIJUMLAHKAN!');
end.