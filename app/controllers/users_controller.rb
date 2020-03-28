class UsersController < ApplicationController
    def new
        @user = User.new
        render :new
    end

    def show

    end

    def create
        @user = User.new(user_params)

        if @user.save!

            #login!(@user)
            redirect_to users_url(@user)
        else
            render :new

        end
    end

    private
    def user_params
        params.require(:user).permit(:username, :password, :fname, :lname)
    end
end
