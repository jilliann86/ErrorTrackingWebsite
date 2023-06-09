class ErrorsController < ApplicationController
  before_action :set_error, only: %i[ show edit update destroy ]

  # GET /errors or /errors.json
  def index
    @errors = Error.order(severity: :desc)
    #error_counts = UserError.left_joins(:errors).group(:id).count
    #@foo = error

  end

  # GET /errors/1 or /errors/1.json
  def show
    @user_errors = UserError.all
  end

  # GET /errors/new
  def new
    @error = Error.new
  end

  # GET /errors/1/edit
  def edit
  end

  # POST /errors or /errors.json
  def create
    @error = Error.new(error_params)

    respond_to do |format|
      if @error.save
        format.html { redirect_to error_url(@error), notice: "Error was successfully created." }
        format.json { render :show, status: :created, location: @error }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @error.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /errors/1 or /errors/1.json
  def update
    respond_to do |format|
      if @error.update(error_params)
        format.html { redirect_to error_url(@error), notice: "Error was successfully updated." }
        format.json { render :show, status: :ok, location: @error }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @error.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /errors/1 or /errors/1.json
  def destroy
    @error.destroy

    respond_to do |format|
      format.html { redirect_to errors_url, notice: "Error was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_error
      @error = Error.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def error_params
      params.require(:error).permit(:name, :severity)
    end
end
