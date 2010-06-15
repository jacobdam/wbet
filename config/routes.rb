ActionController::Routing::Routes.draw do |map|
  map.resources :games

  map.signup 'signup', :controller => 'users', :action => 'new'
  map.logout 'logout', :controller => 'user_sessions', :action => 'destroy', :conditions => { :method => :delete}
  map.login 'login', :controller => 'user_sessions', :action => 'new'

  map.resources :user_sessions
  map.resources :users

  map.root :controller => 'homes', :action => 'homepage'

  map.namespace :admin do |admin|
    admin.root :controller => 'indexes', :action => 'index'
    admin.resources :users, :active_scaffold => true
    admin.resources :teams, :active_scaffold => true
    admin.resources :matches, :active_scaffold => true
  end
end
