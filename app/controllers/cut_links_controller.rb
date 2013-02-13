class CutLinksController < ApplicationController
  # GET /cut_links
  # GET /cut_links.json
  def index
    @cut_links = CutLink.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @cut_links }
    end
  end

  # GET /cut_links/1
  # GET /cut_links/1.json
  def show
    @cut_link = CutLink.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @cut_link }
    end
  end

  # GET /cut_links/new
  # GET /cut_links/new.json
  def new
    @cut_link = CutLink.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @cut_link }
    end
  end

  # GET /cut_links/1/edit
  def edit
    @cut_link = CutLink.find(params[:id])
  end

  # POST /cut_links
  # POST /cut_links.json
  def create
    @cut_link = CutLink.new(params[:cut_link])

    respond_to do |format|
      if @cut_link.save
        format.html { redirect_to @cut_link, notice: 'Cut link was successfully created.' }
        format.json { render json: @cut_link, status: :created, location: @cut_link }
      else
        format.html { render action: "new" }
        format.json { render json: @cut_link.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /cut_links/1
  # PUT /cut_links/1.json
  def update
    @cut_link = CutLink.find(params[:id])

    respond_to do |format|
      if @cut_link.update_attributes(params[:cut_link])
        format.html { redirect_to @cut_link, notice: 'Cut link was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @cut_link.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cut_links/1
  # DELETE /cut_links/1.json
  def destroy
    @cut_link = CutLink.find(params[:id])
    @cut_link.destroy

    respond_to do |format|
      format.html { redirect_to cut_links_url }
      format.json { head :no_content }
    end
  end

  # GET /1
  # GET /cut_links/1/redirect
  # GET /cut_links/1/redirect.json
  def redirect
    @cut_links = CutLink.find(params[:id])

    respond_to do |format|
      format.html { redirect_to @cut_links.link, :status => :moved_permanently }
      format.json { render :json => @cut_links } # What does it mean to redirect using json?
    end
  end
end
