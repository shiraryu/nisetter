class NisettsController < ApplicationController
  before_action :set_nisett,only:[:edit,:update,:destroy]
  
  def index
    @nisetts = Nisett.all
  end
  
  def new
    if params[:back]
    @nisett = Nisett.new(nisetts_params)
    else
    @nisett = Nisett.new
    end
  end
  
  def create
    @nisett = Nisett.new(nisetts_params)
    if @nisett.save
      redirect_to nisetts_path,notice:"投稿しました！"
    else
      render'new'
    end
  end
  
  def edit
  end
  
  def update
    if @nisett.update(nisetts_params)
    redirect_to nisetts_path,notice:"編集しました！"
    else
      render'edit'
    end
  end
  
  def destroy
    @nisett.destroy
    redirect_to nisetts_path,notice:"削除しました！"
  end
  
  def confirm
    @nisett = Nisett.new(nisetts_params)
    render :new if @nisett.invalid?
  end
  
  private
  def nisetts_params
    params.require(:nisett).permit(:content)
  end
  def set_nisett
    @nisett = Nisett.find(params[:id])
  end
end
