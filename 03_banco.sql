PRAGMA foreign_keys = ON;

CREATE TABLE IF NOT EXISTS tecnico_solicitante (
    id_tecnico INTEGER PRIMARY KEY AUTOINCREMENT,
    nome_tecnico TEXT NOT NULL,
    turno TEXT,
    solicitante_setor TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS equipamento (
    id_equipamento INTEGER PRIMARY KEY AUTOINCREMENT,
    codigo_instrumento TEXT NOT NULL UNIQUE,
    denominacao TEXT NOT NULL,
    fabricante TEXT NOT NULL DEFAULT 'Não consta',
    id_padrao_mmc TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS medicao (
    id_medicao INTEGER PRIMARY KEY AUTOINCREMENT,
    id_equipamento INTEGER NOT NULL,
    id_tecnico INTEGER NOT NULL,
    numero_certificado TEXT NOT NULL,
    data_calibracao TEXT NOT NULL,
    parametro_avaliado TEXT NOT NULL,
    valor_nominal REAL NOT NULL,
    tolerancia_mais REAL NOT NULL,
    tolerancia_menos REAL NOT NULL,
    medida_1 REAL NOT NULL,
    medida_2 REAL NOT NULL,
    valor_obtido REAL NOT NULL,
    erro REAL NOT NULL,
    status_conformidade TEXT NOT NULL CHECK (status_conformidade IN ('APROVADO', 'REPROVADO')),
    incerteza_expandida REAL,
    fator_k REAL,
    FOREIGN KEY (id_equipamento) REFERENCES equipamento(id_equipamento) ON DELETE CASCADE,
    FOREIGN KEY (id_tecnico) REFERENCES tecnico_solicitante(id_tecnico) ON DELETE RESTRICT
);

INSERT INTO tecnico_solicitante (nome_tecnico, turno, solicitante_setor)
VALUES ('José Alcides Rosa Junior', '2º Turno', 'Usinagem I');

INSERT INTO equipamento (codigo_instrumento, denominacao, fabricante, id_padrao_mmc)
VALUES ('703.1208', 'Dispositivo de controle', 'Não consta', '500.011');

INSERT INTO medicao (
    id_equipamento, id_tecnico, numero_certificado, data_calibracao, parametro_avaliado,
    valor_nominal, tolerancia_mais, tolerancia_menos, medida_1, medida_2,
    valor_obtido, erro, status_conformidade, incerteza_expandida, fator_k
) VALUES
(1, 1, '00091/2026', '2026-08-26', 'PLANICIDADE_REF', 0.000, 0.050, 0.000, 0.0022, 0.0023, 0.00225, 0.00225, 'APROVADO', 0.002, 2.23),
(1, 1, '00091/2026', '2026-08-26', '62P_DIÂMETRO 1', 6.075, 0.010, -0.010, 6.0787, 6.0787, 6.0787, 0.0037, 'APROVADO', 0.002, 2.23);
