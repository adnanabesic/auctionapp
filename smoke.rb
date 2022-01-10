require 'rspec'
require 'watir'

describe 'Smoke Test Cases: ' do
    before :all do
        @browser = Watir::Browser.new :firefox
        @browser.window.maximize
        @browser.goto('https://auction-app-abh-internship.herokuapp.com/')
    end

    after :all do
        @browser.close
    end

    context 'Login with valid credentials' do

        it 'clicks on Sign in button' do
            @browser.a(class: 'Header_login__zfh4r').click
        end

        it 'enters valid username and password' do
            @browser.input(name: 'email').set 'adnanabesic@gmail.com'
            @browser.input(name: 'password').set 'AuctionApp!'
        end

        it 'clicks on Sign in button' do
            @browser.button(class: 'Forms_formSubmitButton__2QwHn').click
            sleep 5
        end   

        it 'verify is user logged in' do
            expect(@browser.a(class: 'Header_logout__1HHzG').text).to eql('Log Out')
        end
    end

    context 'Select Item from New Arrivals' do

        it 'clicks on New Arrivals section ' do
            @browser.li(class: 'tab-list-item tab-list-active').click
        end 

        it 'select item' do
            @browser.a(href: '/items/9').click
            sleep 3
        end

        it 'verify that item is selected ' do
            expect(@browser.h3.text).to eql('iPhone 7 plus')
        end
    end

    context 'Verify the successfull biding' do

        it 'checks value of the highest bid, increases it and sets increased bid' do
            price = @browser.element(xpath: "//p[contains(text(), 'Highest bid')]/span").inner_html
            
            price.slice!(0)
            price2 = price.to_i + 1
            @browser.input(class: 'ItemOverview_bidInput__3ic45').set price2
        end

        it 'clicks on place bid' do
            @browser.button(class: 'ItemOverview_bidButton__B8KhK btn btn-outline-*').click
        end

        it 'verify is user logged in' do
            expect(@browser.div(class: 'ItemOverview_bidMessageHeaderSuccess__bDqOb').text).to eql('Congrats! You are the highest bidder!')
        end
    end
end