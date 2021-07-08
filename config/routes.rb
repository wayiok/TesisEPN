Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'pages#resumen_semanal'
  get '/resumen_semanal' => 'pages#resumen_semanal'
  get '/ataques' => 'pages#ataques'
  get '/herramientas_de_analisis' => 'pages#herramientas_de_analisis'
  post '/analyze_website' => 'pages#analyze_website'

  namespace :api do
    resources :logs, only: :create
    resources :queries, only: :create
  end

  resources :log_files, only: :create
end
