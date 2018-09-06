Rails.application.routes.draw do
  resources :sales
  root to: 'static#homepage'
end
