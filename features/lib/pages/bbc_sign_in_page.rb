require "capybara"

class BBCSignInPage
  SIGN_IN_PAGE_URL = "https://account.bbc.com/signin"
  include Capybara::DSL

  def visit_page
    visit(SIGN_IN_PAGE_URL)
  end

  def fill_username(name)
    fill_in("name", with: name)
  end

  def fill_password(name)
    fill_in("password", with: name)
  end

  def print_name
    find('#user-identifier-input').value
  end

  def print_password
    find('#password-input').value
  end

  def print_password_error
    find('#form-message-password').text
  end

  def click_sign_in_button
    find('#submit-button').click
  end

  def getURL
    current_url
  end

end
