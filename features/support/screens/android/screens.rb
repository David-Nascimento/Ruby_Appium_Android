class Login
  def with(email, password)
    find_element(id: "qaninja.com.pixel:id/usernameTxt").send_keys(email)
    find_element(id: "qaninja.com.pixel:id/passwordTxt").send_keys(password)
    find_element(id: "qaninja.com.pixel:id/loginButt").click
  end
end

class Home
  attr_reader :menu

  def initialize
    @menu = "qaninja.com.pixel:id/ibnt_icon_iv"
  end

  def go_back
    find_element(accessibility_id: "Navegar para cima").click
  end

  def go_account
    find_element(id: "qaninja.com.pixel:id/accountButt").click
  end

  def go_to_home
    find_elements(id: @menu)[0].click
  end

  def go_to_wish
    find_elements(id: @menu)[1].click
  end

  def go_to_cart
    find_elements(id: @menu)[2].click
  end

  def go_to_contact
    find_elements(id: @menu)[3].click
  end
end

class MyAccount
  def view
    find_element(id: "qaninja.com.pixel:id/account")
  end
end

class Product
  def go_to(product)
    find_elements(id: "qaninja.com.pixel:id/cpProdNameTxt").text(product).click
  end

  def add_to_cart
    find_element(id: "qaninja.com.pixel:id/pdAddToCartButt").click
  end
end

class ProductList
  def select(product)
    find_elements(id: "qaninja.com.pixel:id/cCatNameTxt").text(product.upcase!).click
  end
end

class Cart
  def refresh
    find_element(id: "qaninja.com.pixel:id/refreshButt").click
  end

  def checkout
    find_element(id: "qaninja.com.pixel:id/cartCheckoutButt").click
  end
end