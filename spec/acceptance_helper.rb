require File.dirname(__FILE__) + '/spec_helper'
require Sinatra::Application.root + '/../app'
disable :run

require 'capybara'
require 'capybara/dsl'

Capybara.app = Sinatra::Application

RSpec.configure do |config|
  config.include Capybara::DSL
end

# Helpers
def signup store
  visit '/signup'
  fill_in 'email',  :with => store.email
  fill_in 'name',   :with => store.name
  fill_in 'description',  :with => store.description
  fill_in 'location',     :with => store.location
  click 'Create my account'
end

def signin email, password
  visit '/'
  # within('#sign-in') do
    fill_in 'email', :with => email
    fill_in 'password', :with => password
    click 'Sign in'
  # end
end

def selector string
  find :css, string
end