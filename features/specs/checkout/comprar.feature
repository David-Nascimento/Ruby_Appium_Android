#language: pt
@login @clean_cart
Funcionalidade: Finalizar Comprar
    Para que eu possa receber os produtos em minha casa
    Sendo um usuario que possui itens no carrinho
    Posso finalizar a compra de jogos ou consoles.

        @checkout
    Cenario: Pagar com PayPal

        Dado que eu adicionei os seguintes itens no meu carrinho:
            | categoria | produto |
            | Super Nintendo | F-Zero |
        Quando eu finalizo a minha compra com a conta:
            | email | test@qaninja.io |
            | senha | qaninja123456   |
        Entao devo ver o alerta: "Você pagou seu pedido atravez do PayPal! Entregaremos sua encomenda o mais rápido possível!"