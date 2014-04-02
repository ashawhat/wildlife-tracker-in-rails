##Wildlife tracker
###Epicodus Bootcamp Exercise
###Rails 4.0.0
###Pair with Ashley Lee and Brentwood Reid
The Forest Service is considering a proposal from a timber company to clear-cut an old-growth forest of virgin Douglas fir just outside of Portland. Before they give the go-ahead, they need to do an environmental impact study. They've asked you and your pair to build an app so that the rangers can report wildlife sightings.

Start out by letting users CRUD/L (create, read, update, destroy, list) species.
Next, allow them to input a sighting of an animal, along with the date, time, and location. (Hint: a species has many sightings.) Add CRUD functionality for these sightings.

Now, the area under consideration has been divided into several regions. Build out CRUD/L functionality for regions, and when a user reports a sighting, have them choose the region from a drop-down menu. (Hint: do a web search for html drop-down mdn.)
Bonus: let users run reports to list all the sightings during a given time period.



Notes for future work:

Easy Button Method:
<select name="region_id">
     <%= Region.all.each do |region| %>
    <option value="<%= region.id %>"><%= region.name %></option>
    <% end %>
  </select>

  n sightings contoller, @region_id = region_id
  def create
    @sighting = Sighting.create(:location => params[:location],
                             :date => params[:date],
                             :species_id => params[:species_id])
