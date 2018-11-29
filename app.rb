require('sinatra')
require('sinatra/reloader')
require 'pry'
also_reload('lib/**/*.rb')
require('./lib/contacts')

get('/') do

  erb(:input)
end

post('/') do
  user_first_name = params.fetch("new-first-name")
  user_last_name = params.fetch("new-last-name")
  user_number = params.fetch("new-phone-number")
  contact = Contact.new({:firstname => user_first_name, :lastname => user_last_name, :phonenumber => user_number})
  @address_book = contact.save
  @address_book = Contact.all
  erb(:input)
end

get('/output/:id') do
  uid = params[:id].to_i
  @contact = Contact.find(uid)
  erb(:output)
end
