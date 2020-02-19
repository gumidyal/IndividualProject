Rails.application.routes.draw do
  resources :individual_project1s
  root "individual_project1s#index"
end
