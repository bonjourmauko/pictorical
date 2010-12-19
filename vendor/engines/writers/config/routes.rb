Refinery::Application.routes.draw do
  resources :writers

  scope(:path => 'refinery', :as => 'admin', :module => 'admin') do
    resources :writers do
      collection do
        post :update_positions
      end
    end
  end
end
