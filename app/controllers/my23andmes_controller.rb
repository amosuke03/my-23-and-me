class My23andmesController < ApplicationController
  before_action :set_my23andme, only: [:show, :edit, :update, :destroy]

  # GET /my23andmes
  # GET /my23andmes.json
  def index
    @my23andmes = My23andme.all
  end

  # GET /my23andmes/1
  # GET /my23andmes/1.json
  def show
  end

  # GET /my23andmes/new
  def new
    @my23andme = My23andme.new
  end

  # GET /my23andmes/1/edit
  def edit
  end

  # POST /my23andmes
  # POST /my23andmes.json
  def create
    @my23andme = My23andme.new(my23andme_params)

    respond_to do |format|
      if @my23andme.save
        format.html { redirect_to @my23andme, notice: 'My23andme was successfully created.' }
        format.json { render :show, status: :created, location: @my23andme }
      else
        format.html { render :new }
        format.json { render json: @my23andme.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /my23andmes/1
  # PATCH/PUT /my23andmes/1.json
  def update
    respond_to do |format|
      if @my23andme.update(my23andme_params)
        format.html { redirect_to @my23andme, notice: 'My23andme was successfully updated.' }
        format.json { render :show, status: :ok, location: @my23andme }
      else
        format.html { render :edit }
        format.json { render json: @my23andme.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /my23andmes/1
  # DELETE /my23andmes/1.json
  def destroy
    @my23andme.destroy
    respond_to do |format|
      format.html { redirect_to my23andmes_url, notice: 'My23andme was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_my23andme
      @my23andme = My23andme.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def my23andme_params
      params.require(:my23andme).permit(:disease, :gideline, :mechanizem, :pharmacotherapy)
    end
end
