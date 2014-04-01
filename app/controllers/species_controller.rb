class SpeciesController < ApplicationController

  def index
    @species = Species.all
    render('species/index.html.erb')
  end

  def new
    @species = Species.new
  end

  def create
    @species = Species.new(:name => params[:name])
    if @species.save
      render('species/success.html.erb')
    else
      render('species/index.html.erb')
    end
  end

  def show
    @species = Species.find(params[:id])
    render('species/show.html.erb')
  end
end
