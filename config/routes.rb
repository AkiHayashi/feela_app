Rails.application.routes.draw do
  resources :posts
  get "/" => "home#top"
  get "about" => "home#about"
end
