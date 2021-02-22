# README

# February 21st 
  [X]  * Name spacing controller to reflect API
  [X]  * Make City model, conroller and routes (resource)
        - City should have a name
        - City will have_many comments
            * When you want to drop a database, and make changes
                - rails db:drop 
                - Make the changes to the database you want
                - rails db:create
                - rails db:migrate
  [X]  * Make Comment model, controller and routes (resources)
        - Comment will belong_to a City
  [X]  * Fetch request - use the city from weather api to search city.comments
        - http://localhost:3000/api/v1/cities - This works!!!

# Note - Associations
    - 'build'
        * new_comment = @city.comments.build(comment: "A new comment")
    - 'build_city'
        * new_city = @comment.build_city(name: "Some City")
    - Adding an object to a collection association 
        * @city.comments << @comment

# Note - Namespace API
    - namespace w/ versioning   
        * namespace :api do 
            namespace :v1 do 
                resources :user
            end 
          end 

# Note - rails s -> Listening on tcp://[::1]:3000
    - localhost:3000 still worked (don't really know what [::1] means)