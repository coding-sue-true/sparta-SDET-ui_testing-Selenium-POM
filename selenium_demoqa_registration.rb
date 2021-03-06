require 'selenium-webdriver'

class SeleniumDemoReg

  # page_url
  PAGE_URL = 'http://demoqa.com/registration/'
  # Page field
  FIRST_NAME_FIELD = 'name_3_firstname' #id
  LAST_NAME_FIELD = 'name_3_lastname' #id
  MARITAL_STATUS = ['single', 'married', 'divorced'] #class
  HOBBY_STATUS = ['cricket', 'dance', 'reading'] #value
  COUNTRY_DROP_DOWN_LIST = 'dropdown_7'# id
  DOB_MONTH_DROPDOWN_LIST = 'mm_date_8'# id
  DOB_DAY_DROPDOWN_LIST = 'dd_date_8'# id
  DOB_YEAR_DROPDOWN_LIST = 'yy_date_8' # id
  PHONE_NUMBER_FIELDS =  'phone_9'# id
  USERNAME_FIELD =  'username'# id
  EMAIL_FIELD =  'email_1'# id
  PROFILE_PICTURE_BUTTON =  'profile_pic_10'# id
  DESCRIPTION_FIELD =  'description'# id
  PASSWORD_FIELD = 'password_2'# id
  CONFIRM_PASSWORD_FIELD =  'confirm_password_password_2'# id
  SUBMIT_BUTTON = 'pie_submit'# name
  REGISTRATION_CONFIRMATION = 'piereg_message'#class

  def initialize
    @chrome_driver = Selenium::WebDriver.for :chrome
  end

  def access_registration_form
    @chrome_driver.get(PAGE_URL)
  end

  def current_url
    @chrome_driver.current_url
  end

  def set_first_name_field(first_name)
    @chrome_driver.find_element(:id, FIRST_NAME_FIELD).send_keys(first_name)
  end

  def get_first_name_field_value
    @chrome_driver.find_element(:id, FIRST_NAME_FIELD)['value']
  end

  def first_name_field_displayed
    @chrome_driver.find_element(:id, FIRST_NAME_FIELD).displayed?
  end

  def set_last_name_field(last_name)
    @chrome_driver.find_element(:id, LAST_NAME_FIELD).send_keys(last_name)
  end

  def get_last_name_field_value
    @chrome_driver.find_element(:id, LAST_NAME_FIELD)['value']
  end

  def last_name_field_displayed
    @chrome_driver.find_element(:id, LAST_NAME_FIELD).displayed?
  end

  def select_marital_option(option)
    ran_num = rand(2)
    status = @chrome_driver.find_elements(:name, "radio_4[]")
    status.each do |stat|
      if stat['value'] == MARITAL_STATUS[ran_num]
        stat.click
        return stat.selected?
      end
    end
  end

  def select_hobby_option(option)
    ran_num = rand(2)
    status = @chrome_driver.find_elements(:name, "checkbox_5[]")
    status.each do |stat|
      if stat['value'] == HOBBY_STATUS[ran_num]
        stat.click
        return stat.selected?
      end
    end
  end

  def get_selected_country
    @chrome_driver.find_element(:id, COUNTRY_DROP_DOWN_LIST)['value']
  end

  def country_dropdown_list_select(country)
    country_selec = @chrome_driver.find_element(:id, COUNTRY_DROP_DOWN_LIST)
    select = country_selec.find_element(:id, COUNTRY_DROP_DOWN_LIST)
    all_options = select.find_elements(:tag_name => 'option')
    all_options.each do |option|
      if option.text == country
        option.click
        return option.selected?
      end
    end
  end

  def dob_month_list_select(month_value)
    dob_month = @chrome_driver.find_element(:id, DOB_MONTH_DROPDOWN_LIST)
    select = dob_month.find_element(:id, DOB_MONTH_DROPDOWN_LIST)
    all_options = select.find_elements(:tag_name => 'option')
    all_options.each do |option|
      if option.text == month_value
        option.click
        return option.selected?
      end
    end
  end

  def dob_day_list_select(day_value)
    dob_day = @chrome_driver.find_element(:id, DOB_DAY_DROPDOWN_LIST)
    select = dob_day.find_element(:id, DOB_DAY_DROPDOWN_LIST)
    all_options = select.find_elements(:tag_name => 'option')
    all_options.each do |option|
      if option.text == day_value
        option.click
        return option.selected?
      end
    end
  end

  def dob_year_list_select(year_value)
    dob_year = @chrome_driver.find_element(:id, DOB_YEAR_DROPDOWN_LIST)
    select = dob_year.find_element(:id, DOB_YEAR_DROPDOWN_LIST)
    all_options = select.find_elements(:tag_name => 'option')
    all_options.each do |option|
      if option.text == year_value
        option.click
        return option.selected?
      end
    end
  end

  def set_phone_number_field(phone_number)
    @chrome_driver.find_element(:id, PHONE_NUMBER_FIELDS).send_keys(phone_number)
  end

  def get_phone_number_field_value
    @chrome_driver.find_element(:id, PHONE_NUMBER_FIELDS)['value']
  end

  def set_user_name_field(user_name)
    @chrome_driver.find_element(:id, USERNAME_FIELD).send_keys(user_name)
  end

  def get_user_name_field_value
    @chrome_driver.find_element(:id, USERNAME_FIELD)['value']
  end

  def set_email_field(email)
    @chrome_driver.find_element(:id, EMAIL_FIELD).send_keys(email)
  end

  def get_email_field_value
    @chrome_driver.find_element(:id, EMAIL_FIELD)['value']
  end

  def set_about_yourself_field(details)
    @chrome_driver.find_element(:id, DESCRIPTION_FIELD).send_keys(details)
  end

  def get_about_yourself_value
    @chrome_driver.find_element(:id, DESCRIPTION_FIELD)['value']
  end

  def set_password_field(password)
    @chrome_driver.find_element(:id, PASSWORD_FIELD).send_keys(password)
  end

  def get_password_value
    @chrome_driver.find_element(:id, PASSWORD_FIELD)['value']
  end

  def set_confirmation_password_field(password)
    @chrome_driver.find_element(:id, CONFIRM_PASSWORD_FIELD).send_keys(password)
  end

  def get_confirmation_password_value
    @chrome_driver.find_element(:id, CONFIRM_PASSWORD_FIELD)['value']
  end

  def click_submit
    @chrome_driver.find_element(:name, SUBMIT_BUTTON).click
  end

  def check_registration_successful
    @chrome_driver.find_element(:class, REGISTRATION_CONFIRMATION).displayed?
  end
end

rspec_practice = SeleniumDemoReg.new
# rspec_practice.access_registration_form
# rspec_practice.click_submit
