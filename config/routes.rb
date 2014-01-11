Educativo::Application.routes.draw do

	namespace :admin do

    #get "login" => "sessions#index"

    resources :teachers

	  resources :recordcards

	  resources :sections

	  resources :courses

	  resources :levels

	  resources :grades

	  resources :students

	  resources :users

    #root :to => "sessions#index"
  end



  root :to => "home#index"
end
