class ActionBlocksController < ApplicationController
  before_action :set_action_block, only: [:show, :edit, :update, :destroy]

  # GET /action_blocks
  # GET /action_blocks.json
  def index
    @action_blocks = ActionBlock.all
  end

  # GET /action_blocks/1
  # GET /action_blocks/1.json
  def show
  end

  # GET /action_blocks/new
  def new
    @action_block = ActionBlock.new
  end

  # GET /action_blocks/1/edit
  def edit
  end

  # POST /action_blocks
  # POST /action_blocks.json
  def create
    @action_block = ActionBlock.new(action_block_params)

    respond_to do |format|
      if @action_block.save
        format.html { redirect_to @action_block, notice: 'Action block was successfully created.' }
        format.json { render action: 'show', status: :created, location: @action_block }
      else
        format.html { render action: 'new' }
        format.json { render json: @action_block.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /action_blocks/1
  # PATCH/PUT /action_blocks/1.json
  def update
    respond_to do |format|
      if @action_block.update(action_block_params)
        format.html { redirect_to @action_block, notice: 'Action block was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @action_block.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /action_blocks/1
  # DELETE /action_blocks/1.json
  def destroy
    @action_block.destroy
    respond_to do |format|
      format.html { redirect_to action_blocks_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_action_block
      @action_block = ActionBlock.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def action_block_params
      params.require(:action_block).permit(:scene_description)
    end
end
