class UsersController < ApplicationController

  def new
    render(:new)
  end

  def create
    @user = User.new(first_name: params[:first_name], last_name: params[:last_name], dob: params[:dob], sex: params[:sex], email: params[:email], facebook_link: params[:facebook_link], password: params[:password])
    #
    # binding.pry

    if @user.save
       flash[:notice] = @user.errors.messages
      redirect_to("/users/#{@user.id}")
    else
      flash[:notice] = @user.errors.messages
      render(:new)
    end
  end

  def show
    @user = User.find(params[:id])
    render(:show)
  end


   def edit
    @user = User.find(params[:id])
    render(:edit)
  end

  def update
    @user = User.find(params[:id])
    @user.update({first_name: params[:first_name], last_name: params[:last_name], dob: params[:dob], sex: params[:sex], email: params[:email], facebook_link: params[:facebook_link], password: params[:password]})
    redirect_to("/")
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to("/") 
  end

end