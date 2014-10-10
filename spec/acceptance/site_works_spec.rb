require File.dirname(__FILE__) + '/../acceptance_helper'

describe 'URLs that require login' do  
  context 'the /mystore URL' do
    before :each do
      visit '/'
    end

    it "says Hello" do
#      store = Store.make! :password => 'test123'
#      signin store.email, 'test123'
#      visit '/mystore'
#      selector('#already-have-account').should be_nil
       expect(page).to have_content 'Hello'
    end

    it "has working javascript" do
#      store = Store.make! :password => 'test123'
#      signin store.email, 'test123'
#      visit '/mystore'
#      selector('#already-have-account').should be_nil
       expect(page).to have_content '115'
    end
  end
end
