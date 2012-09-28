class MessesController < ApplicationController

 
  # GET /messes
  # GET /messes.xml
  def index
    @messes = Mess.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @messes }
    end
  end

  # GET /messes/1
  # GET /messes/1.xml
  def show
    @mess = Mess.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @mess }
    end
  end

  # GET /messes/new
  # GET /messes/new.xml
  def new
    @mess = Mess.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @mess }
    end
  end

  # GET /messes/1/edit
  def edit
    @mess = Mess.find(params[:id])
  end

  # POST /messes
  # POST /messes.xml
  def create
    @mess = Mess.new(params[:mess])

    respond_to do |format|
      if @mess.save
        format.html { redirect_to(@mess, :notice => 'Mess was successfully created.') }
        format.xml  { render :xml => @mess, :status => :created, :location => @mess }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @mess.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /messes/1
  # PUT /messes/1.xml
  def update
    @mess = Mess.find(params[:id])

    respond_to do |format|
      if @mess.update_attributes(params[:mess])
        format.html { redirect_to(@mess, :notice => 'Mess was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @mess.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /messes/1
  # DELETE /messes/1.xml
  def destroy
    @mess = Mess.find(params[:id])
    @mess.destroy
logger.info("#{Time.now} Destroyed Mess ID ##{@mess.id}!")

    respond_to do |format|
      format.html { redirect_to(messes_url) }
      format.xml  { head :ok }
    end
  end

end
