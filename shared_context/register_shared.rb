require 'rspec'
require 'watir'
require 'helper'

shared_context 'Register Form' do |register_data|
  let(:method) { @main.methods }
  let(:regression_method) { @main.regression_methods }


  name = register_data['name']
  surname = register_data['surname']
  email = register_data['email']
  password = register_data['password']
  registered = register_data['registered']

  context 'Register user with valid credentials' do
    it 'clicks on Create an account button' do
      method.header_register_click
    end

    it 'enters valid #{name} and #{surname}' do
      method.name_set(name)
      method.surname_set(surname)
      sleep 5
    end

    it 'enters valid #{email} and #{password}' do
      method.email_set(email)
      method.passwords_set(password)
    end

    it 'clicks on Register button' do
      method.register_click
      sleep 5
    end

    it 'verify is user registered' do
      expect(method.registered_alert).to eql registered
    end
  end
end
