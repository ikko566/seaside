Rails.application.routes.draw do
  namespace :api, { format: 'json'} do
    namespace :v1 do
      resources :projects
    end
  end
  resources :predicate_numericals
  resources :sample_metadata_numericals
  resources :projects do
    resources :examinations do
      resources :samples 
    end
  end
  #objects に限り、post で import 処理を許可する
  resources 'projects', only: :index do
    collection { post :import }
  end
  resources 'examinations', only: :index do
    collection { post :import }
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

