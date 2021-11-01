Dado('que eu quero comprar {string} do {string}') do |game, cat|
    @screen.product_list.select(cat)
    @screen.product.go_to(game)
end

Quando('adiciono este item no carrinho') do
  @screen.product.add_to_cart
end

Quando('preciso fazer login para adicionar o produto') do
  @screen.accept_popup
  @screen.login.with(@user[:email], @user[:pass])
  @screen.product.add_to_cart
end

Entao('devo ver o alerta {string}') do |message|
  expect(@screen.popup.text).to eql message
end
