USE academia_db;

select * from planos;
select * from alunos;
-- conta a quantidade de alunos totais matriculados

select count(*) as 'Quantidade de Aluno'
from alunos;

-- descobre o faturamento mesal da academia
select sum(valor_mensal) * 12 as 'Faturamento Mensal'
from planos;

-- descobre o peso medio o maior e menor peso dos alunos
select round(avg(peso), 2) as 'Peso Médio',
		max(peso) as 'Maior Peso',
        min(peso) as 'Menor Peso'
from alunos;

-- descobre a altura media o maior e menor altura dos alunos
select round(avg(altura), 2) as 'Altura Média',
		max(altura) as 'Altura Peso',
        min(altura) as 'Altura Peso'
from alunos;

-- pega o maximo e minimo da data dos usuarios
select max(data_matricula) as 'Ultima Matricula',
        min(data_matricula) as 'Primeira Matricula'
from alunos;

-- qual a altura media para as pessoa de cada plano da academia
-- Descobre a altura media dos alunos por plano
select id_plano, round(avg(altura), 2) as 'Altura Média'
from alunos
group by id_plano;

-- qual o maior e menor peso de cada plano
select id_plano, max(peso) as 'Maior Peso',
        min(peso) as 'Menor Peso'
from alunos
group by id_plano;

-- um calculo que fala quantas pessoa tem em cada plano nascidas apartir dos anos 2000
select id_plano, count(*) as 'Quantidade de Alunos'
from alunos
where data_nascimento >= '2000-01-01'
group by id_plano;

-- DESAFIO:
-- EXIBA O MAIOR E MENOR VALOR DOS PLANOS DE ACADEMIA
select id, max(valor_mensal) as 'Maior Valor',
				 min(valor_mensal) as 'Menor Valor'
from planos
group by id;


-- EXIBA O VALOR MEDIA DOS PLANOS DE ACADEMIA
select id, round((valor_mensal), 2) as 'Valor Medio'
from planos
group by id;

-- EXIBA A QUANTIDADE DE ALUNOS COM PESO MAIOR OU IGUAL A 70
select count(*) as 'Quantidade de Aluno'
from alunos
where peso >= 70.00;

-- EXIBA A ALTURA MEDIA DOS ALUNOS DO PLANO MENSAL
select round(avg(altura), 2) as 'Altura Media - P.M'
from alunos
where id_plano = 2;

-- EXIBA O PESO MEDIO DOS ANOS DO PLANO TRIMESTRAL E ANUAL
select id_plano, round(avg(altura), 2) as 'Altura Media'
from alunos
where id_plano >= 2 
group by id_plano;