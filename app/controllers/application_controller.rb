require './config/environment'

class ApplicationController < Sinatra::Base
  # register Sinatra::ActiveRecordExtension
  set :views, Proc.new { File.join(root, "../views/") }

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

<<<<<<< HEAD
  get '/recipes/new' do
    erb :new
  end

  get '/recipes' do
=======
  get '/recipes/new' do #loads new form
    erb :new
  end

  get '/recipes' do #loads index page
>>>>>>> 8058be2c9ec11a6fa363c541cee7b5e9aef5a7e0
    @recipes = Recipe.all
    erb :index
  end

<<<<<<< HEAD
  get '/recipes/:id' do  
    @recipe = Recipe.find_by_id(params[:id])
    erb :show
  end
  
  get '/recipes/:id/edit' do
    @recipe = Recipe.find_by_id(params[:id])
    erb :edit
  end
  
  patch '/recipes/:id' do
=======
  get '/recipes/:id' do  #loads show page
    @recipe = Recipe.find_by_id(params[:id])
    erb :show
  end

  get '/recipes/:id/edit' do #loads edit form
    @recipe = Recipe.find_by_id(params[:id])
    erb :edit
  end

  patch '/recipes/:id' do  #updates a recipe
>>>>>>> 8058be2c9ec11a6fa363c541cee7b5e9aef5a7e0
    @recipe = Recipe.find_by_id(params[:id])
    @recipe.name = params[:name]
    @recipe.ingredients = params[:ingredients]
    @recipe.cook_time = params[:cook_time]
    @recipe.save
<<<<<<< HEAD
    
    redirect to "/recipes/#{@recipe.id}"
  end
  
  post '/recipes' do
    @recipe = Recipe.create(params)
    redirect to "/recipes/#{@recipe.id}"
  end
  
  delete '/recipes/:id' do
=======
    redirect to "/recipes/#{@recipe.id}"
  end

  post '/recipes' do  #creates a recipe
    @recipe = Recipe.create(params)
    redirect to "/recipes/#{@recipe.id}"
  end

  delete '/recipes/:id' do #destroy action
>>>>>>> 8058be2c9ec11a6fa363c541cee7b5e9aef5a7e0
    @recipe = Recipe.find_by_id(params[:id])
    @recipe.delete
    redirect to '/recipes'
  end
<<<<<<< HEAD
end
 
=======

end
>>>>>>> 8058be2c9ec11a6fa363c541cee7b5e9aef5a7e0
