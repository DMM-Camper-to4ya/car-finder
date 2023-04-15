Rails.application.routes.draw do

root to: 'public/homes#top'
get 'customers/my_page' => 'public/customers#show',as: :customers_my_page
get 'customers/information/edit' => 'public/customers#edit',as: :customers_my_page_edit
patch 'customers/information' => 'public/customers#update'
patch 'customers/withdraw' => 'public/customers#withdraw',as: 'withdraw'
get 'customers/unsubscribe' => 'public/customers#unsubscribe',as: 'unsubscribe'

devise_for :customers,skip: [:passwords], controllers: {
  registrations: "public/registrations",
  sessions: 'public/sessions'
}

namespace :public do
resources :cars, only: [:show, :index] do
resource :favorites, only: [:create, :destroy]
end
end

 get '/admin' => 'admin/cars#index'
devise_for :admin, skip: [:registrations, :passwords] ,controllers: {
  sessions: "admin/sessions"
}
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
namespace :admin do
resources :cars, only: [:new, :create, :show, :edit, :update, :destroy]
resources :customers, only:[:index, :show, :edit, :update, :destroy]
resources :favorites, only:[:index]
end
end
