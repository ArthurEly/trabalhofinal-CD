# trabalhofinal-CD
 Repositório do trabalho final de circuitos digitais


03:49 04/04/2023
16:03 04/04/2023
11:03 05/04/2023
11:34 11/04/2023
	
	CONTROLE DO VISOR -------------------------------------------------------------------------------------------------
	
	controle do visor
	-> recebe: 
		registrador de endereco
		registrador de dados

	-> visor mostra:
		em x estado
		dois switchs pra cima: dado q esta no registrador de dados
		dois switchs pra baixo: end q esta no registrador de enderecos


		em y estado 
		mostra outras coisas tb a depender do estado

	-> ou seja, só passa pro registrador do visor o que deve ser visto
		tipo um MUX

	-> usar display de 7 segmentos
		a diferença é que serão dois displays 



	MEMORIA --------------------------------------------------------------------------------------------------

	MEMORIA <3 <3 <3 
		- sinais que a memoria recebe: 
			- write address up
			- write address down
			comportamento: ativado escreve


		- entradas da memoria 
			address_down  (4 bits)
			address_up    (4 bits) 


		- saidas da memoria 
			data_out_down (8 bits)
			data_up_down  (8 bits) 

		mas e a leitura?? 
		ele ta SEMPRE passando dados pro registrador de leitura, mas ele só pega esse dado quando eu coloco READ em 1 
		entao antes ele só nao atualiza o registrador de leitura, deixa antes 

			

	A TAL DA MAQUINA DE ESTADOS --------------------------------------------------------------------------------------------------

	** O contador é quem gera os sinais de MÁQUINA A, MÁQUINA B e MÁQUINA C 
	** entao uma boa parte da lógica de leitura quando swap ou nao vem dela

	MÁQUINA A (Escreve na memória)
		Estado 00 = mensagem de espera 
		Se Estado 00			 -> 	Mensagem D/A (q ja tem no controle do visor)

		Se Estado 00 & confirmaD/A 	 -> 	Load Registrador (data OU address)	(2x pra lembrar q ha dois switchs)
		Se Estado 00 & confirmaD/A 	 -> 	Load Registrador (data OU address)	

		Se Estado 00 & confirmaFuncao 	 -> 	Write Memoria (vindo do Registrador Data)	-> Estado 01
 
		Se Estado 00 & trocaFuncao	 ->	Troca para Máquina B

		[Qualquer outra coisa nao faz nada] 

		Estado 01 = mensagem 'ok blz' 					(preciso clicar em confirma Funcao pra sair)
		Se Estado 01 & confirmaFuncao 	 ->	Estado 00

		[Qualquer outra coisa nao faz nada] 
				

	MÁQUINA B (Lê da memória)
		Estado 00 = mensagem de espera
		Se
		Se Estado 00 & confirmaD/A	 ->	Load Registrador (address)
		Se Estado 00 & confirmaFuncao 	 ->	Read Memoria (para Registrador Data)		-> Estado 01
		Se Estado 00 & troca funcao	 ->	Troca Para Máquina C

		[Qualquer outra coisa nao faz nada] 

		Estado 01 = mostra no visor dado lido!				(preciso clicar em confirma Funcao pra sair)
		Se Estado 01 & confirmaFuncao 	->	Estado 00
		 
		[Qualquer outra coisa nao faz nada] 


	MÁQUINA C (Temido SWAP)
		Estado 00 = mensagem de espera
		Se Estado 00 & confirmaD/A 	 -> 	Load Registrador Address (reg UP ou DOWN)  (registrador depende do switch)
		Se Estado 00 & confirmaD/A 	 -> 	Load Registrador Address (reg UP ou DOWN) 


		Se Estado 00 & confirmaFuncao 	 -> 	Estado 01

		Se Estado 00 & trocaFuncao 	 ->	Troca para Máquina A (isso depende do contadorrrrrrr)

		[Qualquer outra coisa nao faz nada] 
		



		Estado 01 = Busca
						 -> 	Read Memoria (Address 1 para Registrador Data Swap 1)	(na verdade READ só vai pra 1 uma vez, é paralelo)
							- READ --> 1 
							- load_data_up --> 1


		   				 -> 	Read Memoria (Address 2 para Registrador Data Swap 2)
							- READ --> 1 
							- load_data_down --> 1

//read e load nesse caso sao a mesma cois (nao precisa dos dois). pois permite q os regs salvem o valor q estao recebendo continuamente
//ou seja, a flag de load_data_down e data_up continuam
//pq nao usar a mesma flag? pq talvez pras outras máquinas eu precise de up e down
//apos salvar nos dois registradores, a entrada da memória vai começar a receber esses novos dados (que já estao trocados!) --- nao importa

						 ->	Estado 10

		Estado 10 = Escrita
						 -> 	Write Memoria (Data Swap 1 para Address 2)		(lembrar q isso ta acontecendo em paralelo)
							- write_address_down --> 1
							

						 ->	Write Memoria (Data Swap 2 para Address 1)
							- write_address_up --> 1


//na verdade, é um sinal de write só, pois os dados já estao "esperando na porta" da memória. 
//entao, é só dar Write pra memória

//notando que; em outros estados, talvez eu nao precise me preocupar com desabilidar down. pois o reg data down só nao será lido
// --> a lógica toda está ligada ao data up (pensar) 
							

// o que importa é que agora o swap está pronto e posso ir pra mensagem! 

		(e como q eu vou saber que ta vindo o endereco do registrador de swap e nao de outros?)
		(por causa do sinal do contador pra maquina. se tiver no contador 11, é do registrador de swap que vem) 
						
						 ->	Estado 11

		Estado 11 = mensagem 'Swap blz' 
		Se Estado 11 & confirmaFuncao 	 -> 	Estado 00
		
		[Qualquer outra coisa nao faz nada] 



		UNIDADE DE CONTROLE  --------------------------------------------------------------------------------------------------
		
		A troca de máquinas é controlada por um contador com botão
		A contagem atual também é uma saída da unidade de controle

		**MÁQUINA A

			Estados: 
				00 = espera
				01 = mensagem 'ok blz'

			Entradas: 
				- Estado
				- confirmaD/A
				- ConfirmaFuncao
				- trocaFuncao
				//Switchs 8 e 9 (data/endereco)
			
			Saidas: 
				- LOAD_REG (se eh data ou endereco, eu decido la fora!!)
				- write_address_down_A 				
					(usando address down como padrao para quando nao eh swap)
				 	(ter MUX com estado lá fora na ""porta"" da memoria para saber qual sinal de write eu vou considerar)
				- HabilitaContador 
				- sinal p/ controle visor -- mostrar regs      --
				- sinal p/ controle visor -- mensagem 'ok blz' -- 
				- Novo Estado
			
			(e tem como eu só trocar de funcao quando tiver em tal coisa se é no contador q troca?)
			(sim!! usar habilita contador) 


			

		**MÁQUINA B

			Estados: 
				00 = espera
				01 = mostra dado no visor 

			Entradas: 
				- Estado
				- confirmaD/A
				- ConfirmaFuncao 
				- trocaFuncao

			Saidas: 
				- LOAD_REG (sempre de address) 
				- READ_MEM (read data_out_down) (read_data_out_down_B) 
					(pq tipo, qual eu leio? nesse estado eh sempre essa)
					(entao eh só um READ mesmo, o resto eu controlo com o contador e os seus respectivos valores)
				- sinal p/ controle visor -- aguardando --
				- sinal p/ controle visor -- mostrar o dado lido!! -- 
				- HabilitaContador 
				- novo Estado
			


		**MÁQUINA C

			Estados: 
				00 = mensagem de SWAP
				01 = BUSCA
				10 = ESCRITA
				11 = mensagem 'swap blz' 
			
			Entradas: 
				- Estado
				- confirmaD/A
				- ConfirmaFuncao
				- trocaFuncao

			Saidas: 
				- LOAD_REG_SWAP_ADDRESS (sempre de address) (lógica de down ou up sera feita la fora)
					(a logica de de onde eu pego o endereço sera feita la fora)
					(eu sempre to passando pros regs de endereco? e dai eu so faco mux na entrada da memoria de acordo com o contador?) 
					(load data 1... load data 2...? )
				- READ_MEM		
					(leio de up ou down)
				- LOAD_REG_SWAP_DATA (logica de up ou down feita la fora, mas notar que sempre os dois serao lidos)
				- write_address_down_C
				- write_address_up_C
				- sinal p/ controle visor -- aguardando --
				- sinal p/ controle visor -- 'swap blz' -- 
				- Habilita contador
				- novo Estado


			


				
	
		
		
		