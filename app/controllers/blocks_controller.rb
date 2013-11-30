class BlocksController < ApplicationController
  before_action :set_block, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!

  # GET /blocks
  # GET /blocks.json
  def index
    @blocks = Block.order(:position)
    @block_types = BlockType.all().order(:id)
    @block = Block.new
    @characters = Character.all().order(:name)
  end

  # GET /blocks/1
  # GET /blocks/1.json
  def show
  end

  # GET /blocks/new
  def new
    @block = Block.new
  end

  # GET /blocks/1/edit
  def edit
  end

  # POST /blocks
  # POST /blocks.json
  def create
    @block = Block.new(block_params)
    @block_types = BlockType.all().order('id DESC')
    @characters = Character.all().order(:name)
    
    last_block = Block.order('position DESC').limit(1).pluck(:position)
    @block.position = last_block[0] + 1

    respond_to do |format|
      if @block.save
        format.html { redirect_to @block, notice: 'Block was successfully created.' }
        format.js {}
        format.json { render action: 'show', status: :created, location: @block }
      else
        format.html { render action: 'new' }
        format.json { render json: @block.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /blocks/1
  # PATCH/PUT /blocks/1.json
  def update
    respond_to do |format|
      if @block.update(block_params)
        format.html { redirect_to @block, notice: 'Block was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @block.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /blocks/1
  # DELETE /blocks/1.json
  def destroy
    @block.destroy
    respond_to do |format|
      format.html { redirect_to blocks_url }
      format.json { head :no_content }
    end
  end

  # POST /blocks
  # POST /blocks.json
  def sort
    @blocks = Block.where(:screenplay_id => params[:id])
    @blocks.each do |block|
      block.position = params['block'].index(block.id.to_s)
      block.save
    end
    render :nothing => true
  end
    
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_block
      @block = Block.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def block_params
      params[:block].permit(:screenplay_id, :block_type_id, :body, :position, :character_id)
    end
end
