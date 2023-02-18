# Projeto Pixel
O Projeto Pixel é uma iniciativa que tem como objetivo garantir a qualidade e confiabilidade de uma plataforma de e-commerce, por meio da validação de histórias de usuário com o uso da linguagem Ruby, do framework Appium e da ferramenta Cucumber.

# Introdução
O projeto Pixel visa garantir que uma plataforma de e-commerce seja de alta qualidade, segura e confiável. O uso do Ruby, do Appium e do Cucumber permite que a equipe de desenvolvimento e qualidade trabalhem juntas de forma colaborativa e ágil, oferecendo uma solução completa para validação das histórias de usuário.

# Instalação e Execução
Para executar o projeto Pixel, siga os passos abaixo:

* Clone o repositório em sua máquina local.
* Certifique-se de que o Ruby e o Appium estejam instalados em sua máquina.
* Execute o comando **`bundle install`** para instalar todas as dependências do projeto.
* Execute o comando **`bundle exec cucumber`** para executar todos os testes do projeto.

# Histórias de Usuário
O projeto Pixel inclui cenários de teste para recursos fundamentais de e-commerce, como login, carrinho de compras e checkout. Cada história de usuário é descrita de forma clara e concisa, permitindo que a equipe de desenvolvimento e qualidade tenham uma compreensão clara dos requisitos do projeto.

# Exemplos dos Cenários
```Cucumber
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
```



# Arquitetura do Projeto
O projeto Pixel foi desenvolvido com uma arquitetura de Page Object, que separa as funcionalidades em classes específicas. Isso torna o projeto mais organizado, fácil de entender e de manter. Além disso, essa arquitetura permite que a equipe de qualidade possa desenvolver os testes de maneira mais eficiente.

# Conclusão
Em resumo, o projeto Pixel é uma solução poderosa e completa para validar as histórias de usuário em um ambiente de e-commerce. Com o uso de tecnologias modernas e uma abordagem colaborativa, o projeto oferece uma solução de alta qualidade para garantir a satisfação dos usuários finais e a eficiência da plataforma de e-commerce. Certifique-se de seguir as instruções de instalação e execução para testar o projeto em sua máquina local. Se você encontrar algum problema ou tiver alguma dúvida, não hesite em entrar em contato com a equipe de desenvolvimento e qualidade do projeto Pixel.
