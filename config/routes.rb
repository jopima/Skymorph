Skymorph::Application.routes.draw do

  root :to => 'image#index'

  resources :image do
    get :new
  end

#######################
# API URLS
#######################

  namespace :api do    
     controller :image do
          get 'image(/:position,/:survey)', :action => 'find' , :format => 'json'   
        end
    end
end
