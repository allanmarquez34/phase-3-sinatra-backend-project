class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/activities" do
    activities = Activity.all 
    activities.to_json
  end

  # patch "patch/activities" do 
    



end
