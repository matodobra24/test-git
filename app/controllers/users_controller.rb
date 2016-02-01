class UsersController < ApplicationController

  before_action :authenticate_user!

 # GET /products
  # GET /products.json
  def index
    @users = User.all
  end

#   # GET /products/1
#   # GET /products/1.json
#   def show
#   end

#   # GET /products/new
#   def new
#     @user = User.new
#   end

#   # GET /products/1/edit
#   def edit
#   end

#   # POST /products
#   # POST /products.json
#   def create
#     @user = User.new(user_params)

#     respond_to do |format|
#       if @user.save
#         format.html { redirect_to @user, notice: 'User was successfully created.' }
#         format.json { render :show, status: :created, location: @user }
#       else
#         format.html { render :new }
#         format.json { render json: @user.errors, status: :unprocessable_entity }
#       end
#     end
#   end

#   # PATCH/PUT /products/1
#   # PATCH/PUT /products/1.json
#   def update
#     respond_to do |format|
#       if @user.update(user_params)
#         format.html { redirect_to @user, notice: 'User was successfully updated.' }
#         format.json { render :show, status: :ok, location: @user }
#       else
#         format.html { render :edit }
#         format.json { render json: @user.errors, status: :unprocessable_entity }
#       end
#     end
#   end

#   # DELETE /products/1
#   # DELETE /products/1.json
#   def destroy
#     @user.destroy
#     respond_to do |format|
#       format.html { redirect_to user_url, notice: 'User was successfully destroyed.' }
#       format.json { head :no_content }
#     end
#   end

#   private
#     # Use callbacks to share common setup or constraints between actions.
#     def set_product
#       @user = User.find(params[:id])
#     end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:email, :password, :password_confirmation)
    end
end
