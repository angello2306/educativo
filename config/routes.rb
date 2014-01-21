Educativo::Application.routes.draw do



	namespace :admin do

    #get "login" => "sessions#index"

    resources :teachers

	  resources :recordcards

	  resources :parents

	  resources :sections

	  resources :courses

	  resources :levels

	  resources :grades

	  resources :students

	  resources :users
    
    post 'validation' => 'sessions#validation', as: :validation

    get 'log_out' => 'sessions#logout', as: :log_out
    
    get 'log_in' => 'sessions#login', as: :log_in
     
    root :to => "sessions#login"
  end



  root :to => redirect("admin/log_in")
end
