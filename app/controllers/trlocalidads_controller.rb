class TrlocalidadsController < ApplicationController
  # GET /trlocalidads
  # GET /trlocalidads.json
  def index
    @trlocalidads = Trlocalidad.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @trlocalidads }
    end
  end
  

  # GET /trlocalidads/1
  # GET /trlocalidads/1.json
  def show
    @trlocalidad = Trlocalidad.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @trlocalidad }
    end
  end

  # GET /trlocalidads/new
  # GET /trlocalidads/new.json
  def new
    @trlocalidad = Trlocalidad.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @trlocalidad }
    end
  end

  # GET /trlocalidads/1/edit
  def edit
    @trlocalidad = Trlocalidad.find(params[:id])
  end

  # POST /trlocalidads
  # POST /trlocalidads.json
  def create
    @trlocalidad = Trlocalidad.new(params[:trlocalidad])

    respond_to do |format|
      if @trlocalidad.save
        format.html { redirect_to @trlocalidad, notice: 'Trlocalidad was successfully created.' }
        format.json { render json: @trlocalidad, status: :created, location: @trlocalidad }
      else
        format.html { render action: "new" }
        format.json { render json: @trlocalidad.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /trlocalidads/1
  # PUT /trlocalidads/1.json
  def update
    @trlocalidad = Trlocalidad.find(params[:id])

    respond_to do |format|
      if @trlocalidad.update_attributes(params[:trlocalidad])
        format.html { redirect_to @trlocalidad, notice: 'Trlocalidad was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @trlocalidad.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trlocalidads/1
  # DELETE /trlocalidads/1.json
  def destroy
    @trlocalidad = Trlocalidad.find(params[:id])
    @trlocalidad.destroy

    respond_to do |format|
      format.html { redirect_to trlocalidads_url }
      format.json { head :no_content }
    end
  end
end
