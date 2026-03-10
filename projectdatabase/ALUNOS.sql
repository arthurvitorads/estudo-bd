create table alunos (
  id        BIGSERIAL PRIMARY KEY,
  nome      TEXT NOT NULL,
  email     TEXT NOT NULL,
  curso     TEXT,
  ativo     BOOLEAN DEFAULT TRUE,
  criado_em TIMESTAMPTZ DEFAULT NOW()
);

-- inserts

insert into alunos (id, nome, email, curso) 
values (2063, 'Arthur', 'arthur@mail.com', 'ADS');

insert into alunos (id, nome, email, curso) 
values (2065, 'Miguel', 'miguel@mail.com', 'ADS');

INSERT INTO alunos (nome, email, curso, ativo)
VALUES
 ('Ana Silva', 'ana.silva@email.com', 'ADS', TRUE),
 ('Bruno Costa', 'bruno.costa@email.com', 'ADS', TRUE),
 ('Carla Mendes', 'carla.mendes@email.com', 'ADS', FALSE),
 ('Diego Santos', 'diego.santos@email.com', 'ADS', TRUE),
 ('Elena Rocha', 'elena.rocha@email.com', 'ADS', TRUE);

select *
  from alunos;

-- Todos os alunos
SELECT * FROM alunos;
-- Apenas alunos ativos
SELECT nome, email
FROM alunos
WHERE ativo = TRUE;
-- Ordenando por nome
SELECT * FROM alunos
ORDER BY nome ASC;
-- Contando registros
SELECT COUNT(*) AS total
FROM alunos;
-- Filtrando por nome parcial
SELECT * FROM alunos
WHERE nome ILIKE '%silva%';
