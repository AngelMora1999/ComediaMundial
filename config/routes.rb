Rails.application.routes.draw do

  devise_for :users, controllers:{
    omniauth_callbacks: "users/omniauth_callbacks"
  }
  
  post "/custom_sign_up", to: "users/omniauth_callbacks#custom_sign_up"
  #Configuracion para las personas logeadas y no logeadas
  authenticated :user do
    root "home#index"
  end

  unauthenticated :user do
    devise_scope :user do
      root "home#main", as: :unregistered_root
    end
  end
end
