class MessagesController < ApplicationController
  def index
    @messages = Message.order(:id)
  end

  def show
    @message = Message.find(params[:id])
  end

  def new
    @message = Message.new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def message_params
  end
end
