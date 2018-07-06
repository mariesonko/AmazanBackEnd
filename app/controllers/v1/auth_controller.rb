class Api::V1::AuthController < ApplicationController

 def create
 # //byebug
 user = User.findby(username: params[:username])
    if user && user.authenticate(params[:password])
      render json: {username: username, id: user.id}, status: 200
    else
      render json: {error: 'Username or Password Invalid'}, status: 401
    end
  end
 end


 # //backend
 # // rails c
 # // User.create(username: 'j', password: '123')
 # // jesse.authenticate('1234')
# User.findby(username: params[:username])
# jesse.authenticate(username: params[:jesse])
