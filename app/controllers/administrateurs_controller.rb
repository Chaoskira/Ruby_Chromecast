class AdministrateursController < ApplicationController
  before_action :set_administrateur, only: [:show, :edit, :update, :destroy]

  # GET /administrateurs
  # GET /administrateurs.json
  def index
    @administrateurs = Administrateur.all
  end

  # GET /administrateurs/1
  # GET /administrateurs/1.json
  def show
  end

  # GET /administrateurs/new
  def new
    @administrateur = Administrateur.new
  end

  # GET /administrateurs/1/edit
  def edit
  end

  # POST /administrateurs
  # POST /administrateurs.json
  def create
    @administrateur = Administrateur.new(administrateur_params)

    respond_to do |format|
      if @administrateur.save
        format.html { redirect_to @administrateur, notice: 'Administrateur was successfully created.' }
        format.json { render :show, status: :created, location: @administrateur }
      else
        format.html { render :new }
        format.json { render json: @administrateur.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /administrateurs/1
  # PATCH/PUT /administrateurs/1.json
  def update
    respond_to do |format|
      if @administrateur.update(administrateur_params)
        format.html { redirect_to @administrateur, notice: 'Administrateur was successfully updated.' }
        format.json { render :show, status: :ok, location: @administrateur }
      else
        format.html { render :edit }
        format.json { render json: @administrateur.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /administrateurs/1
  # DELETE /administrateurs/1.json
  def destroy
    @administrateur.destroy
    respond_to do |format|
      format.html { redirect_to administrateurs_url, notice: 'Administrateur was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_administrateur
      @administrateur = Administrateur.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def administrateur_params
      params.require(:administrateur).permit(:pseudo, :password, :mail)
    end
end
