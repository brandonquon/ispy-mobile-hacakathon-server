class PlayersController < ApplicationController
  # GET /players
  # GET /players.xml
  def index
#    @players = Player.all
    @players = Player.find(:all, :order => "score DESC")
#    @players = Article.page(params[:page]).per(10)
    
    render :json => @players
  end

  # GET /players/1
  # GET /players/1.xml
  def show
    @player = Player.find(params[:id])

    render :json => @player
  end


  # POST /players
  # POST /players.xml
  def create
    @player = Player.new(params[:player])
    
    if @player.save
      render :json => @player, :status => :created, :location => @player
    else
      render :json => @player.errors, :status => :unprocessable_entity
    end
  end

  # PUT /players/1
  # PUT /players/1.xml
  def update
    @player = Player.find(params[:id])
    
    if @player.save
      render :json => @player, :status => :ok
    else
      render :json => @player.errors, :status => :unprocessable_entity
    end
  end

  # DELETE /players/1
  # DELETE /players/1.xml
  def destroy
    @player = Player.find(params[:id])
    @player.destroy

    render :json => "Ok", :status => :ok
  end
end
