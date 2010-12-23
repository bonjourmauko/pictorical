Refinery::Application.routes.draw do
  resources :books

  scope(:path => 'refinery', :as => 'admin', :module => 'admin') do
    resources :books do
      collection do
        post :update_positions
      end
    end
  end
end
