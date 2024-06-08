function [t,y] = prostokatny()
    t = -%pi:0.01:%pi
    N = length(t)
    
    y = zeros(1,N)
    
    for i = 1:N
        if t(i) == -%pi then
            y(i) = 0
        elseif t(i) > -%pi & t(i) < 0 then
            y(i) = 1
        elseif t(i) > 0 & t(i) < %pi then
            y(i) = 0
        end
    end
endfunction

function y = f_analitycznie(N)
    t = -%pi:0.01:%pi
    
    y = 1/2
    
    for n = 1:N
        y = y - 2/%pi*(sin((2*n-1)*t))/(2*n-1)
    end
endfunction

function a = a_n(n)
    a = 1/%pi*(integrate("cos(n*t)", "t", -%pi, 0))
endfunction


function b = b_n(n)
    b = 1/%pi*(integrate("sin(n*t)", "t", -%pi, 0))
endfunction


function a0 = a_0(n)
    a0 = 1/%pi*(integrate("1", "t", -%pi, 0))
endfunction

function y = f_numerycznie(N)
    t = -%pi:0.01:%pi
    y = a_0(N)/2
    
    for n = 1:N
        a = a_n(n)
        b = b_n(n)
        y = y + a*cos(n*t)+b*sin(n*t)
    end
endfunction

[t,y1] = prostokatny()
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
ax.data_bounds=[-4.7 0;4.7 2.3]
legend('sygnał wyjściowy', 'szereg Fouriera wyznaczony analitycznie', 'szereg Fouriera wyznaczony numerycznie')
xtitle('Sygnał prostokątny dla N=1', 't', 'x(t)')
xs2png(0, 'C:\Users\Rafal\OneDrive\Dokumenty\GitHub\Analiza-sygna-ow\wykres11')
clf

plot(t,y1,t,y3, t, y3_)
ax=gca()
ax.data_bounds=[-4.7 0;4.7 2.3]
legend('sygnał wyjściowy', 'szereg Fouriera wyznaczony analitycznie', 'szereg Fouriera wyznaczony numerycznie')
xtitle('Sygnał prostokątny dla N=5', 't', 'x(t)')
xs2png(0, 'C:\Users\Rafal\OneDrive\Dokumenty\GitHub\Analiza-sygna-ow\wykres15')
clf


plot(t,y1,t,y4, t, y4_)
ax=gca()
ax.data_bounds=[-4.7 0;4.7 2.3]
legend('sygnał wyjściowy', 'szereg Fouriera wyznaczony analitycznie', 'szereg Fouriera wyznaczony numerycznie')
xtitle('Sygnał prostokątny dla N=10', 't', 'x(t)')
xs2png(0, 'C:\Users\Rafal\OneDrive\Dokumenty\GitHub\Analiza-sygna-ow\wykres110')
clf


plot(t,y1,t,y5, t, y5_)
ax=gca()
ax.data_bounds=[-4.7 0;4.7 2.3]
legend('sygnał wyjściowy', 'szereg Fouriera wyznaczony analitycznie', 'szereg Fouriera wyznaczony numerycznie')
xtitle('Sygnał prostokątny dla N=100', 't', 'x(t)')
xs2png(0, 'C:\Users\Rafal\OneDrive\Dokumenty\GitHub\Analiza-sygna-ow\wykres1100')
clf

