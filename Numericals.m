function Numericals
format long;

disp('e^x - 2 - x          [-2.4, -1.6]');
disp('*******************************************************');
disp('F I X E D - P O I N T   I T E R A T I O N   M E T H O D');
disp('*******************************************************');
disp('x = e^x - 2');
disp('FIRST INITIAL APPROXIMATION:');
disp('x = -2.4');
x = -2.4;
counter = 0;
limit = 100;
tolerance = 0.0000001;
difference = 1;

n = [];
Xn = [];
XnPlusOne = [];


while (counter <= limit && difference > tolerance)
    n = [n; counter];
    Xn = [Xn; x];
    func = (exp(x) - 2);
    x_increment = func;
    XnPlusOne = [XnPlusOne; x_increment];
    difference = abs(x_increment - x);
    x = x_increment;
    counter = counter + 1;
end

T = table(n,Xn,XnPlusOne);
disp(T);

disp('SECOND INITIAL APPROXIMATION:');
disp('x = -1.6');
x = -1.6;
counter = 0;
difference = 1;

n = [];
Xn = [];
XnPlusOne = [];


while (counter <= limit && difference > tolerance)
    n = [n; counter];
    Xn = [Xn; x];
    func = (exp(x) - 2);
    x_increment = func;
    XnPlusOne = [XnPlusOne; x_increment];
    difference = abs(x_increment - x);
    x = x_increment;
    counter = counter + 1;
end

T = table(n,Xn,XnPlusOne);
disp(T);


disp('*******************************');    
disp('B I S E C T I O N   M E T H O D');
disp('*******************************');

disp('f(x) = e^x - 2 - x');

disp('FIRST INITIAL APPROXIMATION:');
disp('Interval [-2.4, -1.6]');
ey = -2.4;
bi = -1.6;
si = (ey + bi)/2;

counter = 0;
difference = 1;

n = [];
a = [];
b = [];
c = [];
FunctionOfC = [];


while (counter <= limit && difference > tolerance)
    n = [n; counter];
    a = [a; ey];
    b = [b; bi];
    c = [c; si];
    func = exp(si) - 2 - si;
    if (func > 0)
        ey = si;
    else if (func < 0)
            bi = si;
        end
    end
    si = (ey + bi)/2;
    difference = abs(ey - bi);
    FunctionOfC = [FunctionOfC; func];
    counter = counter + 1;
end

T = table(n,a,b,c,FunctionOfC);
disp(T);

disp('SECOND INITIAL APPROXIMATION:');
disp('Interval [-2.2, -1.7]');
ey = -2.2;
bi = -1.7;
si = (ey + bi)/2;

counter = 0;
difference = 1;

n = [];
a = [];
b = [];
c = [];
FunctionOfC = [];


while (counter <= limit && difference > tolerance)
    n = [n; counter];
    a = [a; ey];
    b = [b; bi];
    c = [c; si];
    func = exp(si) - 2 - si;
    if (func > 0)
        ey = si;
    else if (func < 0)
            bi = si;
        end
    end
    si = (ey + bi)/2;
    difference = abs(ey - bi);
    FunctionOfC = [FunctionOfC; func];
    counter = counter + 1;
end

T = table(n,a,b,c,FunctionOfC);
disp(T);

disp('*****************************************');
disp('N E W T O N - R A P H S O N   M E T H O D');
disp('*****************************************');

disp('f(x) = e^x - 2 - x');
disp('f''(x) = e^x - 1');
disp('x = x - ((e^x - 2 - x) / (e^x - 1))');

disp('FIRST INITIAL APPROXIMATION:');
disp('x = -2.4');
x = -2.4;
counter = 0;
difference = 1;

n = [];
Xn = [];
XnPlusOne = [];


while (counter <= limit && difference > tolerance)
    n = [n; counter];
    Xn = [Xn; x];
    func = x - ((exp(x) - 2 - x)/(exp(x) - 1));
    x_increment = func;
    XnPlusOne = [XnPlusOne; x_increment];
    difference = abs(x_increment - x);
    x = x_increment;
    counter = counter + 1;
end

T = table(n,Xn,XnPlusOne);
disp(T);

disp('SECOND INITIAL APPROXIMATION:');
disp('x = -1.6');
x = -1.6;
counter = 0;
difference = 1;

n = [];
Xn = [];
XnPlusOne = [];


while (counter <= limit && difference > tolerance)
    n = [n; counter];
    Xn = [Xn; x];
    func = x - ((exp(x) - 2 - x)/(exp(x) - 1));
    x_increment = func;
    XnPlusOne = [XnPlusOne; x_increment];
    difference = abs(x_increment - x);
    x = x_increment;
    counter = counter + 1;
end

T = table(n,Xn,XnPlusOne);
disp(T);


disp('*************************');
disp('S E C A N T   M E T H O D');
disp('*************************');

disp('f(x) = e^x - 2 - x');

disp('FIRST INITIAL APPROXIMATION:');
disp('n=0, x = -2.4');
disp('n=1, x = -1.6');

x_lower = -2.4;
x = -1.6;
fopn = exp(x_lower) - 2 - x_lower;

counter = 0;
difference = 1;


n = [];
Pn = [];
FunctionOfPn = [];
Epsilon = [];

n = [n; counter];
Pn = [Pn; x_lower];
FunctionOfPn = [FunctionOfPn; fopn];
Epsilon = [Epsilon; 0];

while (counter <= limit && difference > tolerance)
    fopn = exp(x) - 2 - x;
    epsilon = x - x_lower;
   
    Pn = [Pn; x];
    FunctionOfPn = [FunctionOfPn; fopn];
    Epsilon = [Epsilon; epsilon];
    
    func = x - (((exp(x) - 2 - x)*(x - x_lower))/((exp(x) - 2 - x)-(exp(x_lower) - 2 - x_lower)));
    x_lower = x;
    x = func;
    
   difference = abs(x - x_lower);
   
   counter = counter + 1;
    n = [n; counter];
end

T = table(n,Pn,FunctionOfPn,Epsilon);
disp(T);


disp('SECOND INITIAL APPROXIMATION:');
disp('n=0, x = -2.4');
disp('n=1, x = -2.0');

x_lower = -2.4;
x = -2.0;
fopn = exp(x_lower) - 2 - x_lower;

counter = 0;
difference = 1;


n = [];
Pn = [];
FunctionOfPn = [];
Epsilon = [];

n = [n; counter];
Pn = [Pn; x_lower];
FunctionOfPn = [FunctionOfPn; fopn];
Epsilon = [Epsilon; 0];

while (counter <= limit && difference > tolerance)
    fopn = exp(x) - 2 - x;
    epsilon = x - x_lower;
   
    Pn = [Pn; x];
    FunctionOfPn = [FunctionOfPn; fopn];
    Epsilon = [Epsilon; epsilon];
    
    func = x - (((exp(x) - 2 - x)*(x - x_lower))/((exp(x) - 2 - x)-(exp(x_lower) - 2 - x_lower)));
    x_lower = x;
    x = func;
    
   difference = abs(x - x_lower);
   
   counter = counter + 1;
    n = [n; counter];
end

T = table(n,Pn,FunctionOfPn,Epsilon);
disp(T);

