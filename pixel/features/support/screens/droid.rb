require_relative 'android/screens'

class DroidScreens
  attr_accessor :home, :login, :my_account, :product, :product_list

  def initialize
    @home = Home.new
    @login = Login.new
    @my_account = MyAccount.new
    @product_list = ProductList.new
    @product = Product.new
  end

  def popup
    find_element(id: "android:id/message")
  end

  def accept_popup
    find_element(id: "android:id/button1").click
  end
end