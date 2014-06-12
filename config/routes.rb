Alexwatt::Application.routes.draw do
  devise_scope :user do
    post "/login" => "user_sessions#create"
  end

  resources :portfolio_items
  root to: "main#about"
end
