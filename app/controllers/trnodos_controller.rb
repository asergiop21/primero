class TrnodosController < ApplicationController
  # GET /trnodos
  # GET /trnodos.json
  def index
    @trnodos = Trnodo.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @trnodos }
    end
  end

  # GET /trnodos/1
  # GET /trnodos/1.json
  def show
    @trnodo = Trnodo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @trnodo }
    end
  end

  # GET /trnodos/new
  # GET /trnodos/new.json
  def new
    @trnodo = Trnodo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @trnodo }
    end
  end

  # GET /trnodos/1/edit
  def edit
    @trnodo = Trnodo.find(params[:id])
  end

  # POST /trnodos
  # POST /trnodos.json
  def create
    @trnodo = Trnodo.new(params[:trnodo])

    respond_to do |format|
      if @trnodo.save
        format.html { redirect_to @trnodo, notice: 'Trnodo was successfully created.' }
        format.json { render json: @trnodo, status: :created, location: @trnodo }
      else
        format.html { render action: "new" }
        format.json { render json: @trnodo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /trnodos/1
  # PUT /trnodos/1.json
  def update
    @trnodo = Trnodo.find(params[:id])

    respond_to do |format|
      if @trnodo.update_attributes(params[:trnodo])
        format.html { redirect_to @trnodo, notice: 'Trnodo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @trnodo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trnodos/1
  # DELETE /trnodos/1.json
  def destroy
    @trnodo = Trnodo.find(params[:id])
    @trnodo.destroy

    respond_to do |format|
      format.html { redirect_to trnodos_url }
      format.json { head :no_content }
    end
  end
end
