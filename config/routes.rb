Rails.application.routes.draw do
  resources :predicate_numericals
  resources :sample_metadata_numericals
  resources :projects do
    resources :examinations do
      resources :samples 
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
