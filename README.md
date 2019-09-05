# README
Welcome to our super online adoption service "Nectar de Chatôn", where Homo-sapiens and Felis-cats find each other!

The online version can be directly accessed at:
https://nectar-thp.herokuapp.com/ 

or you can download the local version's full repository at:
https://github.com/NectarTHP/Chaton-S1.git


To run the program locally, please follow these steps:
1. Bundle install
2. Initialise the database
3. Run the migration
4. Run the seed
5. Start the server
6. Open in your web browser http://localhost:3000/

This application uses the following dependencies and gems:

ruby '2.5.1'
gem 'dotenv-rails'
gem 'table_print'
gem 'stripe'
gem 'rails', '~> 5.2.3'
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 3.11'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'bootsnap', '>= 1.1.0', require: false
gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
gem 'web-console', '>= 3.3.0'
gem 'listen', '>= 3.0.5', '< 3.2'
gem 'spring'
gem 'spring-watcher-listen', '~> 2.0.0'
gem 'letter_opener', '~> 1.4', '>= 1.4.1'
gem 'capybara', '>= 2.15'
gem 'selenium-webdriver'
gem 'chromedriver-helper'
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
gem 'devise'
gem 'faker'
gem "font-awesome-rails"
gem 'bootstrap', '~> 4.3.1'
gem 'jquery-rails'
