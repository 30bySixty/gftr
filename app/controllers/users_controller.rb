class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    respond_to do |format|

      @errorMessage = []

      if @user.save
#        format.js { redirect_to "http://letsgifton.us13.list-manage.com/subscribe/post?u=acf44fe8794f0d2cee6b339c9&amp;id=1b74105b91" }
#        UserNotifier.send_signup_email(@user).deliver_now 
        format.js {flash[:notice] = "Thanks for joining GiftOn! We'll be in touch soon."}
        @resetForm = "1"

      else
        format.js
        @user.errors.any?

        if (@user.errors["email"] != nil)
          @errorMessage.push(@user.errors["email"][0])
        end

        @resetForm = "0" 
      end
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :first_name, :last_name)
  end
end
