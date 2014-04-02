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

  def update
    @sighting = Sighting.find(params[:id])
    if @sighting.update(:location => params[:location],
                             # :date => params[:date],
                             :species_id => params[:species_id])
      render('sightings/success.html.erb')
    else
      render('sightings/edit.html.erb')
    end
  end

  def create
    @sighting = Sighting.create(:location => params[:location],
                             :date => params[:date],
                             :species_id => params[:species_id])
    if @sighting.save
      render('sightings/success.html.erb')
    else
      render('sightings/index.html.erb')
    end
  end

  def edit
    @sighting = Sighting.find(params[:id])
    render('sightings/edit.html.erb')
  end
end
