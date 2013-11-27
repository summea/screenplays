class SceneHeadingsController < ApplicationController
  before_action :set_scene_heading, only: [:show, :edit, :update, :destroy]

  # GET /scene_headings
  # GET /scene_headings.json
  def index
    @scene_headings = SceneHeading.all
  end

  # GET /scene_headings/1
  # GET /scene_headings/1.json
  def show
  end

  # GET /scene_headings/new
  def new
    @scene_heading = SceneHeading.new
  end

  # GET /scene_headings/1/edit
  def edit
  end

  # POST /scene_headings
  # POST /scene_headings.json
  def create
    @scene_heading = SceneHeading.new(scene_heading_params)

    respond_to do |format|
      if @scene_heading.save
        format.html { redirect_to @scene_heading, notice: 'Scene heading was successfully created.' }
        format.json { render action: 'show', status: :created, location: @scene_heading }
      else
        format.html { render action: 'new' }
        format.json { render json: @scene_heading.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /scene_headings/1
  # PATCH/PUT /scene_headings/1.json
  def update
    respond_to do |format|
      if @scene_heading.update(scene_heading_params)
        format.html { redirect_to @scene_heading, notice: 'Scene heading was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @scene_heading.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /scene_headings/1
  # DELETE /scene_headings/1.json
  def destroy
    @scene_heading.destroy
    respond_to do |format|
      format.html { redirect_to scene_headings_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_scene_heading
      @scene_heading = SceneHeading.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def scene_heading_params
      params.require(:scene_heading).permit(:location, :time)
    end
end
