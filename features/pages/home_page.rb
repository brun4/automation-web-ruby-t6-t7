class Home < SitePrism::Page
  include RSpec::Matchers
  include Capybara::DSL

  set_url '/'
  
  #Cenário 1 - Home Page

  def validate_text_homePage(titleHomePage)
      el_title_HomePage = find('div[class="title"]')
    
      if el_title_HomePage.text.eql?(titleHomePage) != true
          raise "Expect element: #{titleHomePage}, but returned: #{el_title_HomePage.text}"
      end
  end

  #Cenário 2 - Sobre nós  

  def validate_text_menu_sobrenos(sobre_nos)

    title_sobre_Nos = find('#sobre-nos > div.MuiBox-root.css-1ln06le > h3')
        if title_sobre_Nos.text.eql?(sobre_nos) != true
        raise "Expect element: #{sobre_nos}, but returned: #{title_Sobre_Nos.text}"
        end
    end

    #Cenário 3 - Depoimentos  

def validate_text_menu_depoimentos(depoimentos)

  title_depoimentos = find('#depoimentos > div.title.MuiBox-root.css-0 > div > h3')
      if title_depoimentos.text.eql?(depoimentos) != true
      raise "Expect element: #{depoimentos}, but returned: #{title_depoimentos.text}"
      end
  end

end