class FormBirsController < ApplicationController
  before_action :set_form_bir, only: [:show, :edit, :update, :destroy]

  # GET /form_birs
  # GET /form_birs.json
  def index
    @form_birs = FormBir.all
  end

  # GET /form_birs/1
  # GET /form_birs/1.json
  def show
  end

  # GET /form_birs/new
  def new
    @form_bir = FormBir.new
  end

  # GET /form_birs/1/edit
  def edit
  end

  # POST /form_birs
  # POST /form_birs.json
  def create
    @form_bir = FormBir.new(form_bir_params)

    respond_to do |format|
      if @form_bir.save
        format.html { redirect_to @form_bir, notice: 'Form bir was successfully created.' }
        format.json { render :show, status: :created, location: @form_bir }
      else
        format.html { render :new }
        format.json { render json: @form_bir.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /form_birs/1
  # PATCH/PUT /form_birs/1.json
  def update
    respond_to do |format|
      if @form_bir.update(form_bir_params)
        format.html { redirect_to @form_bir, notice: 'Form bir was successfully updated.' }
        format.json { render :show, status: :ok, location: @form_bir }
      else
        format.html { render :edit }
        format.json { render json: @form_bir.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /form_birs/1
  # DELETE /form_birs/1.json
  def destroy
    @form_bir.destroy
    respond_to do |format|
      format.html { redirect_to form_birs_url, notice: 'Form bir was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_form_bir
      @form_bir = FormBir.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def form_bir_params
      params.require(:form_bir).permit(:basvuran_id, :ilk_basvuru_tarihi, :notlar, :mc_siginaginda_kaliyor, :gonullu_id, :user_id)
    end
end
