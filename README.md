# Diagnóstico do Farol de Bicicleta via Rede Bayesiana

**Aluno:** Guilherme Sahdo Maciel  
**Matrícula:** 22250363  
**Disciplina:** Inteligência Artificial (2º Trabalho)  
**Professor:** Edjard Mota  

---

## Objetivo
Implementar uma rede bayesiana em ProbLog para modelar o sistema de diagnóstico de um farol de bicicleta movido a dínamo, calculando a probabilidade de geração de voltagem (`V`) dado que a rua está coberta de neve (`Str = snow_covered`).

---

## Estrutura da Rede Bayesiana
### Variáveis e Dependências
| Variável | Descrição | Pais | Valores |
|----------|-----------|------|---------|
| `Str`    | Condição da rua | - | `dry`, `wet`, `snow_covered` |
| `FIw`    | Volante do dínamo desgastado | - | `t` (true), `f` (false) |
| `R`      | Dínamo deslizando | `Str`, `FIw` | `t/f` |
| `V`      | Voltagem gerada | `R` | `t/f` |
| `B`      | Lâmpada ok | - | `t/f` |
| `K`      | Cabo ok | - | `t/f` |
| `Li`     | Luz ligada | `V`, `B`, `K` | `t/f` |

### Independências
- `Li` depende apenas de `V`, `B`, e `K` (não diretamente de `Str` ou `R`).
- `V` depende apenas de `R` (não diretamente de `Str` ou `FIw`).

---

## Tabelas de Probabilidade Condicional (CPTs)
As CPTs foram definidas com base em critérios realistas:

### Variáveis Raiz
| Variável | Valores | Probabilidade |
|----------|---------|---------------|
| `Str`    | `snow_covered` | 0.1 |
| `FIw`    | `t` | 0.1 |
| `B`      | `t` | 0.95 |
| `K`      | `t` | 0.95 |

### Variáveis com Dependências
| Variável | Pais | `P(Variável = t \| Pais)` |
|----------|------|---------------------------|
| `R`      | `Str = snow_covered`, `FIw = t` | 0.9 |
| `R`      | `Str = snow_covered`, `FIw = f` | 0.7 |
| `V`      | `R = t` | 0.1 |
| `V`      | `R = f` | 0.95 |

## Questão 1.e
Cálculo de \( P(V = t \mid Str = \text{snow\_covered}) \) para um farol de bicicleta movido a dínamo.

### Resultado Esperado
P(voltage(t)) = 0.338 % (33.8%)
