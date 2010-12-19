Refinery::Application.routes.draw do
  resources :stories

  scope(:path => 'refinery', :as => 'admin', :module => 'admin') do
    resources :stories do
      collection do
        post :update_positions
      end
    end
  end
end
