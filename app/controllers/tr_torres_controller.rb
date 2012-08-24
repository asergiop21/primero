class TrTorresController < ApplicationController
  # GET /tr_torres
  # GET /tr_torres.json
  def index
    @tr_torres = TrTorre.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tr_torres }
    end
  end

  # GET /tr_torres/1
  # GET /tr_torres/1.json
  def show
    @tr_torre = TrTorre.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tr_torre }
    end
  end

  # GET /tr_torres/new
  # GET /tr_torres/new.json
  def new
    @tr_torre = TrTorre.new
    
    
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tr_torre }
    end
  end

  # GET /tr_torres/1/edit
  def edit
    @tr_torre = TrTorre.find(params[:id])
  end

  # POST /tr_torres
  # POST /tr_torres.json
  def create
    @tr_torre = TrTorre.new(params[:tr_torre])

    respond_to do |format|
      if @tr_torre.save
        format.html { redirect_to @tr_torre, notice: 'Tr torre was successfully created.' }
        format.json { render json: @tr_torre, status: :created, location: @tr_torre }
      else
        format.html { render action: "new" }
        format.json { render json: @tr_torre.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /tr_torres/1
  # PUT /tr_torres/1.json
  def update
    
    @tr_torre = TrTorre.find(params[:id])

    respond_to do |format|
      if @tr_torre.update_attributes(params[:tr_torre])
        format.html { redirect_to @tr_torre, notice: 'Tr torre was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @tr_torre.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tr_torres/1
  # DELETE /tr_torres/1.json
  def destroy

    @tr_torre = TrTorre.find(params[:id])
    @tr_torre.destroy

    respond_to do |format|
      format.html { redirect_to tr_torres_url }
      format.json { head :no_content }
    end
  end
  
  
 
  
  
  
  
  
end
