class TypesController < ApplicationController
    def index
        @tipo = Type.all
        render json: @tipo, status: :ok
    end

    def create
        @nuevomaterial = Type.create(params.permit(:material, :description, :goal_value))
        puts params
        render json: @nuevomaterial, status: :created
    end

    def destroy
        @borrar_material = Type.find(params[:id])
        @borrar_material.destroy
        render json: @borrar_material, status: :destroyed
    end

    def update
        @actualizarTipos = Type.find(params[:id])
        @actualizarTipos.update(tiporecy_params)
        render json: @actualizarTipos, status: :updated  
    end

    def tiporecy_params
        params.permit(:material, :description, :goal_value)
    end
end
