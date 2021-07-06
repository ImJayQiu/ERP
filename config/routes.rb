Rails.application.routes.draw do

  resources :countryinfos
    resources :vaccineregs
    resources :medicalsupplies
    resources :medicalitems
    resources :units
    resources :livingitems
    resources :livingsupplies
    resources :provinces
    resources :covid19cases
    resources :indexpages

    devise_for :users

    get 'welcome/summary'
    get 'welcome/medical_capacity_summary' 
    get 'welcome/living_supply_summary' 
    get 'welcome/vaccine_register_summary' 
    get 'welcome/details' 

    root 'welcome#index'

    # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
