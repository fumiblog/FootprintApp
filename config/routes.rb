Rails.application.routes.draw do
  root 'users/homes#top'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace 'admins' do
    resources :genres
    resources :categories
  end

  namespace 'users' do
    resources :homes, only: [:index] do
      get :top
    end
  end


end
