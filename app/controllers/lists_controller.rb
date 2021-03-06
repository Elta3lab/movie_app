class ListsController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :logged_in_user, only: %i[new create delete]
  before_action :correct_list, only: %i[delete]

  def create
    user = current_user
    list2 = List.find_by(user_id: user.id, movie: params[:movie])
    unless list2.nil?
      render json: { error_message: "Error!, Movie Already Added. "}, status: :error
      return
    end

    list = user.lists.new(movie: params[:movie])
    #byebug
    if list.save
      render json: { success_message: 'Movie Added Successfully' }, status: :ok
      return
    else
      render json: { error_message: "Error!, Can't add more "}, status: :error
    end
  end

  def delete
    user = current_user
    list = user.lists.find_by(movie: params[:movie])
    unless list.nil?
      list.destroy
      render json: { success_message: 'Success!, Movie is removed.' }, status: :ok
      return
    end
    render json: { error_message: "Error!, Movie is not in the list "}, status: :error
  end

  def favorite_list
    @user = User.find(params[:id])
    @lists = List.where(user_id: params[:id]).paginate(page: params[:page], per_page: 5)
  end

  private

  #def list_params
  #  params.require(:list).permit(:user_id, :movie)
  #end

  # Before filters

  # Confirms a logged-in user.
  def logged_in_user
    unless logged_in?
      store_location
      flash[:danger] = 'Please log in.'
      redirect_to login_url
    end
  end

  # Confirms the list record belongs to the current user.
  def correct_list
    user = current_user
    list = user.lists.find_by(movie: params[:movie])
    redirect_to(root_url) if list.nil?
  end

end
