class BingosController < ApplicationController
  # GET /bingos
  # GET /bingos.xml
  def index
    @bingos = Bingo.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @bingos }
    end
  end

  # GET /bingos/1
  # GET /bingos/1.xml
  def show
    @bingo = Bingo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @bingo }
    end
  end

  # GET /bingos/new
  # GET /bingos/new.xml
  def new
    @bingo = Bingo.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @bingo }
    end
  end

  # GET /bingos/1/edit
  def edit
    @bingo = Bingo.find(params[:id])
  end

  # POST /bingos
  # POST /bingos.xml
  def create
    @bingo = Bingo.new(params[:bingo])

    respond_to do |format|
      if @bingo.save
        format.html { redirect_to(@bingo, :notice => 'Bingo was successfully created.') }
        format.xml  { render :xml => @bingo, :status => :created, :location => @bingo }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @bingo.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /bingos/1
  # PUT /bingos/1.xml
  def update
    @bingo = Bingo.find(params[:id])

    respond_to do |format|
      if @bingo.update_attributes(params[:bingo])
        format.html { redirect_to(@bingo, :notice => 'Bingo was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @bingo.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /bingos/1
  # DELETE /bingos/1.xml
  def destroy
    @bingo = Bingo.find(params[:id])
    @bingo.destroy

    respond_to do |format|
      format.html { redirect_to(bingos_url) }
      format.xml  { head :ok }
    end
  end
end
