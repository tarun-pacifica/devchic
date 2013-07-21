Devchic::Application.routes.draw do
root :to =>'home#index'
resources :developers
end

