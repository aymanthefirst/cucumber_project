require "capybara"

class RegistrationPage
  include Capybara::DSL
  SIGN_IN_PAGE_URL = "https://account.bbc.com/register"

  def visit_page
    visit(SIGN_IN_PAGE_URL)
  end

  def click_over_age
    find('[aria-label="13 or over"]').click
  end

  def click_under_age
    find('[aria-label="Under 13"]').click
  end

  def fill_day(day)
    fill_in("day-input", with: day)
  end

  def fill_month(month)
    fill_in("month-input", with: month)
  end

  def fill_year(year)
    fill_in("year-input", with: year)
  end

  def click_date
    find("#submit-button").click
  end

  def fill_email(email)
    fill_in("user-identifier-input", with: email)
  end

  def fill_password(password)
    fill_in("password-input", with: password)
  end

  def fill_post_code(postcode)
    fill_in("postcode-input", with: postcode)
  end

  def select_gender
    select("Male", from: "gender-input")
  end

  def no_thanks
    find("#marketingOptIn").click
  end

  def click_register
    find("#submit-button").click
  end

  def invalid_password_message
    find("#form-message-password").text
  end

  def is_date_invalid?
    find("#form-message-dateOfBirth").text.include? "Sorry"
  end

  def is_postcode_invalid?
    find("#form-message-postcode").text.include? "Sorry"
  end

  def is_email_invalid?
    find("#form-message-email").text.include? "Sorry"
  end


end
