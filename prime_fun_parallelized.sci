// based on John Burkadt's PRIME FUN code from PSVN's sample codes
clear all
clear 
clc
global total;
total = 0;

function t = par_prime_fun(n)
   t = nnz(parallel_run(2:n, inner))
   
endfunction

function is_prime=inner(i)
       is_prime = 1;
       
       for j=2:sqrt(i)
	if (modulo(i,j) == 0) then
	   is_prime = 0;
	   break
	end
       end
      
       return is_prime
endfunction
