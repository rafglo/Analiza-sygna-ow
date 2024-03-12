function result = Binomial_Coefficient(n, k)
    if n <= k then
        error("Wartość k musi być mniejsza niż n");
    else
        result = factorial(n)/(factorial(k)*factorial(n-k));
    end
endfunction
