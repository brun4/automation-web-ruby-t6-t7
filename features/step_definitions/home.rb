#Cenário 1 - Home Page
Dado('que eu acesse a home page do projeto Qa.Coders') do
  home.load
end

Então('devo visualizar a informação {string}') do |titleHomePage|
  home.validate_text_homePage(titleHomePage)
end

#Cenário 2 - Sobre nós

Dado('que eu esteja na home page do projeto Qa.Coders') do
  home.load
end

Quando('clico no menu {string}') do |sobre_nos|
  home.click_link(sobre_nos)
  sleep 3
end

Então('devo ver o texto {string}') do |title_Sobre_Nos|
  home.validate_text_sobrenos(title_Sobre_Nos)
  sleep 3
end

#Cenário 3 - Depoimentos

Dado('que estou vendo a home page do projeto Qa.Coders') do
  home.load
end

Quando('clico no ítem {string}') do |depoimentos|
  home.click_link(depoimentos)
  sleep 3
end

Então('devo ler o texto {string}') do |title_depoimentos|
  home.validate_text_depoimentos(title_depoimentos)
  sleep 3
end