Dado('que eu quero comprar {string} do {string}') do |game, cat|
    @screen.product_list.select(cat)
    @screen.product.go_to(game)
end

Dado('que eu adicionei os seguintes itens no meu carrinho:') do |table|
  products = table.hashes
  products.each do |product|
    @screen.product_list.select(product['categoria'])
    @screen.product.go_to(product['produto'])
    @screen.product.add_to_cart
    @screen.accept_popup
    2.times { @screen.home.go_back }
  end

  # accessibility id	Navegar para cima
  # xpath	//android.widget.ImageButton[@content-desc="Navegar para cima"]

  @screen.home.go_to_cart
  @screen.cart.refresh
end

Quando('adiciono este item no carrinho') do
  @screen.product.add_to_cart
end

Quando('eu finalizo a minha compra com a conta:') do |table|
  @screen.cart.checkout
end

Quando('preciso fazer login para adicionar o produto') do
  @screen.accept_popup
  @screen.login.with(@user[:email], @user[:pass])
  @screen.product.add_to_cart
end

Entao('devo ver o alerta {string}') do |message|
  expect(@screen.popup.text).to eql message
end

Entao('devo ver o alerta: {string}') do |mensagem_esperada|
  sleep 10
end