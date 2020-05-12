class IndividualProject1sController < ApplicationController
  before_action :set_individual_project1, only: [:show, :edit, :update, :destroy]

  # GET /individual_project1s
  # GET /individual_project1s.json
  def index
    @individual_project1s = IndividualProject1.all
  end

  # GET /individual_project1s/1
  # GET /individual_project1s/1.json
  def show
  end

  # GET /individual_project1s/new
  def new
    @individual_project1 = IndividualProject1.new
  end

  # GET /individual_project1s/1/edit
  def edit
  end

  # POST /individual_project1s
  # POST /individual_project1s.json
  def create
    @individual_project1 = IndividualProject1.new(individual_project1_params)

    respond_to do |format|
      if @individual_project1.save
        format.html { redirect_to @individual_project1, notice: 'Class note was successfully created.' }
        format.json { render :show, status: :created, location: @individual_project1 }
      else
        format.html { render :new }
        format.json { render json: @individual_project1.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /individual_project1s/1
  # PATCH/PUT /individual_project1s/1.json
  def update
    respond_to do |format|
      if @individual_project1.update(individual_project1_params)
        format.html { redirect_to @individual_project1, notice: 'Class note was successfully updated.' }
        format.json { render :show, status: :ok, location: @individual_project1 }
      else
        format.html { render :edit }
        format.json { render json: @individual_project1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /individual_project1s/1
  # DELETE /individual_project1s/1.json
  def destroy
    @individual_project1.destroy
    respond_to do |format|
      format.html { redirect_to individual_project1s_url, notice: 'Class note was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_individual_project1
      @individual_project1 = IndividualProject1.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def individual_project1_params
      params.require(:individual_project1).permit(:title, :description)
    end
end
