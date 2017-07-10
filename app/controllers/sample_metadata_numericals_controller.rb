class SampleMetadataNumericalsController < ApplicationController
  before_action :set_sample_metadata_numerical, only: [:show, :edit, :update, :destroy]

  # GET /sample_metadata_numericals
  # GET /sample_metadata_numericals.json
  def index
    @sample_metadata_numericals = SampleMetadataNumerical.all
  end

  # GET /sample_metadata_numericals/1
  # GET /sample_metadata_numericals/1.json
  def show
  end

  # GET /sample_metadata_numericals/new
  def new
    @sample_metadata_numerical = SampleMetadataNumerical.new
  end

  # GET /sample_metadata_numericals/1/edit
  def edit
  end

  # POST /sample_metadata_numericals
  # POST /sample_metadata_numericals.json
  def create
    @sample_metadata_numerical = SampleMetadataNumerical.new(sample_metadata_numerical_params)

    respond_to do |format|
      if @sample_metadata_numerical.save
        format.html { redirect_to @sample_metadata_numerical, notice: 'Sample metadata numerical was successfully created.' }
        format.json { render :show, status: :created, location: @sample_metadata_numerical }
      else
        format.html { render :new }
        format.json { render json: @sample_metadata_numerical.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sample_metadata_numericals/1
  # PATCH/PUT /sample_metadata_numericals/1.json
  def update
    respond_to do |format|
      if @sample_metadata_numerical.update(sample_metadata_numerical_params)
        format.html { redirect_to @sample_metadata_numerical, notice: 'Sample metadata numerical was successfully updated.' }
        format.json { render :show, status: :ok, location: @sample_metadata_numerical }
      else
        format.html { render :edit }
        format.json { render json: @sample_metadata_numerical.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sample_metadata_numericals/1
  # DELETE /sample_metadata_numericals/1.json
  def destroy
    @sample_metadata_numerical.destroy
    respond_to do |format|
      format.html { redirect_to sample_metadata_numericals_url, notice: 'Sample metadata numerical was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sample_metadata_numerical
      @sample_metadata_numerical = SampleMetadataNumerical.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sample_metadata_numerical_params
      params.require(:sample_metadata_numerical).permit(:predicate_numerical, :value, :sample_id)
    end
end
