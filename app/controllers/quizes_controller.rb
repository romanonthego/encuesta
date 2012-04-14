class QuizesController < ApplicationController
  # GET /quizes
  # GET /quizes.json
  def index
    @quizes = Quize.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @quizes }
    end
  end

  # GET /quizes/1
  # GET /quizes/1.json
  def show
    @quize = Quize.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @quize }
    end
  end

  # GET /quizes/new
  # GET /quizes/new.json
  def new
    @quize = Quize.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @quize }
    end
  end

  # GET /quizes/1/edit
  def edit
    @quize = Quize.find(params[:id])
  end

  # POST /quizes
  # POST /quizes.json
  def create
    @quize = Quize.new(params[:quize])

    respond_to do |format|
      if @quize.save
        format.html { redirect_to @quize, notice: 'Quize was successfully created.' }
        format.json { render json: @quize, status: :created, location: @quize }
      else
        format.html { render action: "new" }
        format.json { render json: @quize.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /quizes/1
  # PUT /quizes/1.json
  def update
    @quize = Quize.find(params[:id])

    respond_to do |format|
      if @quize.update_attributes(params[:quize])
        format.html { redirect_to @quize, notice: 'Quize was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @quize.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /quizes/1
  # DELETE /quizes/1.json
  def destroy
    @quize = Quize.find(params[:id])
    @quize.destroy

    respond_to do |format|
      format.html { redirect_to quizes_url }
      format.json { head :no_content }
    end
  end
end
