#1° Cenário - Home Page
Dado('que eu acesse a home page do projeto Qa.Coders') do
  home.load
end

Então('devo visualizar a informação {string}') do |titleHomePage|
  home.validate_text_homePage(titleHomePage)
end

#2° Cenário - Sobre nós

Dado('que estou na home page do projeto Qa.Coders') do
  home.load
end

Quando('clico no menu {string}') do |sobre_nos|
  home.click_link(sobre_nos)
  sleep 3
end

Então('devo enxergar o texto {string}') do |title_sobre_Nos|
  home.validate_text_sobrenos(title_sobre_Nos)
  sleep 3
end