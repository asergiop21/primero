class TrPlanesController < ApplicationController
  # GET /tr_planes
  # GET /tr_planes.json
  def index
    @tr_planes = TrPlane.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tr_planes }
    end
  end

  # GET /tr_planes/1
  # GET /tr_planes/1.json
  def show
    @tr_plane = TrPlane.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tr_plane }
    end
  end

  # GET /tr_planes/new
  # GET /tr_planes/new.json
  def new
    @tr_plane = TrPlane.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tr_plane }
    end
  end

  # GET /tr_planes/1/edit
  def edit
    @tr_plane = TrPlane.find(params[:id])
  end

  # POST /tr_planes
  # POST /tr_planes.json
  def create
    @tr_plane = TrPlane.new(params[:tr_plane])

    respond_to do |format|
      if @tr_plane.save
        format.html { redirect_to @tr_plane, notice: 'Tr plane was successfully created.' }
        format.json { render json: @tr_plane, status: :created, location: @tr_plane }
      else
        format.html { render action: "new" }
        format.json { render json: @tr_plane.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /tr_planes/1
  # PUT /tr_planes/1.json
  def update
    @tr_plane = TrPlane.find(params[:id])

    respond_to do |format|
      if @tr_plane.update_attributes(params[:tr_plane])
        format.html { redirect_to @tr_plane, notice: 'Tr plane was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @tr_plane.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tr_planes/1
  # DELETE /tr_planes/1.json
  def destroy
    @tr_plane = TrPlane.find(params[:id])
    @tr_plane.destroy

    respond_to do |format|
      format.html { redirect_to tr_planes_url }
      format.json { head :no_content }
    end
  end
end
