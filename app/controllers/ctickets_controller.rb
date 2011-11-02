class CticketsController < ApplicationController
  # GET /ctickets
  # GET /ctickets.xml
  def index
    @ctickets = Cticket.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @ctickets }
    end
  end

  # GET /ctickets/1
  # GET /ctickets/1.xml
  def show
    @cticket = Cticket.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @cticket }
    end
  end

  # GET /ctickets/new
  # GET /ctickets/new.xml
  def new
    @cticket = Cticket.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @cticket }
    end
  end

  # GET /ctickets/1/edit
  def edit
    @cticket = Cticket.find(params[:id])
  end

  # POST /ctickets
  # POST /ctickets.xml
  def create
    @cticket = Cticket.new(params[:cticket])

    respond_to do |format|
      if @cticket.save
        format.html { redirect_to(@cticket, :notice => 'Cticket was successfully created.') }
        format.xml  { render :xml => @cticket, :status => :created, :location => @cticket }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @cticket.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /ctickets/1
  # PUT /ctickets/1.xml
  def update
    @cticket = Cticket.find(params[:id])

    respond_to do |format|
      if @cticket.update_attributes(params[:cticket])
        format.html { redirect_to(@cticket, :notice => 'Cticket was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @cticket.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /ctickets/1
  # DELETE /ctickets/1.xml
  def destroy
    @cticket = Cticket.find(params[:id])
    @cticket.destroy

    respond_to do |format|
      format.html { redirect_to(ctickets_url) }
      format.xml  { head :ok }
    end
  end
end
