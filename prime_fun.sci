function total = prime_fun(n)
   total = 0;
   for i = 2 : n
       prime_number_count = 1;
       
       for j = 2 : sqrt(i)
	if (modulo(i,j) == 0)
	   prime_number_count = 0;
	   break
	end
       end
	
       total = total + prime_number_count
   end
endfunction
