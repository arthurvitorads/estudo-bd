create table disciplinas (
  id             BIGSERIAL PRIMARY KEY,
  nome           TEXT NOT NULL,
  carga_horaria  int8 NOT NULL,
  obrigatoria    BOOLEAN DEFAULT FALSE
);

INSERT INTO disciplinas (nome, carga_horaria, obrigatoria)
VALUES
 ('Banco de Dados', 10, FALSE),
 ('Programação Web', 22, TRUE),
 ('Engenharia de Software', 35, TRUE);

 select *
  from disciplinas
 where 1 = 1   
   and obrigatoria = true
 order by carga_horaria desc;