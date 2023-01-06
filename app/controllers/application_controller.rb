class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/activities" do
    activities = Activity.all 
    activities.to_json

  end


  post "/new" do 
    new_activity = Activity.create(
      title: params[:title],
      description: params[:description],
      location: params[:location],
      image: params[:image]
    )
    new_activity.to_json
  end 

  delete '/delete/:id' do
    delete_activity = Activity.find(params[:id])
    delete_activity.destroy
    delete_activity.to_json
  end

  get '/oneactivity/:id' do 
    one_activity = Activity.find(params[:id])
    one_activity.to_json
  end 

  get '/review/:id' do 
    review = Review.where(activity_id: params[:id])
    review.to_json
  end 

  post '/newreview' do
    new_review = Review.create(
        rating: params[:rating],
        content: params[:content],
        activity_id: params[:activity_id]
        )
    new_review.to_json
  end

  get '/allreviews' do 
    review = Review.all
    review.to_json
  end 
    
patch '/edit/:id' do 
  edit_form = Activity.find(params[:id])
  edit_form.update(
    title: params[:title],
    location: params[:location],
    description: params[:description],
    image: params[:image]
  )
  edit_form.to_json
end


end
