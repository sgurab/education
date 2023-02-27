-- tabela com dados de turma, coisas como a etapa de ensiono, qual o tipo da escola e se oferece serviços que incluem pessoas com deficiência
with class_table as (
  SELECT 
    ano
   ,sigla_uf
   ,id_municipio
   ,id_escola
   ,etapa_ensino
   ,tipo_localizacao
   ,tipo_categoria_escola_privada
   ,sinais
   ,braille
  FROM `basedosdados.br_inep_censo_escolar.turma` 
  where sigla_uf = 'SP' and rede = 'privada'
  )

-- tabela de matrícula, com os dados por aluno
, enrollment_table as (
  select 
    * 
  from `basedosdados.br_inep_censo_escolar.matricula`
  where sigla_uf = 'SP'
)

-- tabela com o join por ano e por turma, atribuindo os dados de turma para os alunos
select 
  ano
 ,
