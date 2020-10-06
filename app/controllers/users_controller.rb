class UsersController < ApplicationController
  before_action :correct_user, only: [:edit, :show, :password]
  before_action :master_user, except: [:index, :show, :edit, :password]
  before_action :set_user, only: [:show, :edit, :update, :destroy, :password]

  # GET /users
  # GET /users.json
  def index
    @users = User.where.not(house: "Admin")
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
        format.html { redirect_to users_url, success: 'Jugador añadido correctamente.' }
      else
        format.html { redirect_to users_url, danger: 'Se ha producido un error, por favor inténtelo de nuevo' }
      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to users_url, success: 'Jugador editado correctamente.' }
      else
        format.html { redirect_to users_url, danger: @user.errors }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, warning: 'Jugador eliminado.' }
      format.json { head :no_content }
    end
  end

  # PATCH/PUT /users/1/password
  # PATCH/PUT /users/1/password.json
  def password
    if @user and @user.authenticate(params[:user][:old_password])
      if params[:user][:password] == params[:user][:password_confirmation]
        respond_to do |format|
          if @user.update(user_params)
            format.html { redirect_to @user, success: 'Contraseña cambiada correctamente.' }
          else
            format.html { render :show }
          end
        end
      else
        flash.now[:danger] = "Las contraseñas no son iguales."
        render 'show'
      end
    else
      flash.now[:danger] = "Contraseña incorrecta."
      render 'show'
    end
  end

  # Check if user is current user, master or admin
  def correct_user
    @user = User.find(params[:id])
    if current_user.nil?
      flash[:danger] = "Por favor, inicia sesión."
      redirect_to root_url
    elsif @user != current_user && !current_user.is_master? && !current_user.is_admin?
      redirect_to(root_url)
      flash[:danger] = "No tienes permisos para acceder a esta página."
    end
  end

  # Check if user is master or admin
  def master_user
    if current_user.nil?
      flash[:danger] = "Por favor, inicia sesión."
      redirect_to root_url
    elsif !current_user.is_master? && !current_user.is_admin?
      redirect_to(root_url)
      flash[:danger] = "No tienes permisos para acceder a esta página."
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:player, :house, :password, :password_confirmation)
    end
end
