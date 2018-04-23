#language: pt
Funcionalidade: cadastro de usuario
@Cpf
Esquema do Cenario:: Cadastrar usuario com sucesso
  Dado que estou na url "login"
  E preencho todos os campos do <cadastro_pessoa>
  Quando clico no botao "botao_continuar_cadastro"
  Entao valido a presença do elemento "label_nome_cliente"


  Exemplos:
    | cadastro_pessoa |
    | "fisica"   |
    | "juridica" |
