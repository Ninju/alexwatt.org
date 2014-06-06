Alexwatt::Application.routes.draw do
  resources :portfolio_items
  root to: "main#about"
end
