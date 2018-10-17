require "capybara"
require_relative "pages/bbc_homepage.rb"
require_relative "pages/bbc_sign_in_page.rb"
require_relative "pages/registration_page.rb"

module BBCSite

  def bbc_homepage
    BBCHomepage.new
  end

  def bbc_sign_in_page
    BBCSignInPage.new
  end

  def registration
    RegistrationPage.new
  end
end
