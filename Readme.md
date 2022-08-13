# Automação Ruby + Cucumber

Projeto de automação web utilizando Ruby + Cucumber.

**📋 Ambiente**

Ruby Instalar a versão recomendada marcada por => da sessão WITH DEVKIT https://rubyinstaller.org/downloads/

Bundler (gem install bundler)

Chromedriver configurado no path: Obs.1: faça o download em https://chromedriver.chromium.org/downloads (baixar de acordo com a versão do seu Chrome), descompacte ena pasta System32 do Windows Obs.2: na variável de ambiente PATH, incluir o caminho para a pasta do chromedriver - pode ser necessário reiniciar o sistema

IDE: VSCode

Roteiro para UTILIZAR o projeto:

**⚙️ Roteiro para UTILIZAR o projeto**

Fazer o clone do projeto
Abrir a pasta no VSCode
Abrir o terminal (do VSCode, ou o da sua preferência e navegar até a pasta do projeto) e rodar o comando 'bundle install'
Para rodar os cenários, utilizar o comando de run do Cucumber: ex.:
rodar todos os cenários: 'cucumber'

**⚙️ Roteiro para RECRIAR o projeto**

Abrir uma pasta vazia no VSCode
Criar o arquivo Gemfile (sem extensão) e incluir:
source 'https://rubygems.org'

gem 'capybara' gem 'cucumber' (gem 'cucumber', '~> 3.1.0') gem 'rspec' gem 'selenium-webdriver' gem 'site_prism'

Abrir o terminal (do VSCode, ou o da sua preferência e navegar até a pasta do projeto) e rodar o comando 'bundle install'
Rodar o comando 'cucumber --init'

Extras:

- Configurações do driver no arquivo env.rb
- para configurar o relatório do cucumber, criar o arquivo cucumber.yml na pasta raiz
- As pages devem estender de SitePrism:Page para utilizar os recursos do SitePrism
