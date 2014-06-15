Alexwatt::Application.routes.draw do
  resources :portfolio_items

  post "/login" => "user_sessions#create"
  root to: "main#about"
end
