class UsersController < ApplicationController
	def show
    @user = User.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user }
    end
end
 
def destroy
    @user = User.find(params[:id2])
	@user.destroy
    respond_to do |format|
        format.html { redirect_to root_url}

    end
end

end
