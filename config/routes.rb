WildlifeTracker::Application.routes.draw do
  match('species', { :via => :get, :to => 'species#index' })
  match('species/:id', { :via => :get, :to => 'species#show' })
end
