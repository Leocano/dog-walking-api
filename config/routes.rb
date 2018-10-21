Rails.application.routes.draw do
  resources :dog_walkings do
    post '/start_walk', to: 'dog_walkings#start_walk'
  end
end
