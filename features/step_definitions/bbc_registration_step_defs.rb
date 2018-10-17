Given("I try to register with an invalid password") do
   registration.visit_page
   registration.click_over_age
   registration.fill_day(23)
   registration.fill_month(10)
   registration.fill_year(1990)
   registration.click_date
   registration.fill_email("jimmyneutron@hotmail.com")
   registration.fill_password("password")
   registration.select_gender
   registration.no_thanks
end

When("I submit my details") do
   registration.click_register
end

Then("I receive an error for not having the correct password") do
   expect(registration.invalid_password_message).to include("password isn't valid")
end

Given("I access the bbc registration page") do
   registration.visit_page
end

When("I click on the under {int} button") do |int|
     registration.click_under_age
end

Then("I am redirected to the corresponding page") do
   expect(registration.current_url).to include("https://account.bbc.com/register/details")
end

Given("I try to register as a {int} year old") do |int|
   registration.visit_page
   registration.click_over_age
   registration.fill_day(23)
   registration.fill_month(10)
   registration.fill_year(1868)
end

When("I click the continue button") do
   registration.click_date
end

Then("an error message appears") do
   expect(registration.is_date_invalid?).to be true
end

Given("I try to register with the wrong postcode") do
  registration.visit_page
  registration.click_over_age
  registration.fill_day(23)
  registration.fill_month(10)
  registration.fill_year(1990)
  registration.click_date
  puts "big h"
  registration.fill_post_code("dddd")
  registration.fill_email("jimmyneutron@hotmail.com")
  registration.fill_password("Password1234")
  registration.select_gender
  registration.no_thanks
end

Then("I receive an error for not having the correct postcode") do
  expect(registration.is_postcode_invalid?).to be true
end


Given("I try to register with the wrong email format") do
   registration.visit_page
   registration.click_over_age
   registration.fill_day(23)
   registration.fill_month(10)
   registration.fill_year(1990)
   registration.click_date
   registration.fill_email("jimmyneutron")
   registration.fill_password("Password1234")
   registration.select_gender
   registration.no_thanks
end

Then("I receive an error for not having the correct email format") do
   expect(registration.is_email_invalid?).to be true
end
