Refinery::Application.routes.draw do
  resources :artists

  scope(:path => 'refinery', :as => 'admin', :module => 'admin') do
    resources :artists do
      collection do
        post :update_positions
      end
    end
  end
end
