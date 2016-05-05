//pi_Leib_parfor.m
clear all
clear
N = 600000;
global par_total;
par_total = 0;

global non_par_total;
non_par_total = 0;

function non_par_total=pi_leib(N)
    global non_par_total;
    for i=1:N
        Denom = 2 * (i-1) + 1;
        Sign = (-1)^(i-1);
        non_par_total = non_par_total + 4 * Sign / Denom;
    end
endfunction

function par_pi_leib(i)
    Denom = 2 * (i-1) + 1;
    Sign  = (-1)^(i-1);
    global par_total;
    par_total = par_total + 4 * Sign / Denom;
endfunction

disp("Using parallelization")
tic; parallel_run(1:N, par_pi_leib); toc
disp(par_total)

disp("Without Using parallelization")
tic; pi_value = pi_leib(N); disp(pi_value); toc
