% --------------------------------------------
% Rede Bayesiana para Diagnóstico do Farol de Bicicleta
% Questão 1.e: P(V = t | Str = snow_covered)
% --------------------------------------------

% Variáveis independentes
0.1::flywheel_worn(t).   % P(FIw = t) = 0.1
0.9::flywheel_worn(f).   % P(FIw = f) = 0.9

% R (Dínamo deslizante) depende de Str e FIw
% -- Como Str = snow_covered é fixo, modelamos apenas P(R | FIw):
0.9::sliding(t) :- flywheel_worn(t).  % P(R=t | FIw=t) = 0.9
0.7::sliding(t) :- flywheel_worn(f).  % P(R=t | FIw=f) = 0.7

% V (Voltagem) depende apenas de R
0.1::voltage(t) :- sliding(t).  % P(V=t | R=t) = 0.1
0.95::voltage(t) :- sliding(f). % P(V=t | R=f) = 0.95

% Consulta principal: P(V = t | Str = snow_covered)
query(voltage(t)).