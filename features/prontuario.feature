# language: pt
Funcionalidade: Prontuário dos alunos
	Como um orientador pedagógico
	Eu quero visualizar as informações do aluno
	Eu quero registrar o acompanhamento do aluno
	Eu quero registrar conversas com alunos, pais e professores sobre o aluno


	Cenário: Pesquisar do aluno
		Dado que eu esteja na pesquisa de alunos
		E que existem os alunos "Pedro Silva", "Pedro Sousa" e "Pedro Antonio"
		Quando eu pesquiso por "Pedro"
		Então eu devo ver na lista "Pedro Silva", "Pedro Sousa" e "Pedro Antonio"

	Cenário: Exibir informações do aluno sem diagnóstico
		Dado que eu esteja na pesquisa de alunos
		E que exista o aluno com os seguintes dados:
		| Nome        | Diagnóstico | Atendimento especial | Situação familiar |
		| Pedro Silva |             | Reforço              | Mora com a vó     |
		Quando eu pesquiso por "Pedro Silva"
		E seleciono "Pedro Silva" na lista
		Então eu devo ver o aluno com as seguintes infomações:
		| Nome        | Diagnóstico | Atendimento especial | Situação familiar |
		| Pedro Silva |             | Reforço              | Mora com a vó     |
		
	Cenário: Exibir informações do aluno com diagnóstico
		Dado que eu esteja na pesquisa de alunos
		E que exista o aluno com os seguintes dados:
		| Nome       | Diagnóstico     | Atendimento especial | Situação familiar |
		| João Silva | Alto grau asper | Psicólogo            | Mora com os pais  |
		Quando eu pesquiso por "João Silva"
		E seleciono "João Silva" na lista
		Então eu devo ver o aluno com as seguintes infomações:
		| Nome       | Diagnóstico     | Atendimento especial | Situação familiar |
		| João Silva | Alto grau asper | Psicólogo            | Mora com os pais  |
		
	Cenário: Alterar o diagnóstico do aluno
		Dado que eu esteja na pesquisa de alunos
		E que exista o aluno com os seguintes dados:
		| Nome          | Diagnóstico | Atendimento especial | Situação familiar |
		| Daniel Amorim | Asper       | Psicólogo            | Mora com os pais  |
		Quando eu pesquiso por "Daniel Amorim"
		E seleciono "Daniel Amorim" na lista
		E altero o diagnóstico para "Alto grau asper"
		E salvo as informações do aluno
		Então eu devo ver o aluno com as seguintes informações:
		| Nome          | Diagnóstico     | Atendimento especial | Situação familiar |
		| Daniel Amorim | Alto grau asper | Psicólogo            | Mora com os pais  |
		