Rails.application.routes.draw do
  # get 'lease/index'
  # get 'lease/create'
  # get 'lease/destroy'
  # get 'tenant/index'
  # get 'tenant/create'
  # get 'tenant/show'
  # get 'tenant/update'
  # get 'tenant/destroy'
  # get 'apartment/index'
  # get 'apartment/create'
  # get 'apartment/show'
  # get 'apartment/update'
  # get 'apartment/destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  
  resources :apartments, except: [:new]
  resources :tenants, except: [:new]
  resources :leases, only: [:index, :create, :destroy]
  
end
