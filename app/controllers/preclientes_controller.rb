class PreclientesController < ApplicationController
  # GET /preclientes
  # GET /preclientes.json
  def index
    @preclientes = Precliente.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @preclientes}
    end
  end 
  # GET /preclientes/1
  # GET /preclientes/1.json
    def show
    @precliente = Precliente.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @precliente }
    end
  end

  # GET /preclientes/new
  # GET /preclientes/new.json
  def new
    @precliente = Precliente.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @precliente }
    end
  end

  # GET /preclientes/1/edit
  def edit
    @precliente = Precliente.find(params[:id])
  end

  # POST /preclientes
  # POST /preclientes.json
  def create
    @precliente = Precliente.new(params[:precliente])
    
    respond_to do |format|
      if @precliente.save
        format.html { redirect_to @precliente, notice: 'Precliente was successfully created.' }
        format.json { render json: @precliente, status: :created, location: @precliente }
      else
        format.html { render action: "new" }
        format.json { render json: @precliente.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /preclientes/1
  # PUT /preclientes/1.json
  def update
    @precliente = Precliente.find(params[:id])

    respond_to do |format|
      if @precliente.update_attributes(params[:precliente])
        format.html { redirect_to @precliente, notice: 'Precliente was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @precliente.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /preclientes/1
  # DELETE /preclientes/1.json
  def destroy
    @precliente = Precliente.find(params[:id])
    @precliente.destroy
    respond_to do |format|
      format.html { redirect_to preclientes_url }
      format.json { head :ok }
    end
  end
end
