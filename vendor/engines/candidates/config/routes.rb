Refinery::Application.routes.draw do
  resources :candidates

  scope(:path => 'refinery', :as => 'admin', :module => 'admin') do
    resources :candidates do
      collection do
        post :update_positions
      end
    end
  end
end
