class BlogorsController < ApplicationController
  # GET /blogors
  # GET /blogors.json
  def index
    @blogors = Blogor.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @blogors }
    end
  end

  # GET /blogors/1
  # GET /blogors/1.json
  def show
    @blogor = Blogor.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @blogor }
    end
  end

  # GET /blogors/new
  # GET /blogors/new.json
  def new
    @blogor = Blogor.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @blogor }
    end
  end

  # GET /blogors/1/edit
  def edit
    @blogor = Blogor.find(params[:id])
  end

  # POST /blogors
  # POST /blogors.json
  def create
    @blogor = Blogor.new(params[:blogor])

    respond_to do |format|
      if @blogor.save
        format.html { redirect_to @blogor, notice: 'Blogor was successfully created.' }
        format.json { render json: @blogor, status: :created, location: @blogor }
      else
        format.html { render action: "new" }
        format.json { render json: @blogor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /blogors/1
  # PUT /blogors/1.json
  def update
    @blogor = Blogor.find(params[:id])

    respond_to do |format|
      if @blogor.update_attributes(params[:blogor])
        format.html { redirect_to @blogor, notice: 'Blogor was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @blogor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /blogors/1
  # DELETE /blogors/1.json
  def destroy
    @blogor = Blogor.find(params[:id])
    @blogor.destroy

    respond_to do |format|
      format.html { redirect_to blogors_url }
      format.json { head :no_content }
    end
  end
end
