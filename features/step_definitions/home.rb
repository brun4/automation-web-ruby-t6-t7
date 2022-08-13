#Cenário 1 - Home Page
Dado('que eu acesse a home page do projeto Qa.Coders') do
  home.load
end

Então('devo visualizar a informação {string}') do |titleHomePage|
  home.validate_text_homePage(titleHomePage)
end

#Cenário 2 - Sobre nós

Quando('clico no menu {string}') do |sobre_nos|
  home.click_link(sobre_nos)
  sleep 3
end

Então('devo ver o texto {string}') do |title_Sobre_Nos|
  home.validate_text_menu_sobrenos(title_Sobre_Nos)
  sleep 3
end

#Cenário 3 - Depoimentos
Quando('clico no ítem {string}') do |depoimentos|
  home.click_link(depoimentos)
  sleep 3
end

Então('devo ler o texto {string}') do |title_depoimentos|
  home.validate_text_menu_depoimentos(title_depoimentos)
  sleep 3
end

#Cenário 4 - Parceiros

Quando('clicar no menu {string}') do |parceiros|
  home.click_link(parceiros) 
  sleep 2
end
Então('devo visualizar {string}') do |verifica_parceiros|
  home.validate_text_menu_parceiros(verifica_parceiros)
  sleep 2
end

#Cenário 5 - Fale Conosco

Quando('clico no {string}') do |faleconosco|
  home.click_link(faleconosco)
  sleep 3
end

Então('devo obter informações sobre {string}') do |title_faleconosco|
  home.validate_text_menu_faleconosco(title_faleconosco)
  sleep 3
end