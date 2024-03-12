function z=n_th_root(n)
    for i=1:n
        z = nthroot(sqrt(2),n)*(cos((%pi/4 + 2*%pi*i)/n)+%i*sin((%pi/4 + 2*%pi*i)/n)) 
        disp(z)
        plot(real(z), imag(z), ".")
    end
    r = nthroot(sqrt(2),n)
    a = linspace(0, 2*%pi, 100)
    x = r*cos(a);
    y = r*sin(a);
    plot(x, y);
endfunction

