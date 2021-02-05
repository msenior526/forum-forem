class UsersController < ApplicationController

  # GET: /users
  get "/users" do
    erb :"/users/index.html"
  end

  # GET: /users/new, SIGNUP PAGE
  get "/users/signup" do
    erb :"/users/new.html"
  end

  # POST: /users
  post "/signup" do
    binding.pry
    # user = User.create(params[:user])
    # if user.valid?
    #   session[:user_id] = user.id
    #   redirect "/users/#{user.id}"
    # else
    #   redirect "/users/signup"
  end

  # GET: /users/5
  get "/users/:id" do
    erb :"/users/show.html"
  end

  # # GET: /users/5/edit
  # get "/users/:id/edit" do
  #   erb :"/users/edit.html"
  # end

  # # PATCH: /users/5
  # patch "/users/:id" do
  #   redirect "/users/:id"
  # end

  # # DELETE: /users/5/delete
  # delete "/users/:id/delete" do
  #   redirect "/users"
  # end
end
