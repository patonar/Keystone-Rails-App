Keystone::Application.routes.draw do

  devise_for :users, :skip => [:sessions, :passwords] do
    get 	      "login"           => "devise/sessions#new",      :as => :new_user_session
    post        "login_check"     => "devise/sessions#create",   :as => :user_session
    delete      "logout"          => "devise/sessions#destroy",  :as => :destroy_user_session
  end

  get         "dashboard"       => "pages#index",              :as => :dashboard
  get         "help"            => "pages#help",               :as => :help

  namespace :admin do
    resources :users, :except => [:show]
  end
  root :to => redirect("/dashboard")

   # Note: This route will make all actions in every controller accessible via GET requests.
   # match ':controller(/:action(/:id(.:format)))'
end
