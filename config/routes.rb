Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get "welcome/say_hello" => "welcome#say"
  # ...
  get "welcome" => "welcome#index"
  root :to => "welcome#index"

  resources :posts do
    resources :comments, except: :show
  end

  resources :categories


  resources :tickets

end
