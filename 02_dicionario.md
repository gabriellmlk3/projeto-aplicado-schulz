# Dicionário de Dados

| Tabela | Campo | Tipo | Chave | Aceita nulo | Descrição | Exemplo |
|---|---|---|---|---|---|---|
| tecnico_solicitante | id_tecnico | INTEGER | PK | Não | Código do técnico, gerado automaticamente | 1 |
| tecnico_solicitante | nome_tecnico | TEXT | | Não | Nome do metrologista que fez a calibração | José Alcides Rosa Junior |
| tecnico_solicitante | turno | TEXT | | Sim | Turno do técnico | 2º Turno |
| tecnico_solicitante | solicitante_setor | TEXT | | Não | Setor que pediu a calibração | Usinagem I |
| equipamento | id_equipamento | INTEGER | PK | Não | Código do equipamento, gerado automaticamente | 1 |
| equipamento | codigo_instrumento | TEXT | | Não | Código de identificação do equipamento | 703.1208 |
| equipamento | denominacao | TEXT | | Não | Nome do equipamento | Dispositivo de controle |
| equipamento | fabricante | TEXT | | Não | Fabricante do equipamento (quando não tem, fica "Não consta") | Não consta |
| equipamento | id_padrao_mmc | TEXT | | Não | Código da MMC usada na medição | 500.011 |
| medicao | id_medicao | INTEGER | PK | Não | Código da medição, gerado automaticamente | 1 |
| medicao | id_equipamento | INTEGER | FK | Não | Equipamento que foi medido | 1 |
| medicao | id_tecnico | INTEGER | FK | Não | Técnico que fez a medição | 1 |
| medicao | numero_certificado | TEXT | | Não | Número do certificado | 00091/2026 |
| medicao | data_calibracao | TEXT | | Não | Data da calibração (AAAA-MM-DD) | 2026-08-26 |
| medicao | parametro_avaliado | TEXT | | Não | Característica medida na peça | 62P_DIÂMETRO 1 |
| medicao | valor_nominal | REAL | | Não | Valor nominal da medida, em mm | 6.075 |
| medicao | tolerancia_mais | REAL | | Não | Tolerância superior, em mm | 0.010 |
| medicao | tolerancia_menos | REAL | | Não | Tolerância inferior, em mm | -0.010 |
| medicao | medida_1 | REAL | | Não | Primeira leitura da MMC | 6.0787 |
| medicao | medida_2 | REAL | | Não | Segunda leitura da MMC | 6.0787 |
| medicao | valor_obtido | REAL | | Não | Média das duas leituras | 6.0787 |
| medicao | erro | REAL | | Não | Diferença entre o valor obtido e o nominal | 0.0037 |
| medicao | status_conformidade | TEXT | | Não | Resultado da medição (APROVADO ou REPROVADO) | APROVADO |
| medicao | incerteza_expandida | REAL | | Sim | Incerteza da medição | 0.002 |
| medicao | fator_k | REAL | | Sim | Fator de abrangência usado no cálculo da incerteza | 2.23 |
