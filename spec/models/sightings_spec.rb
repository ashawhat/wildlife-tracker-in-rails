require 'spec_helper'

describe Sighting do
  it { should validate_presence_of :date}
  it { should validate_presence_of :location}
  it { should validate_presence_of :species_id}
end
