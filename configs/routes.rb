require_relative './router'

Router.draw do
  get('/') { "Akshay's Blog" }

  get 'articles/index'

  get('/articles/1') do |env|
    puts "Path: #{env['REQUEST_PATH']}"
    "First Article"
  end
end
