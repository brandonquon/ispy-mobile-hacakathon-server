class NeedlesController < ApplicationController
  # GET /needles
  # GET /needles.xml
  def index
    @needles = Needle.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @needles }
    end
  end

  # GET /needles/1
  # GET /needles/1.xml
  def show
    @needle = Needle.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @needle }
    end
  end

  # GET /needles/new
  # GET /needles/new.xml
  def new
    @needle = Needle.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @needle }
    end
  end

  # GET /needles/1/edit
  def edit
    @needle = Needle.find(params[:id])
  end

  # POST /needles
  # POST /needles.xml
  def create
    @needle = Needle.new(params[:needle])

    respond_to do |format|
      if @needle.save
        format.html { redirect_to(@needle, :notice => 'Needle was successfully created.') }
        format.xml  { render :xml => @needle, :status => :created, :location => @needle }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @needle.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /needles/1
  # PUT /needles/1.xml
  def update
    @needle = Needle.find(params[:id])

    respond_to do |format|
      if @needle.update_attributes(params[:needle])
        format.html { redirect_to(@needle, :notice => 'Needle was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @needle.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /needles/1
  # DELETE /needles/1.xml
  def destroy
    @needle = Needle.find(params[:id])
    @needle.destroy

    respond_to do |format|
      format.html { redirect_to(needles_url) }
      format.xml  { head :ok }
    end
  end
end
