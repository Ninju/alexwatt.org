Alexwatt::Application.routes.draw do
  devise_for :users

  resources :portfolio_items
  root to: "main#about"
end
