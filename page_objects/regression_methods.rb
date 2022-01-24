require_relative "../spec/helper"

class RegressionMethods < HomePage

  #actions

  def search_text_set(keyword)
    search_containter.set keyword
  end

  private

  def search_containter
    @browser.input(class: "Navbar_searchBar__15H_R")
  end
end
