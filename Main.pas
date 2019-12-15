program main;
uses crt;
label 1;
var cmd:char;
var sot,des,edin,chis:integer;
var g,h,t,S,V,r,a,b,P,I,r1,r2:real;
var beauty:=readalltext('beautiful_text.txt');
var main_text:=readalltext('main_window.txt');


begin
  setwindowsize(80,20);
  hidecursor;
  textcolor(cyan); writeln(main_text);
  writeln;
  writeln;
  delay(1500);
    1: begin
      delay(1000);
      clrscr;
      textcolor(cyan); beauty.println;  writeln;
      textcolor(green); write('[1] '); textcolor(white); write('Вычисление времени падения объекта');  writeln;
      textcolor(green); write('[2] '); textcolor(white); write('Нахождение разрядов 3-х значных чисел');  writeln;
      textcolor(green); write('[3] '); textcolor(white); write('Объем и площадь боковой стороны цилиндра');  writeln;
      textcolor(green); write('[4] '); textcolor(white); write('Периметр и площадь прямоугольника');  writeln;
      textcolor(green); write('[5] '); textcolor(white); write('Площадь развертки прямоугольника');  writeln;
      textcolor(green); write('[6] '); textcolor(white); write('Объем и площадь усеченного конуса');  writeln;
      writeln; writeln; textcolor(red); write('[x] '); textcolor(white); write('Выйти');  writeln;

      cmd:=readkey;
      delay(100);

    if cmd='1' then
      begin
          clrscr;
          g:=9.8;
          writeln();
          write('Высота падения объекта (метры): ');
          read(h);
          t:=sqrt(2*h/g);
          delay(500);
          writeln('время за которое объект дойдет до земли: ', t:6:2, ' секунд(ы)');
          writeln;
          textcolor(green);write('[0] ');textcolor(white);write('Главное меню');writeln;
          writeln;
          textcolor(red);write('[x] ');textcolor(white);write('Выйти');writeln;
          writeln;
          cmd:=readkey;
          if cmd='0' then goto 1
          else exit;
      end;

    if cmd='2' then
      begin
          clrscr;
          writeln;
          write('введите число от 100 до 999: ');
          read(chis);
          //////////////////////////
          sot:=chis div 100;
          des:=chis div 10 mod 10;
          edin:=chis mod 10;
          //////////////////////////
          delay(500);
          writeln();
          writeln('Сотни - ',sot,', Десятки - ',des, ', Еденицы - ', edin);
          writeln;
          writeln;
          textcolor(green);write('[0] ');textcolor(white);write('Главное меню');writeln;
          writeln;
          textcolor(red);write('[x] ');textcolor(white);write('Выйти');writeln;
          cmd:=readkey;
          if cmd='0' then goto 1
          else exit;
      end;

    if cmd='3' then
      begin
          clrscr;
          write('Введите радиус основания цилиндра:'); read(r); writeln;
          writeln();
          write('Введите высоту цилиндра:'); read(h); writeln;
          V := (Pi*(r*r)*h);
          S :=(2*Pi*r*h);
          delay(500);
          writeln();
          writeln('Площадь(S) равна: ', S:6:2, ' куб. см.');
          writeln;
          writeln('Объем(V) цилиндра равен: ', V:6:2, ' кв. см.');
          writeln;

          textcolor(green);write('[0] ');textcolor(white);write('Главное меню');writeln;
          writeln;
          textcolor(red);write('[x] ');textcolor(white);write('Выйти');writeln;
          cmd:=readkey;
          if cmd='0' then goto 1
          else exit;
      end;

    if cmd='4' then
      begin
        clrscr;
          write('Введите ширину прямоугольника: ');read(a);writeln;
          write('Введите длинну прямоугольника: ');read(b);writeln;
          p:=2*(a+b);
          s:=a*b;
          delay(500);
          writeln('периметр = ' ,P); writeln;
          writeln('площадь = ' ,S); writeln;

          textcolor(green);write('[0] ');textcolor(white);write('Главное меню');writeln;
          writeln;
          textcolor(red);write('[x] ');textcolor(white);write('Выйти');writeln;
          cmd:=readkey;
          if cmd='0' then goto 1
          else exit;
      end;

    if cmd='5' then
      begin
        clrscr;
        writeln('введите высоту параллелипипеда: ');
        read(h);

        writeln('введите ширину параллелипипеда: ');
        read(b);

        writeln('введите длину параллелипипеда: ');
        read(a);

        S := (2*(a*b+a*h+h*b));
        delay(500);

        writeln('площадь развертки(поверхности) параллелипипеда равна ', S, ' кв. см.' );

        textcolor(green);write('[0] ');textcolor(white);write('Главное меню');writeln;
        writeln;
        textcolor(red);write('[x] ');textcolor(white);write('Выйти');writeln;
        cmd:=readkey;
        if cmd='0' then goto 1
        else exit;
      end;

    if cmd='6' then
      begin
        clrscr;
        writeln();
        writeln('Введите большой радиус основания усеченного конуса(см): ');
        read(r1);

        writeln();

        writeln('Введите малый радиус основания усеченного конуса(см): ');
        read(r2);

        writeln();

        writeln('Введите высоту усеченного конуса(см): ');
        read(h);

        writeln();

        V:=(pi*h*(r1*r1+r1*r2+r2*r2)/3);
        I:=sqrt(h*h+(r1-r2)*(r1-r2));
        S:=(pi*(r1+r2)*I);

        delay(500);

        writeln('Объем(V) усеченного конуса равен ', V:8:2, ' куб. см.');
        writeln();
        writeln('Площадь(S) усученного конуса равна ', S:8:2, ' кв. см.' );
        writeln();
        writeln('Образующая(L) усеченного конуса равна ', I:8:2);
        writeln();

        textcolor(green);write('[0] ');textcolor(white);write('Главное меню');writeln;
        writeln;
        textcolor(red);write('[x] ');textcolor(white);write('Выйти');writeln;
        cmd:=readkey;
        if cmd='0' then goto 1
        else exit;
      end;


    if cmd='x' then exit;
  end;
end.
