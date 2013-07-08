Homework::Application.routes.draw do
  root :to => 'home#welcome'

  get '/home' => 'home#welcome'

  get '/stock' => 'stock#index'
  get '/stock/lookup' => 'stock#lookup'

  get '/movies' => 'movies#index'
  get '/movies/lookup' => 'movies#lookup'

end
