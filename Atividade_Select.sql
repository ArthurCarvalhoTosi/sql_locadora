1 - Nome do cliente, endereço do cliente, celular, data da locacao, valor da locacao, modelo do carro

SELECT clientes.nome as "Nome do Cliente",clientes.endereco as "Endereço do Cliente", clientes.celular as "Celular do Cliente", locacoes.data as "Data da Locação", lojas.nome as "Nome da Loja", carros.modelo as "Modelo do Carro"
FROM 
clientes, locacoes, lojas, carros 
WHERE 
clientes.id_cliente = locacoes.id_locacao AND locacoes.id_locacao = carros.id_carro AND locacoes.id_locacao = lojas.id_loja;

 
2 - Modelo do carro, marca do carro, km do carro, data da locacao, nome da loja, nome do funcionario e cargo.

SELECT carros.modelo as "Modelo do Carro", carros.marca as "Marca do Carro", carros.km as "KM", locacoes.data as "Data da Locação", lojas.nome as "Nome da Loja", funcionarios.nome as "Nome do Funcionario", cargos.descricao 
FROM 
carros, locacoes, funcionarios, cargos, lojas
WHERE 
carros.id_carro = locacoes.id_locacao AND locacoes.id_locacao = funcionarios.id_funcionario AND cargos.id_cargo = funcionarios.id_funcionario AND locacoes.id_locacao = lojas.id_loja;

3 - Nome do cliente, endereço do cliente, celular, data da locacao, valor da locacao, modelo do carro, quando a forma de pagamento é "Credito".

SELECT clientes.nome as "Nome do Cliente",clientes.endereco as "Endereço do Cliente",clientes.celular as "Celular do Cliente",locacoes.data as "Data da Locação", locacoes.valor as "Valor da Locação", carros.modelo as "Modelo do Carro"
FROM 
clientes, locacoes, carros, tipos_pagamentos
WHERE  
clientes.id_cliente = locacoes.id_locacao AND carros.id_carro = locacoes.id_locacao AND locacoes.id_locacao = carros.id_carro AND tipos_pagamentos.descricao = "Credito";

4 - Nome do funcionario, nome do cliente, nome da loja, data da locacao, modelo do carro, quando o cargo é "gerente".

SELECT funcionarios.nome as "Nome do Funcionario", clientes.nome as "Nome do Cliente", lojas.nome as "Nome da Loja", locacoes.data as "Data da Locação", carros.modelo as "Modelo do Carro"
FROM 
funcionarios,clientes,lojas,carros,cargos, locacoes
WHERE  
clientes.id_cliente = locacoes.id_locacao and funcionarios.id_funcionario = locacoes.id_locacao and lojas.id_loja = locacoes.id_locacao AND locacoes.id_locacao = carros.id_carro AND cargos.descricao = "gerente";


5 - Modelo do carro, marca do carro, km do carro, data da locacao, nome da loja, nome do cliente, quando a cor do carro é "cor_a".

SELECT carros.modelo as "Modelo do Carro",carros.marca as "Marca do Carro", carros.km as "KM",locacoes.data as "Data da Locação",lojas.nome as "Nome da Loja",  clientes.nome as "Nome do Cliente"
FROM 
carros, clientes, lojas, locacoes
WHERE 
clientes.id_cliente = locacoes.id_locacao and carros.id_carro = locacoes.id_locacao and lojas.id_loja = locacoes.id_locacao AND locacoes.id_locacao = carros.id_carro AND carros.cor = "cor_a"