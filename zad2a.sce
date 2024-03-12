function s = stirling(n,k)
    if n==k & n>0 then
        s = 1
    elseif n>0 & k==0 then
        s = 0
    elseif n==0 & k ==0 then
        s = 1
    elseif k > n then
        s = 0
    else
        s = (n-1) * stirling(n-1, k) + stirling(n-1, k-1)
    end
endfunction
