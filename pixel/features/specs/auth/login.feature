#language: pt
Funcionalidade: Login
  Para que eu possa fazer compras de itens cadastrados
  Sendo um usuario cadastrado
  Posso se autenticar pela telade login

  @login_happy
  Cenario: Usuario logado
    Dado que acesso a tela de login
    Quando eu faco login com "tony@stark.com" e "pass123"
    Entao posso ver a tela minha conta

  @login_alt
  Esquema do Cenario: Tentar logar

    Dado que acesso a tela de login
    Quando eu faco login com <email> e <password>
    Entao devo ver <mensagem> com popup

    Exemplos:
      | email                   | password  | mensagem                            |
      | "tony@stark.com"        | "pwd123"  | "Usuário e/ou senha inválidos."     |
      | "david@yahoo.com.br#10" | "pass123" | "Usuário e/ou senha inválidos."     |
      | "tony@stark.com"        | ""        | "Todos os campos são obrigatórios." |
      | ""                      | "pdw123"  | "Todos os campos são obrigatórios." |

    @try_login
  Cenario: efetuar login 3 vezes
    Dado que acesso a tela de login
    Quando logo sem sucesso 3 vezes
    E faco login na ultima tentaviva
    Entao posso ver a tela minha conta