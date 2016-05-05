function non_parfft(a):
    B=fft(a)
endfunction

function parfft(a):
    B=fft(a)
endfunction

disp("Using non par fft function");
tic; non_parfft(1:0.01:100000); toc
disp("Using parfft function");
tic; parfft(1:0.01:100000); toc
