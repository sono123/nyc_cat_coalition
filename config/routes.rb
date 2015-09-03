Rails.application.routes.draw do

  get 'main/index' => 'main#index'
  get '/admin' => 'main#admin'
  # get '/about' => 'abouts#show', as: :about ##### why dont these work up here??? ####
  # get '/about/edit' => 'abouts#edit'

  root 'main#index'

  resources :events
  resources :faqs
  resources :abouts, only: [:show, :edit, :update]
  resources :contacts, only: [:show, :edit, :update]

  resources :cats do
    resources :pictures, only: [:show, :new, :create, :edit, :destroy]
  end

  get '/about' => 'abouts#show'
  get '/about/edit' => 'abouts#edit'

  get '/contact' => 'contacts#show'
  get '/contact/edit' => 'contacts#edit'

 
end
