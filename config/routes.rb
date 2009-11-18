ActionController::Routing::Routes.draw do |map|
  map.resources :test_results
  map.resources :invitations, :collection => { :after_invite => :get }
  map.root :controller => "test_results", :action => "new"
end
