-- seleciona a base de dados que será usada
use academia_db;

-- consultas basicas
select * from planos;
select * from alunos;

-- relatório contendo o nome de todos os alunos e o nome do plano
select A.nome AS 'Aluno', P.nome AS 'Plano' -- campos da tabela
from alunos A join planos P -- tabelas vinculadas
ON A.id_plano = P.id; -- vinculo (chave estrangeira +  chave primaria)

-- relatório contendo nome do aluno, data de matricula e nome do plano
select A.nome AS 'Aluno', A.data_matricula AS 'Data de Matricula', P.nome AS 'Plano' -- campos da tabela
from alunos A join planos P -- tabelas vinculadas
ON A.id_plano = P.id; -- vinculo (chave estrangeira +  chave primaria) [cria a nova tabela com as info]

-- relatorio contendo nome do aluno, data de matricuça, nome do plano e valor mensal do mais antigo pro mais novo
select A.nome AS 'Aluno', A.data_matricula AS 'Data de matricula', P.nome AS 'Plano', P.valor_mensal AS 'Valor'
from alunos A join planos P
ON A.id_plano = P.id
order by A.data_matricula ASC; 

-- relatorio contedo o nome do aluno, a data de matrocula, e o valor mensal, com plano trimestral
select A.nome AS 'Aluno', A.data_matricula AS 'Data de matricula', P.valor_mensal AS 'Valor'
from alunos A join planos P
ON A.id_plano = P.id
where P.nome = 'Trimestral'; 

-- relartorio contendo a quantiodade de alunos por plano 
select P.nome AS 'Plano', count(A.nome) AS 'Quantidade'
from alunos a join planos P
on A.id_plano = P.id
group by P.nome;
-- relatorio contendo o peso e a altura media dos alunos por plano
select P.nome as 'Plano', round(avg(A.peso), 2) as 'Peso Médio', round(avg(A.altura), 2) as 'Altura Média' from alunos a join planos P
on A.id_plano = P.id
group by P.nome;

