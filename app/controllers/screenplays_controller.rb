class ScreenplaysController < ApplicationController
  before_action :set_screenplay, only: [:show, :edit, :update, :destroy]

  # GET /screenplays
  # GET /screenplays.json
  def index
    @screenplays = Screenplay.all
  end

  # GET /screenplays/1
  # GET /screenplays/1.json
  def show
    @blocks = Block.where("screenplay_id = ?", params[:id]).order(:position)
    @block_types = BlockType.all().order(:id)
    @block = Block.new
    @characters = Character.all().order(:name)
  end
  
  # GET /screenplays/export/1
  # GET /screenplays/export/1.json
  def export
    @blocks = Block.where("screenplay_id = ?", params[:id]).order(:position)
    @block_types = BlockType.all().order(:id)
    @block = Block.new
    @characters = Character.all().order(:name)
    set_screenplay
  end

  # GET /screenplays/new
  def new
    @screenplay = Screenplay.new
  end

  # GET /screenplays/1/edit
  def edit
  end

  # POST /screenplays
  # POST /screenplays.json
  def create
    @screenplay = Screenplay.new(screenplay_params)

    respond_to do |format|
      if @screenplay.save
        format.html { redirect_to @screenplay, notice: 'Screenplay was successfully created.' }
        format.json { render action: 'show', status: :created, location: @screenplay }
      else
        format.html { render action: 'new' }
        format.json { render json: @screenplay.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /screenplays/1
  # PATCH/PUT /screenplays/1.json
  def update
    respond_to do |format|
      if @screenplay.update(screenplay_params)
        format.html { redirect_to @screenplay, notice: 'Screenplay was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @screenplay.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /screenplays/1
  # DELETE /screenplays/1.json
  def destroy
    @screenplay.destroy
    respond_to do |format|
      format.html { redirect_to screenplays_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_screenplay
      @screenplay = Screenplay.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def screenplay_params
      params.require(:screenplay).permit(:name)
    end
end
