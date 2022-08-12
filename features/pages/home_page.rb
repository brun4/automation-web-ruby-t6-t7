class Home < SitePrism::Page
  include RSpec::Matchers
  include Capybara::DSL

  set_url '/'
  
  def validate_text_homePage(titleHomePage)
      el_title_HomePage = find('div[class="title"]')
    
      if el_title_HomePage.text.eql?(titleHomePage) != true
          raise "Expect element: #{titleHomePage}, but returned: #{el_title_HomePage.text}"
      end
  end

  #2° Cenário - Sobre nós  

  def validate_text_sobrenos(sobre_nos)

    title_sobre_Nos = find('#sobre-nos > div.MuiBox-root.css-1ln06le > h3')
        if title_sobre_Nos.text.eql?(sobre_nos) != true
        raise "Expect element: #{sobre_nos}, but returned: #{title_sobre_Nos.text}"
        end
    end

end