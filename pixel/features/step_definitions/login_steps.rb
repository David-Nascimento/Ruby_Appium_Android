Dado('que acesso a tela de login') do
  @screen.home.go_account
end

Quando('eu faco login com {string} e {string}') do |email, pass|
  @screen.login.with(email, pass)
end

Quando('logo sem sucesso {int} vezes') do |tentativas|
  tentativas.times do
    steps %{
      Quando eu faco login com "tony@stark.com" e "pwd123"
  }
    popup = @screen.popup
    expect(popup.displayed?).to be true
    back
  end
end

Quando('faco login na ultima tentaviva') do
  steps %{
      Quando eu faco login com "tony@stark.com" e "pass123"
  }
end

Entao('posso ver a tela minha conta') do
  @screen.home.go_account
  conta = @screen.my_account.view
  expect(conta.displayed?).to be true
end

Entao('devo ver {string} com popup') do |mensagem_esperada|
  popup = @screen.popup
  expect(popup.text).to eql mensagem_esperada
end