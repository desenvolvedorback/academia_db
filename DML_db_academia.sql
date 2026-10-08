USE academia_db;

INSERT INTO planos (nome, valor_mensal, duracao_meses, descricao) VALUES
('Mensal', 120.00, 1, 'Musculação mensal'),
('Trimestral', 105.00, 3, 'Musculação e aulas coletivas trimestral'),
('Anual', 90.00, 12, 'Musculação e aulas coletivas anual');


INSERT INTO alunos (id_plano, nome, cpf, data_nascimento, data_matricula, peso, altura) VALUES 
(1, 'Lucas Martins', '101.202.303-40', '2004-03-15', '2026-01-10', 72.50, 1.78),
(1, 'Juliana Costa', '202.303.404-51', '1998-07-22', '2026-02-03', 58.30, 1.62),
(1, 'Rafael Barbosa', '303.404.505.62', '2001-11-05', '2026-03-18', 85.10, 1.83),
(1, 'Beatriz Rocha', '404.505.606.73', '2006-01-30', '2026-05-07', 54.80, 1.60),
(2, 'Gabriel Lopes', '505.606.707-84', '1995-09-12', '2026-01-22', 90.40, 1.80),
(2, 'Larissa Cardoso', '606.707.808-95', '2000-04-08', '2026-02-14',63.20, 1.68),
(2, 'Thiago Nunes', '707.808.909-06', '1989-12-19', '2026-04-02', 78.90, 1.75),
(2, 'Mariana Teixeira', '808.909.010-17', '2003-06-25', '2026-06-11', 61.00, 1.65),
(3, 'Felipe Dias', '909.010.121-28', '1992-02-14', '2026-01-05', 95.70, 1.88),
(3, 'Isabela Pinto', '010.121.232-39', '1997-08-03', '2026-03-09', 56.40, 1.58),
(3, 'Rodrigo Freitas', '121.232.343-40', '1985-05-27', '2026-05-20', 82.30, 1.72),
(3, 'Letícia Monteiro', '232.343.454-51', '2002-10-16', '2026-07-01', 67.60, 1.70);