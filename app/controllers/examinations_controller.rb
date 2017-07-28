class ExaminationsController < ApplicationController
  before_action :set_examination, only: [:show, :edit, :update, :destroy]

  # GET /examinations
  # GET /examinations.json
  def index
#    @examinations = Examination.all
#    @samples = Examination.where( :project_id => 1 )
    @examinations=Examination.where(project_id:  params[:project_id])
    @examinations.each  do | exm |
        @samples=Sample.where(  examination_id: exm.id)
    end
    @project_id = params[:project_id]

#    @samples = Sample.find(1)
  end

  # GET /examinations/1
  # GET /examinations/1.json
  def show
  end

  # GET /examinations/new
  def new
    #examination = Examination.new
    samples = Sample.all
  end

  # GET /examinations/1/edit
  def edit
  end

  def import
  # fileはtmpに自動で一時保存される
      Examination.import(params[:file])
#      redirect_to root_url, notice: "sampleを追加しました。"
      redirect_to "/examinations"
  end



  #GET number of sample
  #  def sample_count
  #       @examinations=Examination.where(  )
  #
  #         end
  #

  # POST /examinations
  # POST /examinations.json
  def create
    @examination = Examination.new(examination_params)

    respond_to do |format|
      if @examination.save
        format.html { redirect_to @examination, notice: 'Examination was successfully created.' }
        format.json { render :show, status: :created, location: @examination }
      else
        format.html { render :new }
        format.json { render json: @examination.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /examinations/1
  # PATCH/PUT /examinations/1.json
  def update
    respond_to do |format|
      if @examination.update(examination_params)
        format.html { redirect_to @examination, notice: 'Examination was successfully updated.' }
        format.json { render :show, status: :ok, location: @examination }
      else
        format.html { render :edit }
        format.json { render json: @examination.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /examinations/1
  # DELETE /examinations/1.json
  def destroy
    @examination.destroy
    respond_to do |format|
      format.html { redirect_to examinations_url, notice: 'Examination was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_examination
      @examination = Examination.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def examination_params
      params.require(:examination).permit(:project_id)
    end
end
