class UsersController < ApplicationController
  def new
  end


  def show
  
    @user = User.find(params[:id])
  
  
  end
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      sign_in @user
      flash[:success] = "Welcome to LingoTidbits!"
      redirect_to @user
      

    else
      render 'new'
      end
    end 
    
    
    private
      def user_params
        params.require(:user).permit(:name, :email, :password, :password_confirmation, :mother_tongue) 
      end
      
      
    
    


end
