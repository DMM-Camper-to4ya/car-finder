Rails.application.routes.draw do

root to: 'public/cars#index'
get 'customers/my_page' => 'public/customers#show',as: :customers_my_page
get 'customers/information/edit' => 'public/customers#edit',as: :customers_my_page_edit
patch 'customers/information' => 'public/customers#update'
get 'customers/withdraw' => 'publiccustomers#withdraw',as: :customers_withdraw
patch 'customers/unsubscribe' => 'public/customers#unsubscribe'

devise_for :customers,skip: [:passwords], controllers: {
  registrations: "public/registrations",
  sessions: 'public/sessions'
}

namespace :public do
resources :cars, only: [:show, :index]
end

 get '/admin' => 'admin/cars#index'
devise_for :admin, skip: [:registrations, :passwords] ,controllers: {
  sessions: "admin/sessions"
}
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
namespace :admin do
resources :cars, only: [:new, :create, :show, :edit, :update, :destroy]
end
end
