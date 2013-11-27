class TransitionsController < ApplicationController
  before_action :set_transition, only: [:show, :edit, :update, :destroy]

  # GET /transitions
  # GET /transitions.json
  def index
    @transitions = Transition.all
  end

  # GET /transitions/1
  # GET /transitions/1.json
  def show
  end

  # GET /transitions/new
  def new
    @transition = Transition.new
  end

  # GET /transitions/1/edit
  def edit
  end

  # POST /transitions
  # POST /transitions.json
  def create
    @transition = Transition.new(transition_params)

    respond_to do |format|
      if @transition.save
        format.html { redirect_to @transition, notice: 'Transition was successfully created.' }
        format.json { render action: 'show', status: :created, location: @transition }
      else
        format.html { render action: 'new' }
        format.json { render json: @transition.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /transitions/1
  # PATCH/PUT /transitions/1.json
  def update
    respond_to do |format|
      if @transition.update(transition_params)
        format.html { redirect_to @transition, notice: 'Transition was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @transition.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /transitions/1
  # DELETE /transitions/1.json
  def destroy
    @transition.destroy
    respond_to do |format|
      format.html { redirect_to transitions_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_transition
      @transition = Transition.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def transition_params
      params[:transition]
    end
end
