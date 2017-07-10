class PredicateNumericalsController < ApplicationController
  before_action :set_predicate_numerical, only: [:show, :edit, :update, :destroy]

  # GET /predicate_numericals
  # GET /predicate_numericals.json
  def index
    @predicate_numericals = PredicateNumerical.all
  end

  # GET /predicate_numericals/1
  # GET /predicate_numericals/1.json
  def show
  end

  # GET /predicate_numericals/new
  def new
    @predicate_numerical = PredicateNumerical.new
  end

  # GET /predicate_numericals/1/edit
  def edit
  end

  # POST /predicate_numericals
  # POST /predicate_numericals.json
  def create
    @predicate_numerical = PredicateNumerical.new(predicate_numerical_params)

    respond_to do |format|
      if @predicate_numerical.save
        format.html { redirect_to @predicate_numerical, notice: 'Predicate numerical was successfully created.' }
        format.json { render :show, status: :created, location: @predicate_numerical }
      else
        format.html { render :new }
        format.json { render json: @predicate_numerical.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /predicate_numericals/1
  # PATCH/PUT /predicate_numericals/1.json
  def update
    respond_to do |format|
      if @predicate_numerical.update(predicate_numerical_params)
        format.html { redirect_to @predicate_numerical, notice: 'Predicate numerical was successfully updated.' }
        format.json { render :show, status: :ok, location: @predicate_numerical }
      else
        format.html { render :edit }
        format.json { render json: @predicate_numerical.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /predicate_numericals/1
  # DELETE /predicate_numericals/1.json
  def destroy
    @predicate_numerical.destroy
    respond_to do |format|
      format.html { redirect_to predicate_numericals_url, notice: 'Predicate numerical was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_predicate_numerical
      @predicate_numerical = PredicateNumerical.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def predicate_numerical_params
      params.require(:predicate_numerical).permit(:name, :unit, :min, :max, :sample_metadata_numerical_id)
    end
end
