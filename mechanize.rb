require 'mechanize'
# additionally we can use logger to log mechanize actions
require 'logger'

@website = 'movistar.cl'
agent = Mechanize.new
# additionally configure logger
agent.log = Logger.new "mechanize.log"
# to set proxy
# agent.set_proxy('localhost', '8000')
login_page  = agent.get "http://#@website"
# => #<Mechanize::Page:0x007fa893af5bc0>
print login_page
login_form = login_page.form_with(class: "form_persona")
# or login_page.forms.first
# or login_page.form_with
# or login_form = login_page.form_with(action: '/sessions')
email_field = login_form.field_with(name: "idRut") 
password_field = login_form.field_with(name: "clave") 
email_field.value = '17.598.255-8'
password_field.value = 'po1175461loko'
home_page = login_form.submit
puts home_page
# doc = Nokogiri::HTML(home_page.body)
# home_page = login_form.click_button

