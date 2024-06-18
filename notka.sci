TRANSFORMATA Z

1) x = k*u(n)
P1   alfa = k,   beta = k, gamma = 1,  delta = -1

P2 alfa = k^2,   beta = k, gamma = 1, delta = -k

P3 A = k, B = -1, C=1



2) X = K^n u(n)

P1 A = 1   B=1            D = -K jak mamy we wzorze Bz+D
                          D = K jak mamy we wzorze Bz-D

P2:

Y = (an^2 + bn) c^n u(n)

alfa = c(a+b)
Beta = c^2(a-b)
gamma = 1
delta = -c


3) InverseZTransform[funkcja, z, n]
https://www.wolframalpha.com/input?i=InverseZTransform%5B%28-1.6*z%5E2+-+17.6*z%29%2F%282*z-1%29%5E3%2C+z%2C+n%5D
- szukamy x(k) = ? więc do wyniku podstawiamy k
- jeśli x(k) = 0, to gamma = 0
- przekształcamy do postaci (an^2 + bn)c^(-n)



4)k-ty wspolczynnik sz. fouriera funkcji
https://www.wolframalpha.com/input/?i=integrate+(3x%5E2+%2B+37x)*exp(-3*i*2*pi*x%2F(2*pi))%2F(2*pi)+from+-pi+to+pi

1/2pi calka od -pi do pi f(x)exp(-ikx)
Jeśli mamy w poleceniu podac |ci| to tzn. sprzeżenie czyli robimy pierwiastek z sumy części rzeczywistej do kwadratu i części urojonej do kwadratu


5)wsp. fouriera z f. char.   k-ty wsp
1/(pi) (integral(n*e^(-2*k*it)) from 0 to pi/2 - integral(ne^(-2*k*it)) from pi/2 to pi)


6)Mamy polecenie o treści "coś tam coś tam exp{-nt}...."
wzory całkowe sin i cos
alfa, beta = n^2
A = 1
B = 1
C = n
D = 0



7) Dany sygnał x(t), dokonujemy filtracji o odpowiedzi impulsowej h(t)
x(t) = asin(bt)     h(t) = exp(-kt)

A = a/sqrt(b^+k^2)
przesuniecie = -arctg(b/k)

8) Sygnał x spróbkowano i poddano filtracji ze sprzężeniem zwrotnym
x_n = kx_{n-1} + sx_{n-2}

F(z) = z/(z^2 + Cz + D)
C = -k 
D = -s


Wartość średnia sygnału
https://www.wolframalpha.com/input?i=1%2F2+*+integral%282%29dt+from+0+to+pi

Energia sygnału
https://www.wolframalpha.com/input?i=1%2F2+*+integral%282%29dt+from+0+to+pi

Moc średnia
https://www.wolframalpha.com/input?i=lim+T+-%3E+inf+%281%2F%282T%29+integral%28x%28t%29%29dt+from+-T+to+T%29

Wartość skuteczna 
https://www.wolframalpha.com/input?i=sqrt%28lim+T+-%3E+inf+%281%2F%282T%29+integral%28x%28t%29%29dt+from+-T+to+T%29%29

Teoretyczne wsp. sz. Fouriera dla sygnału trójkątnego bipolarnego typu piła...
a_k = A/(k^2pi^2)(1-(-1)^k)
a_0 = 0
b_k = 0


Transformaty:
- Fouriera int_{-inf}^{inf} x(t) e^{-iwt} dt         odwrotna 1/(2pi) int_{-inf}^{inf} x(t) e^{iwt} dt 
- Laplacea int_{-inf}^{inf} x(t) e^{-st} dt          odwrotna int_{-inf}^{inf} x(t) e^{st} dt 
- Hilberta int_{-inf}^{inf} x(t)/(s-t) dt
- Z sum_{0}^{inf} x(n) z^{-n}
- DFT sum_{0}^{inf} x(n) z^{-i Omega n}              odwrotna 1/(2pi) int_{-pi}^{pi} x(t) e^{-i Omega t} e^{i Omega n} dt 

Okna:
- prostokatne 2sin(wt)/w
- trojkatne T*[sin(wT/2)/(wT/2)]
- Hanna pi^2sin(wT)/[w(pi^2 - w^2 T^2)]
- Hamminga (1,08pi^2 0 0,16T^2 w^2)/[(w(pi^2 - T^2 w^2)]sin(wT)



Prawdziwe: 
- Fltorwanie to mnożenie WIDM / SPLOT sygnałów
- Uklady LTI przetwarzaja syganly wykorzystujac sygnal zwany odpowiedzia impulsowa a operacja ta jest nazywana SPLOTEM dwoch sygnalow, czyli FILTRACJA
- Przy projektowaniu filtrow metoda "zer i biegunow" kazde ZERO transmitancji powoduje ZWIEKSZENIE nachylenia charakterystyki amplitudowej o 20 decybeli na sekudne
- BIEGUN powoduje ZMNIEJSZENIE
- Rozszerzenie pasma widma sygnalu powoduje jego SZYBSZY przebieg w dziedzinie czasu
- Transformacja Fouriera ZACHOWUJE energie sygnalu
- Szereg Fouriera pozwala rozlozyc funkcje OKRESOWA spelniajaca warunki Dirichleta na sume funkcji trygonoemtrycznych
