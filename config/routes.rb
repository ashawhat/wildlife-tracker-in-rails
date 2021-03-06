WildlifeTracker::Application.routes.draw do
  match('species', { :via => :get, :to => 'species#index' })
  match('species', { :via => :get, :to => 'species#new'})
  match('species', { :via => :post, :to => 'species#create'})
  match('species/:id', { :via => :get, :to => 'species#show' })
  match('species/:id/edit', { :via => :get, :to => 'species#edit'})
  match('species/:id', {:via => [:patch, :put], to: 'species#update'})
  match('species/:id', {:via => :delete, :to => 'species#destroy'})

  match('sightings', {:via => :get, :to => 'sightings#index'})
  match('sightings/:id', { :via => :get, :to => 'sightings#show' })
  match('sightings', { :via => :get, :to => 'sightings#new'})
  match('sightings', { :via => :post, :to => 'sightings#create'})
  match('sightings/:id/edit', {:via => :get, :to => 'sightings#edit'})
  match('sightings/:id', {:via => [:patch, :put], to: 'sightings#update'})

end
