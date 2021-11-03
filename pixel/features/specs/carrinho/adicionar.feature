#language: pt

Funcionalidade: Adicionar item ao carrinho
    Para que eu possa comprar jogos classicos na loja
    Sendo um usuario cadastrado
    Posso adicionar itens ao carrinho

    @add_game @login @clean_cart
    Cenario: Usuario logado adiciona jogo
        
        Dado que eu quero comprar "F-zero" do "Super Nintendo"
        Quando adiciono este item no carrinho
        Entao devo ver o alerta "Você adicionou F-Zero ao seu carrinho!"

    @clean_cart @temp
    Cenario: Usuario não logado adiciona produto

        Dado que eu quero comprar "Golden Axe" do "Mega Drive"
        Quando adiciono este item no carrinho
        Mas preciso fazer login para adicionar o produto
        Entao devo ver o alerta "Você adicionou Golden Axe ao seu carrinho!"
