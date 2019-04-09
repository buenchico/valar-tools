class UsersController < ApplicationController
  before_action :correct_user, only: [:edit, :show]
  before_action :master_user, except: [:index, :show, :edit]
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  before_action :active_houses
  
  # GET /users
  # GET /users.json
  def index
    @users = User.where.not(house: "Admin")
    @user_new = User.new
  end

  # GET /users/1
  # GET /users/1.json
  def show
  end 

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, success: 'Jugador añadido correctamente.' }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, success: 'Jugador editado correctamente.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end
  
  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, sucess: 'Jugador eliminado.' }
      format.json { head :no_content }
    end
  end
  
  # Check if user is current user, master or admin
  def correct_user
    @user = User.find(params[:id])
    if current_user.nil?
      flash[:danger] = "Por favor, inicia sesión."
      redirect_to login_url
    elsif @user != current_user && !current_user.is_master? && !current_user.is_admin?
      redirect_to(root_url)
      flash[:danger] = "No tienes permisos para acceder a esta página."
    end
  end
  
  # Check if user is master or admin
  def master_user
    if current_user.nil?
      flash[:danger] = "Por favor, inicia sesión."
      redirect_to login_url
    elsif !current_user.is_master? && !current_user.is_admin?
      redirect_to(root_url)
      flash[:danger] = "No tienes permisos para acceder a esta página."
    end
  end
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def active_houses
      @active_houses = [ 'Master', 'Mallister', 'Hoare' ]
    end

    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:player, :house, :password, :password_confirmation)
    end

end