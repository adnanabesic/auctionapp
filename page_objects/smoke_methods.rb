require_relative "../spec/helper"

class Methods < HomePage
  def goto_abh_app
    @browser.goto("https://auction-app-abh-internship.herokuapp.com/")
  end

  #actions

  def header_click
    header.click
  end

  def header_register_click
    header_register.click
  end

  def name_set(firstname)
    name.set firstname
  end

  def surname_set(lastname)
    surname.set lastname
  end

  def email_set(mail)
    email.set mail
  end

  def passwords_set(password)
    passwords.set password
  end

  def sign_in_click
    sign_in.click
  end

  def register_click
    register.click
  end

  def registered_alert
    @browser.div(class: "alert alert-success").inner_html
  end

  def logged_in_text
    logged_in.text
  end

  def header_login_in
    header.text
  end

  def new_arrival_click
    new_arrival.click
  end

  def select_item_click
    select_item.click
  end

  def selected_item_text
    selected_item.text
  end

  def price_value
    @browser.element(xpath: "//p[contains(text(), 'Highest bid')]/span").inner_html
  end

  def bid_input_set(price)
    bid_input.set price
  end

  def click_bid
    bid.click
  end

  def verify_bidder
    bidder.text
  end

  def search_text_set(keyword)
    search_containter.set keyword
  end

  def shop_click
    select_shop.click
  end

  def clothes_click
    clothes.click
  end

  def sweaters_click
    sweaters.click
  end

  def active_filters_text
    active_filters.text
  end

  def shoes_click
    shoes.click
  end

  def shirts_click
    shirts.click
  end

  def trousers_click
    trousers.click
  end

  def hats_click
    hats.click
  end

  def minPrice_set(min)
    minPrice.set min
  end

  def maxPrice_set(max)
    maxPrice.set max
  end

  private

  def header
    @browser.a(class: "Header_login__zfh4r")
  end

  def header_register
    @browser.a(class: "Header_register__3rjSu")
  end

  def name
    @browser.input(name: "name")
  end

  def surname
    @browser.input(name: "surname")
  end

  def email
    @browser.text_field(name: "email")
  end

  def passwords
    @browser.text_field(name: "password")
  end

  def sign_in
    @browser.button(class: "Forms_formSubmitButton__2QwHn")
  end

  def register
    @browser.button(class: "Forms_formSubmitButton__2QwHn")
  end

  def logged_in
    @browser.a(class: "Header_logout__1HHzG")
  end

  def new_arrival
    @browser.li(class: "tab-list-item tab-list-active")
  end

  def select_item
    @browser.a(href: "/items/9")
  end

  def selected_item
    @browser.h3
  end

  def bid_input
    @browser.text_field(class: "ItemOverview_bidInput__3ic45")
  end

  def bid
    @browser.button(class: "ItemOverview_bidButton__B8KhK btn btn-outline-*")
  end

  def bidder
    @browser.div(class: "ItemOverview_bidMessageHeaderSuccess__bDqOb")
  end

  def search_containter
    @browser.input(class: "Navbar_searchBar__15H_R")
  end

  def select_shop
    @browser.a(href: "/shop/0")
  end

  def clothes
    @browser.span(class: "Category_collapseIcon__26lw8")
  end

  def sweaters
    @browser.input(value: "2")
  end

  def shoes
    @browser.input(value: "3")
  end

  def shirts
    @browser.input(value: "8")
  end

  def trousers
    @browser.input(value: "9")
  end

  def hats
    @browser.input(value: "10")
  end

  def active_filters
    @browser.button(class: "ActiveFilters_filter__xHUuV")
  end

  def minPrice
    @browser.input(class: "PriceMenu_minPriceInput__2GC2p")
  end

  def maxPrice
    @browser.input(class: "PriceMenu_maxPriceInput__2RsAW")
  end
end
