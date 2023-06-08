class UserErrorsController < ApplicationController
  before_action :set_user_error, only: %i[ show edit update destroy ]

  # GET /user_errors or /user_errors.json
  def index
    @user_errors = UserError.all
  end

  # GET /user_errors/1 or /user_errors/1.json
  def show
  end

  # GET /user_errors/new
  def new
    @user_error = UserError.new
  end

  # GET /user_errors/1/edit
  def edit
  end

  # POST /user_errors or /user_errors.json
  def create
    @user_error = UserError.new(user_error_params)

    respond_to do |format|
      if @user_error.save
        format.html { redirect_to user_error_url(@user_error), notice: "User error was successfully created." }
        format.json { render :show, status: :created, location: @user_error }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @user_error.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_errors/1 or /user_errors/1.json
  def update
    respond_to do |format|
      if @user_error.update(user_error_params)
        format.html { redirect_to user_error_url(@user_error), notice: "User error was successfully updated." }
        format.json { render :show, status: :ok, location: @user_error }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @user_error.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_errors/1 or /user_errors/1.json
  def destroy
    @user_error.destroy

    respond_to do |format|
      format.html { redirect_to user_errors_url, notice: "User error was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_error
      @user_error = UserError.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_error_params
      params.require(:user_error).permit(:user_id, :error_id, :note, :date)
    end
end
