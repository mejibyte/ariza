ActionController::Routing::Routes.draw do |map|
  map.resources :test_results
  map.resources :invitations
  map.root :controller => "test_results", :action => "new"
end
