require_relative 'android/screens'

class DroidScreens
  attr_accessor :home, :login, :my_account

  def initialize
    @home = Home.new
    @login = Login.new
    @my_account = MyAccout.new
  end
end