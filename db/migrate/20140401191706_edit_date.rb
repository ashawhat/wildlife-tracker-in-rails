class EditDate < ActiveRecord::Migration
  def change
    remove_column :sightings, :date, :datetime
    add_column :sightings, :date, :date
  end
end
