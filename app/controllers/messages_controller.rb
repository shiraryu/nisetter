class MessagesController < ApplicationController
  def new
    if params[:back]
      @message = Message.new(messagess_params)
    else
      @message = Message.new
    end
  end
  def create
    @message = Message.new(messages_params)
    if @message.save
      redirect_to root_path,notice:"メッセージを送信しました！"
    else
      render'new'
    end
  end
  def confirm
    @message = Message.new(messages_params)
    render:new if @message.invalid?
  end
  
  private
    def messages_params
      params.require(:message).permit(:name,:email,:content)
    end
end
