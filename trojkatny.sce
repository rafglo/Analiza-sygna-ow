function [t,y] = trojkatny()
    t = 0:0.01:2*%pi
    N = length(t)
    
    y = zeros(1,N)
    
    for i = 1:N
        if t(i) > 0 & t(i) < %pi then
            y(i) = -t(i)/%pi + 1
        elseif t(i) > %pi & t(i) < 2*%pi then
            y(i) = t(i)/%pi - 1
        elseif t(i) == 0 | t(i) == %pi
            y(i) = 0
        end
    end
endfunction

function [t,y] = trojkatny2()
    t = -2*%pi:0.01:4*%pi
    N = length(t)
    
    y = zeros(1,N)
    
    for i = 1:N
        if t(i) >= -2*%pi & t(i) < -%pi then
            y(i) = -1/%pi*(t(i) + %pi)
        elseif t(i) >= -%pi & t(i) < 0 then
            y(i) = 1/%pi*(t(i) + %pi)
        elseif t(i) >= 0 & t(i) < %pi then
            y(i) = -t(i)/%pi + 1
        elseif t(i) >= %pi & t(i) < 2*%pi then
            y(i) = t(i)/%pi - 1
        elseif t(i) >= 2*%pi & t(i) < 3*%pi then
            y(i) = -1/%pi*(t(i) - 3*%pi)
        elseif t(i) >= 3*%pi & t(i) < 4*%pi then
            y(i) = 1/%pi*(t(i) - 3*%pi)
        end
    end
endfunction

function y = f_analitycznie(N)
    t = 0:0.01:2*%pi
    
    y = 1/2
    
    for n = 1:N
        y = y + 4/%pi^2*(cos((2*n-1)*t))/(2*n-1)^2 
    end
endfunction

function a = a_n(n)
    a = 1/%pi*(integrate("(-t/%pi+1)*cos(n*t)", "t", 0, %pi) + integrate("(t/%pi-1)*cos(n*t)", "t", %pi, 2*%pi))
endfunction


function b = b_n(n)
    b = 1/%pi*(integrate("(-t/%pi+1)*sin(n*t)", "t", 0, %pi) + integrate("(t/%pi-1)*sin(n*t)", "t", %pi, 2*%pi))
endfunction


function a0 = a_0(n)
    a0 = 1/%pi*(integrate("(-t/%pi+1)", "t", 0, %pi) + integrate("(t/%pi-1)", "t", %pi, 2*%pi))
endfunction

function y = f_numerycznie(N)
    t = 0:0.01:2*%pi
    y = a_0(N)/2
    
    for n = 1:N
        a = a_n(n)
        b = b_n(n)
        y = y + a*cos(n*t)+b*sin(n*t)
    end
endfunction

[t,y1] = trojkatny()
y2 = f_analitycznie(1)
y2_ = f_numerycznie(1)
y3 = f_analitycznie(5)
y3_ = f_numerycznie(5)
y4 = f_analitycznie(10)
y4_ = f_numerycznie(10)
y5= f_analitycznie(100)
y5_ = f_numerycznie(100)

plot(t,y1,t,y2, t, y2_)
ax=gca()
ax.data_bounds=[-0.5 0;6.1 1.3]
legend('sygnał wyjściowy', 'szereg Fouriera wyznaczony analitycznie', 'szereg Fouriera wyznaczony numerycznie')
xtitle('Sygnał trójkątny dla N=1', 't', 'x(t)')
xs2png(0, 'C:\Users\Rafal\OneDrive\Dokumenty\GitHub\Analiza-sygna-ow\wykres31')
clf

plot(t,y1,t,y3, t, y3_)
ax=gca()
ax.data_bounds=[-0.5 0;6.1 1.3]
legend('sygnał wyjściowy', 'szereg Fouriera wyznaczony analitycznie', 'szereg Fouriera wyznaczony numerycznie')
xtitle('Sygnał trójkątny dla N=5', 't', 'x(t)')
xs2png(0, 'C:\Users\Rafal\OneDrive\Dokumenty\GitHub\Analiza-sygna-ow\wykres35')
clf


plot(t,y1,t,y4, t, y4_)
ax=gca()
ax.data_bounds=[-0.5 0;6.1 1.3]
legend('sygnał wyjściowy', 'szereg Fouriera wyznaczony analitycznie', 'szereg Fouriera wyznaczony numerycznie')
xtitle('Sygnał trójkątny dla N=10', 't', 'x(t)')
xs2png(0, 'C:\Users\Rafal\OneDrive\Dokumenty\GitHub\Analiza-sygna-ow\wykres310')
clf


plot(t,y1,t,y5, t, y5_)
ax=gca()
ax.data_bounds=[-0.5 0;6.1 1.3]
legend('sygnał wyjściowy', 'szereg Fouriera wyznaczony analitycznie', 'szereg Fouriera wyznaczony numerycznie')
xtitle('Sygnał trójkątny dla N=100', 't', 'x(t)')
xs2png(0, 'C:\Users\Rafal\OneDrive\Dokumenty\GitHub\Analiza-sygna-ow\wykres3100')
clf

[t2, sygnal] = trojkatny2()
plot(t2, sygnal)
ax=gca()
ax.data_bounds=[-6 0;12 1.3]
xtitle('Rozważany sygnał', 't', 'x(t)')
xs2png(0, 'C:\Users\Rafal\OneDrive\Dokumenty\GitHub\Analiza-sygna-ow\wykres3')
clf
