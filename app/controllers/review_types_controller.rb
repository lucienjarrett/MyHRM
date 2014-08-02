class ReviewTypesController < ApplicationController
  before_action :set_review_type, only: [:show, :edit, :update, :destroy]

  # GET /review_types
  # GET /review_types.json
  def index
    @review_types = ReviewType.all
  end

  # GET /review_types/1
  # GET /review_types/1.json
  def show
  end

  # GET /review_types/new
  def new
    @review_type = ReviewType.new
  end

  # GET /review_types/1/edit
  def edit
  end

  # POST /review_types
  # POST /review_types.json
  def create
    @review_type = ReviewType.new(review_type_params)

    respond_to do |format|
      if @review_type.save
        format.html { redirect_to @review_type, notice: 'Review type was successfully created.' }
        format.json { render :show, status: :created, location: @review_type }
      else
        format.html { render :new }
        format.json { render json: @review_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /review_types/1
  # PATCH/PUT /review_types/1.json
  def update
    respond_to do |format|
      if @review_type.update(review_type_params)
        format.html { redirect_to @review_type, notice: 'Review type was successfully updated.' }
        format.json { render :show, status: :ok, location: @review_type }
      else
        format.html { render :edit }
        format.json { render json: @review_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /review_types/1
  # DELETE /review_types/1.json
  def destroy
    @review_type.destroy
    respond_to do |format|
      format.html { redirect_to review_types_url, notice: 'Review type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_review_type
      @review_type = ReviewType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def review_type_params
      params.require(:review_type).permit(:review_name, :status)
    end
end
