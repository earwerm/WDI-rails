Basic::Application.routes.draw do
  root :to => 'home#homepage'
  get '/home' => 'home#homepage'
  get '/about' => 'home#about'
  get '/faq' => 'home#faq'

  get '/dogs' => 'dogs#index'
  get '/dogs/new' => 'dogs#new'
  get '/dogs/faq' => 'dogs#faq'
end
