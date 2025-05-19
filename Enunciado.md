# IA-Trabalho-RaciocinioProb

Um sistema de diagnóstico deve ser feito para um farol de bicicleta movido a dínamo
usando uma rede bayesiana. As variáveis na tabela a seguir são fornecidas

![Image](https://github.com/user-attachments/assets/dbb96dff-8b97-4be9-ba1a-c5d179befd63)

As seguintes variáveis são independentes aos pares: Str, Flw, B, K. Além disso: (R, B), (R, K), (V,
B), (V, K) são independentes e a seguinte equação é válida:


- P(Li | V, R) = P(Li | V) 
- P(V | R, Str) = P(V | R)  
- P(V | R, Flw) = P(V | R) 



![image](https://github.com/user-attachments/assets/7e2475f1-020b-48aa-9faa-fe239b417895)


# 1a Questão

(a) Desenhe a rede causalidade entre as variáveis
Str, Flw, R, V, B, K e Li

(b) Insira todos os CPTs faltantes no gráfico (tabela
de probabilidades condicionais).

(c) Insira livremente valores plausíveis para as
probabilidades.

(d) Mostre que a rede não contém uma aresta (Str, Li).

(e) Calcule P (V | Str = snow_covered)

# 2a Questão 

Implemente em ProbLog o problema da questão anterior e moste a solução para
1a(e). Se baseie no exemplo em (https://dtai.cs.kuleuven.be/problog/tutorial/basic/02_bayes.html)
