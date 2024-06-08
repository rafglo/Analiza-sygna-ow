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

[t,y1] = prostokatny()
y2 = f_analitycznie(1)
y2 = f_analitycznie(5)
y2 = f_analitycznie(10)
y3= f_analitycznie(100)

plot(t,y1,t,y2)
ax=gca()
ax.data_bounds=[-4.7 0;4.7 2.3]
legend('sygnał wyjściowy', 'szereg fouriera wyznaczony analitycznie')
xtitle('Sygnał prostokątny dla N=10', 't', 'x(t)')
xs2png(0, '/Users/wojtek/Desktop/sygnały/wykres111.png')


