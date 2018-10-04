class UsersController < ApplicationController
    def index
        usuario = User.all
        puts usuario
        render json: usuario, status: :ok
    end

    def create
        @user = User.create(user_params)
        #puts "Ok"
        #puts params
        #puts "Ok"
        render json: @user, status: :created
    end 

    def show
        @user = User.find(params[:id])
        render json: @user, status: :ok
    end

    def update
        usuario = User.find(params[:id])
        usuario.update(user_params)
        render json:usuario, status: :upgrated  
    end
    
    def destroy
        usuario = User.find(params[:id])
        usuario.destroy
        render json:usuario, status: :destroyed
    end

    def user_params
        params.permit(:document, :name, :surname, :account_contract, :birth_date, :email, :movil, :username, :password, :date_reg)
end
end
