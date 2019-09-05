class MessagesController < ApplicationController
  before_action :set_message, only: [:show, :edit, :update, :destroy]

  def index
    @messages = Message.order(:id)
    render
  end

  def show
  end

  def new
    @message = Message.new
  end

  def create
    @message = Message.new(message_params)
    if @message.save
      redirect_to url_for(action: :index)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @message.attributes = message_params
    if @message.save
      redirect_to url_for(action: :index)
    else
      render :edit
    end
  end

  def destroy
    if @message.destroy
      redirect_to url_for(action: :index)
    else
    end
  end

  private

  def message_params
    params.require(:message).permit(:title, :content)
  end

  def set_message
    @message = Message.find(params[:id])
  end
end
