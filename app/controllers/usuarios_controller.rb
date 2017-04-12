class UsuariosController < ApplicationController
	before_action :set_user
	before_action :authenticate_user!, only: [:update]
	before_action :authenticate_owner!, only: [:update]

	def show

	end

	def update
		respond_to do |format|
			if @user.update(user_params)
				format.html{ redirect_to @user, notice: "Si se guardo todo ok" }
				format.json{ render :show }
			else
				format.html{ redirect_to @user, notice:@user.errors.full_messages }
			end
		end
	end

	private
	def set_user
		@user = User.find(params[:id])
	end

	def authenticate_owner!
		if current_user != @user
			redirect_to root_path, notice: "No estás autorizado", status: :unauthorized
		end
	end

	def user_params
		params.require(:user).permit(:email,:name,:avatar)
	end
end