class SightingsController < ApplicationController

  def index
    @sightings = Sighting.all
    render('sightings/index.html.erb')
  end

  def show
    @sighting = Sighting.find(params[:id])
     @species = Species.find(@sighting.species_id)
    render('sightings/show.html.erb')
  end

  def new
    @sighting = Sighting.new
  end

  def create
    @sighting = Sighting.new(params)
    if @sighting.save
      render('sightings/success.html.erb')
    else
      render('sightings/index.html.erb')
    end
  end
end