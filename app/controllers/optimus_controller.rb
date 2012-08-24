class OptimusController < ApplicationController
  # GET /optimus
  # GET /optimus.json
  def index
    @optimus = Optimu.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @optimus }
    end
  end

  # GET /optimus/1
  # GET /optimus/1.json
  def show
    @optimu = Optimu.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @optimu }
    end
  end

  # GET /optimus/new
  # GET /optimus/new.json
  def new
    @optimu = Optimu.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @optimu }
    end
  end

  # GET /optimus/1/edit
  def edit
    @optimu = Optimu.find(params[:id])
  end

  # POST /optimus
  # POST /optimus.json
  def create
    @optimu = Optimu.new(params[:optimu])

    respond_to do |format|
      if @optimu.save
        format.html { redirect_to @optimu, notice: 'Optimu was successfully created.' }
        format.json { render json: @optimu, status: :created, location: @optimu }
      else
        format.html { render action: "new" }
        format.json { render json: @optimu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /optimus/1
  # PUT /optimus/1.json
  def update
    @optimu = Optimu.find(params[:id])

    respond_to do |format|
      if @optimu.update_attributes(params[:optimu])
        format.html { redirect_to @optimu, notice: 'Optimu was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @optimu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /optimus/1
  # DELETE /optimus/1.json
  def destroy
    @optimu = Optimu.find(params[:id])
    @optimu.destroy 

    respond_to do |format|
      format.html { redirect_to optimus_url }
      format.json { head :no_content }
    end
  end
end
