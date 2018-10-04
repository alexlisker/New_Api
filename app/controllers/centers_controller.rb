class CentersController < ApplicationController
    def index
        @listar_centros = Center.all
        puts @listar_centros
        render json: @listar_centros, status: :ok
    end
    
    def allTypes
        center = Center.find(params[:id])
        render json: center.types, status: :ok
    end
    
    def create
        @creaCentro = Center.create(center_params)
        
        render json: @creaCentro, status: :created
    end 
    
    def center_params
        params.permit(:name_center, :address_center, :gps_latitude, :gps_longitude, :email_center, :phone_center, :schedule)
    end
    
    def show
        @Seleccionar_Centro = Center.find(params[:id])
        render json: @Seleccionar_Centro, status: :ok
    end

    def update
        @actualizar_centro = Center.find(params[:id])
        @actualizar_centro.update(center_params)
        render json: @actualizar_centro, status: :actualizado  
    end

    def destroy
        @Borrar_Centro = Center.find(params[:id])
        @Borrar_Centro.destroy
        render json: @Borrar_Centro, status: :Borrado
    end

end