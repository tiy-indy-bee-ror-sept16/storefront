class ItemsController < ApplicationController

  before_action :load_item,
                only: [:show, :edit, :update, :destroy]

  def index
    @items = Item.order(total_quantity: :desc)
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to :root # item_path(@item)
    else

    end
  end

  def show
  end

  def edit
    render :new
  end

  def update
    if @item.update(item_params)
      redirect_to :root
    else
      @item.errors.each do |field, message|
        Rails.logger.info field.inspect
        Rails.logger.info message.inspect
      end
      render :new
    end
  end

  def destroy
    @item.destroy
    redirect_to :root
  end



  private

  def load_item
    @item = Item.find(params[:id])
  end

  def item_params
    params.require(:item).permit(
      :title,
      :description,
      :price,
      :category
    )
  end

end
