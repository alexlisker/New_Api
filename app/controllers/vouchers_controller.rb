class VouchersController < ApplicationController
    def index
        usuario = User.find(params[:user_id])
        puts usuario.vouchers
        render json: usuario.vouchers, status: :ok
    end
    def create
        crearvoucher = Voucher.create(recibo_params)
        puts recibo_params
        render json: crearvoucher, status: :create
    end 

    def recibo_params
        params.permit(:id, :metrics, :delivered, :delivery_date, :user_id, :type_id, :center_id)
    end
end
