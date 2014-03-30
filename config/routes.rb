Blocitoff::Application.routes.draw do



  get "welcome/index"

  devise_for :users

resources :todos, only: [:new, :create, :show, :index, :destroy]  #When we run rake routes, seven route destinations (4th column) are listed. However, we only want these three to show up. 

root to: 'welcome#index'

end
