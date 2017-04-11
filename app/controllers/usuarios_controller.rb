class UsuariosController < ApplicationController
	before_action :set_user

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

	def user_params
		params.require(:user).permit(:email,:name,:avatar)
	end
end