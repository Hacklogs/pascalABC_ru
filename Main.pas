program main;
uses crt;
var cmd:char;
var sot,des,edin,chis:integer;
var g,h,t,S,V,r,a,b,P:real;
var beauty:=readalltext('beautiful_text.txt');



begin
  setwindowsize(100,20);
  hidecursor;
  textcolor(cyan); beauty.println;  writeln;
  textcolor(green); write('[1] '); textcolor(white); write('Вычисление времени падения объекта');  writeln;
  textcolor(green); write('[2] '); textcolor(white); write('Нахождение разрядов 3-х значных чисел');  writeln; 
  textcolor(green); write('[3] '); textcolor(white); write('Объем и площадь боковой стороны цилиндра');  writeln;
  textcolor(green); write('[4] '); textcolor(white); write('Периметр и площадь прямоугольника');  writeln;
  writeln; writeln; textcolor(red); write('[x] '); textcolor(white); write('Выйти');  writeln;
  
  
  cmd:=readkey;
  
  if cmd='1' then
    begin
        g:=9.8;
        writeln();
        write('Высота падения объекта (метры): ');
        read(h);
        t:=sqrt(2*h/g);
        writeln('время за которое объект дойдет до земли: ', t:6:2, ' секунд(ы)');
        writeln('|нажмите любую клавишу чтобы выйти|');
        readkey;
        exit;
    end;
    
  if cmd='2' then
    begin
        writeln;
        writeln('---***---***---***---***---***---');
        write('введите число от 100 до 999: ');
        read(chis);
        //////////////////////////
        sot:=chis div 100;
        des:=chis div 10 mod 10; 
        edin:=chis mod 10;
        //////////////////////////
        writeln();
        writeln('Сотни - ',sot,', Десятки - ',des, ', Еденицы - ', edin);
        writeln('---***---***---***---***---***---');
        writeln;
        writeln('|нажмите любую клавишу чтобы выйти|');
        readkey;
        exit;
    end;
    
  if cmd='3' then
    begin
        writeln('Введите радиус основания цилиндра:');
        read(r);
        writeln();
        writeln('Введите высоту цилиндра:');
        read(h);
        V := (Pi*(r*r)*h);
        S :=(2*Pi*r*h);
        writeln();
        writeln('Площадь(S) равна: ', S:6:2, ' куб. см.');
        writeln('Объем(V) цилиндра равен: ', V:6:2, ' кв. см.');
        writeln();
        readkey()
    end;
    
  if cmd='4' then
    begin
        write('Введите ширину прямоугольника: ');read(a);
        write('Введите длинну прямоугольника: ');read(b);
        p:=2*(a+b);
        s:=a*b;
        writeln('периметр = ' ,P);
        writeln('площадь = ' ,S);
        readkey;
    end;
    
    
  if cmd='x' then exit;
end.